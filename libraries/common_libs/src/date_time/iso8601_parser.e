indexing
	component:   "openEHR re-usable library"
	description: "ISO 8601 Date/time parser"
	keywords:    "date, time, iso8601"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2006 The openEHR Foundation <http://www.openEHR.org>"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class ISO8601_PARSER

inherit
	DATE_TIME_CONSTANTS

create
	make
	
feature -- Definitions

	Date_separator: CHARACTER is '-'
	Time_separator: CHARACTER is ':'
	Time_leader: CHARACTER is 'T'
	Time_zone_GMT: CHARACTER is 'Z'
	Duration_leader: CHARACTER is 'P'
	Iso8601_decimal_separator: CHARACTER is ','
	Decimal_separator: CHARACTER is '.'

feature -- Initialisation

	make is	
			-- 
		do
			create cached_iso8601_time_string.make(0)
			create cached_iso8601_date_string.make(0)
		end
		
feature -- Status Report

	is_valid_iso8601_string(a_str: STRING): BOOLEAN is
			-- only use this when caller does not know what kind of ISO8601
			-- string it is supposed to be
		require
			Str_valid: a_str /= Void and then not a_str.is_empty
		do
			if a_str.item(1) = Duration_leader then
				Result := is_valid_iso8601_duration(a_str)
			elseif a_str.has(Time_leader) then
				if a_str.index_of(Time_leader, 1) = 1 then
					Result := is_valid_iso8601_time(a_str)
				else
					Result := is_valid_iso8601_date_time(a_str)
				end
			else
				Result := is_valid_iso8601_date(a_str)
			end
		end

	is_valid_iso8601_time(str: STRING): BOOLEAN is
			-- True if string in one of the forms:
			--	Thh
			--	Thhmm
			--	Thh:mm
			--  Thhmmss
			--  Thhmmss,sss
			-- 	Thh:mm:ss
			-- 	Thh:mm:ss,sss
			-- with optional timezone in form:
			--	Z
			--	+hhmm
			--	-hhmm
		require
			str /= Void
		local
			csr, hms_part_end, tz_ind_pos: INTEGER
			h_str, m_str, s_str, fs_str, tz_str: STRING
			extended_form, tz_ok: BOOLEAN
		do
			if str.is_equal(cached_iso8601_time_string) then
				Result := True
			else
				cached_iso8601_time := Void

				csr := 1 -- on the T
				if str.item(csr) = Time_leader and str.count >= csr+2 then
					-- check for timezone on the end
					tz_ok := True
					if str.item (str.count) = Time_zone_GMT then
						tz_str := Time_zone_GMT.out
						hms_part_end := str.count - 1
					elseif str.has ('+') then
						tz_ind_pos := str.index_of('+', 1)
						tz_str := str.substring(tz_ind_pos, str.count)
						if tz_str.count = 5 and tz_str.is_integer then
							hms_part_end := tz_ind_pos - 1
						else					
							tz_ok := False
						end
					elseif str.has ('-') then
						tz_ind_pos := str.index_of('-', 1)
						tz_str := str.substring(tz_ind_pos, str.count)
						if tz_str.count = 5 and tz_str.is_integer then
							hms_part_end := tz_ind_pos - 1
						else					
							tz_ok := False
						end
					else
						hms_part_end := str.count
					end
					
					-- now start processing the main part
					if tz_ok then					
						csr := csr + 1 -- on first h digit
						h_str := str.substring(csr, csr+1)
						csr := csr + 2 -- on char after 2nd h digit
						if hms_part_end > csr then
							if str.item(csr) = Time_separator then
								extended_form := True
								csr := csr + 1 -- on first m digit
								if hms_part_end > csr+2 then -- should be Thh:mm:ss[,sss]
									m_str := str.substring(csr, csr+1)
									csr := csr + 2 -- on char after 2nd m digit
									if str.item(csr) = Time_separator then
										csr := csr + 1 -- first s digit
										if str.count = csr + 1 then -- Thh:mm:ss
											s_str := str.substring(csr, csr+1)
											Result := valid_time_strings(h_str, m_str, s_str, Void,  tz_str, extended_form)
										elseif hms_part_end > csr + 2 and str.item(csr+2) = iso8601_decimal_separator then -- Thh:mm:ss,sss
											s_str := str.substring(csr, csr+1)
											csr := csr + 3
											create fs_str.make(0)
											fs_str.append_character(Decimal_separator)
											fs_str.append(str.substring(csr, hms_part_end))
											Result :=
											valid_time_strings(h_str, m_str, s_str, fs_str, tz_str, extended_form)
										end
									end
								elseif hms_part_end = csr + 1 then -- should be Thh:mm
									m_str := str.substring(csr, csr+1)	
									Result := valid_time_strings(h_str, m_str, Void, Void, tz_str, extended_form)
								end
							else -- non-extended form
								if hms_part_end = csr + 1 then -- should be Thhmm
									m_str := str.substring(csr, csr+1)
									Result := valid_time_strings(h_str, m_str, Void, Void, tz_str, extended_form)
								elseif hms_part_end > csr+2 then
									m_str := str.substring(csr, csr+1)
									csr := csr+2 -- on char after 2nd m digit
									if str.count = csr + 1 then -- has to be Thhmmss
										s_str := str.substring(csr, csr+1)
										Result := valid_time_strings(h_str, m_str, s_str, Void, tz_str, extended_form)
									elseif str.count > csr + 2 and str.item(csr+2) = iso8601_decimal_separator then -- Thhmmss,sss
										s_str := str.substring(csr, csr+1)
										csr := csr + 3
										create fs_str.make(0)
										fs_str.append_character(Decimal_separator)
										fs_str.append(str.substring(csr, hms_part_end))
										Result := valid_time_strings(h_str, m_str, s_str, fs_str, tz_str, extended_form)
									end
								end
							end
						elseif hms_part_end = csr-1 then -- should be Thh
							Result := valid_time_strings(h_str, Void, Void, Void,tz_str, extended_form)
						end
					end
				end

				if Result then
					cached_iso8601_time_string := str
				end
			end
		end		
		
	is_valid_iso8601_date(str: STRING): BOOLEAN is
			-- True if string in one of the forms
			--	YYYY
			--	YYYYMM
			--	YYYY-MM
			--	YYYYMMDD
			--	YYYY-MM-DD
		require
			str /= Void
		local
			csr: INTEGER

			y_str, m_str, d_str: STRING
			extended_form: BOOLEAN
		do
			if str.is_equal(cached_iso8601_date_string) then
				Result := True
			else
				cached_iso8601_date := Void
				
				if str.count >= 4 then
					csr := 1 -- on the first Y digit
				
					y_str := str.substring(csr, csr+3)
					csr := csr + 4 -- on char after last Y digit
					if str.count > csr then
						if str.item(csr) = Date_separator then
							extended_form := True
							csr := csr + 1 -- on first M digit
							if str.count > csr+2 then -- should be YYYY-MM-DD
								m_str := str.substring(csr, csr+1)
								csr := csr + 2 -- on char after 2nd M digit
								if str.item(csr) = Date_separator then
									csr := csr + 1 -- first D digit
									if str.count = csr + 1 then -- YYYY-MM-DD
										d_str := str.substring(csr, csr+1)
										Result := valid_date_strings(y_str, m_str, d_str, extended_form)
									end
								end
							elseif str.count = csr + 1 then -- should be YYYY-MM
								m_str := str.substring(csr, csr+1)	
								Result := valid_date_strings(y_str, m_str, Void, extended_form)
							end
						else -- non-extended form
							if str.count = csr + 1 then -- should be YYYYMM
								m_str := str.substring(csr, csr+1)
								Result := valid_date_strings(y_str, m_str, Void, extended_form)
							elseif str.count > csr+2 then
								m_str := str.substring(csr, csr+1)
								csr := csr+2 -- on char after 2nd M digit
								if str.count = csr + 1 then -- has to be YYYYMMDD
									d_str := str.substring(csr, csr+1)
									Result := valid_date_strings(y_str, m_str, d_str, extended_form)
								end
							end
						end
					elseif str.count = csr-1 then -- should be YYYY
						Result := valid_date_strings(y_str, Void, Void, extended_form)
					end
				end

				if Result then
					cached_iso8601_date_string := str
				end
			end
		end
		
	is_valid_iso8601_date_time(str: STRING): BOOLEAN is
			-- True if string in one of the forms
			--	YYYY
			--	YYYYMM
			--	YYYYMMDD
			--	YYYYMMDDThh
			--	YYYYMMDDThhmm
			--	YYYY-MM-DDThh:mm
			--  YYYYMMDDThhmmss
			--  YYYYMMDDThhmmss,sss
			-- 	YYYY-MM-DDThh:mm:ss
			-- 	YYYY-MM-DDThh:mm:ss,sss
			-- with optional timezone in form:
			--	Z
			--	+hhmm
			--	-hhmm
		require
			str /= Void
		local
			time_sep_pos, end_date_part: INTEGER
			date_part_ok, time_part_ok, has_time_part: BOOLEAN
		do
			if str.is_equal(cached_iso8601_date_string) then
				Result := True
			else
				cached_iso8601_date := Void
				cached_iso8601_time := Void

				time_sep_pos := str.index_of(Time_leader, 1)
				if time_sep_pos = 0 then
					end_date_part := str.count
				else
					end_date_part := time_sep_pos - 1
					time_part_ok := is_valid_iso8601_time(str.substring(time_sep_pos, str.count))
					has_time_part := True
				end
					
				date_part_ok := is_valid_iso8601_date(str.substring(1, end_date_part))
				
				if date_part_ok then 
					if has_time_part then
						Result := time_part_ok and not cached_iso8601_date.is_partial and 
							cached_iso8601_time.is_extended = cached_iso8601_date.is_extended
					else
						Result := True
					end
				end
				
				if Result then
					create cached_iso8601_date_time.make_date_time(cached_iso8601_date, cached_iso8601_time)
					cached_iso8601_date_time_string := str
				end
			end
		end
		
	is_valid_iso8601_duration(str: STRING): BOOLEAN is
			-- True if string in form "PnYnMnWnDTnHnMnS"
		require
			str /= Void
		local
			str1: STRING
			yr, wk, mo, dy, hr, mi, sec: INTEGER
			fsec: DOUBLE
			left, right, dec_pos: INTEGER
		do
			if str.is_equal(cached_iso8601_duration_string) then
				Result := True
			else
				cached_iso8601_duration := Void

				if str.item (1) = Duration_leader then
					str1 := str.twin
					str1.to_lower
					left := 2

					-- years
					right := str1.index_of('y', left)
					if right > 0 then
						yr := str1.substring(left, right-1).to_integer
						left := right + 1
					end

					-- months
					right := str1.index_of('m', left)
					if right > 0 then
						mo := str1.substring(left, right-1).to_integer
						left := right + 1
					end

					-- weeks
					right := str1.index_of('w', left)
					if right > 0 then
						wk := str1.substring(left, right-1).to_integer
						left := right + 1
					end

					-- days
					right := str1.index_of('d', left)
					if right > 0 then
						dy := str1.substring(left, right-1).to_integer
						left := right + 1
					end

					left := str1.index_of (Time_leader, 1)
					if left > 0 then
						left := left + 1
						
						-- hours
						right := str1.index_of('h', left)
						if right > 0 then
							hr := str1.substring(left, right-1).to_integer
							left := right + 1
						end

						-- minutes
						right := str1.index_of('m', left)
						if right > 0 then
							mi := str1.substring(left, right-1).to_integer
							left := right + 1
						end

						-- seconds
						right := str1.index_of('s', left)
						if right > 0 then
							dec_pos := str1.index_of(Decimal_separator, left)
							if dec_pos > 0 then
								sec := str1.substring(left, dec_pos-1).to_integer
								fsec := str1.substring(dec_pos+1, right).to_double
							else
								sec := str1.substring(left, right-1).to_integer
							end
						end
					end

					create cached_iso8601_duration.make(yr, mo, wk, dy, hr, mi, sec, fsec)
					cached_iso8601_duration_string := str
					Result := True
					
				end
			end
		end
		
feature {NONE} -- Implementation

	valid_date_strings(y_str, m_str, d_str: STRING; is_extended: BOOLEAN): BOOLEAN is 
			-- True if each string is within correct limits for years, mnonths, days
		require
			y_str /= Void
			d_str /= Void implies m_str /= Void
		local
			y, m, d: INTEGER
		do
			if y_str.is_integer then
				y := y_str.to_integer
				if m_str /= Void and then m_str.is_integer then
					m := m_str.to_integer
					if m >= 1 and m <= Months_in_year then
						if d_str /= Void and d_str.is_integer then
							d := d_str.to_integer
							if d >= 1 and d <= days_in_month(m, y) then	
								Result := True
								create cached_iso8601_date.make_ymd(y, m, d, is_extended)
							end
						else -- years and months only
							Result := True
							create cached_iso8601_date.make_ym(y, m, is_extended)
						end
					end
				else -- years only
					Result := True
					create cached_iso8601_date.make_y(y, is_extended)
				end
			end
		end

	valid_time_strings(h_str, m_str, s_str, fs_str, tz_str: STRING; is_extended: BOOLEAN): BOOLEAN is 
			-- True if each string is within correct limits for hours, minutes, seconds
		require
			h_str /= Void
			s_str /= Void implies m_str /= Void
		local
			h, m, s, tz_h, tz_m: INTEGER
			fs: DOUBLE
			tz_obj: ISO8601_TIMEZONE
			tz_sign: CHARACTER
			tz_ok: BOOLEAN
		do
			-- check timezone part if any
			if tz_str /= Void then
				if tz_str.count > 1 then
					tz_h := tz_str.substring(2,3).to_integer
					tz_m := tz_str.substring(4,5).to_integer
					if (tz_h >=0 and tz_h <= Max_timezone_hours) and (tz_m >= 0 and tz_m <= Minutes_in_hour) then
						tz_sign := tz_str.item(1)
						create tz_obj.make(tz_sign, tz_h, tz_m)
						tz_ok := True
					end
				else
					create tz_obj.make_gmt
					tz_ok := True
				end
			else
				tz_ok := True
			end

			-- check main parts
			if tz_ok then
				if h_str.is_integer then
					h := h_str.to_integer
					if h <= Hours_in_day then
						if m_str /= Void and then m_str.is_integer then
							m := m_str.to_integer
							if m < Minutes_in_hour then
								if s_str /= Void then 
									if s_str.is_integer then
										s := s_str.to_integer
										if s < Seconds_in_minute then	
											if h = Hours_in_day then
												Result := m = 0 and s = 0
											else
												Result := True
											end
											if Result then
												if fs_str /= Void and fs_str.is_double then
													fs := fs_str.to_double
													if fs < 1.0 then			
														if h = Hours_in_day then
															Result := fs = 0.0
														else
															Result := True
														end
														if Result then
															create
															cached_iso8601_time.make_hmsf(h, m, s, fs, is_extended)
															if tz_obj /= Void then
																cached_iso8601_time.set_timezone(tz_obj)
															end
														end
													end
												else
													create
													cached_iso8601_time.make_hms(h, m, s, is_extended)
													if tz_obj /= Void then
														cached_iso8601_time.set_timezone(tz_obj)
													end
												end
											end
										end
									end
								else -- hours and minutes only
									if h = Hours_in_day then
										Result := m = 0
									else
										Result := True
									end
									if Result then
										create cached_iso8601_time.make_hm(h, m, is_extended)
										if tz_obj /= Void then
											cached_iso8601_time.set_timezone(tz_obj)
										end
									end
								end
							end
						else -- hours only
							Result := True
							create cached_iso8601_time.make_h(h, is_extended)
							if tz_obj /= Void then
								cached_iso8601_time.set_timezone(tz_obj)
							end
						end
					end
				end
			end
		end

feature {ISO8601_ROUTINES} -- Implementation

	cached_iso8601_time_string: STRING
			-- last time string on which is_valid_iso8601_time was called; used for matching
			-- to decide on whether to use cached ISO8601_TIME value or not
	
	cached_iso8601_time: ISO8601_TIME
			-- side-effect of calling valid_time_strings with valid input
	
	cached_iso8601_date_string: STRING
			-- last date string on which is_valid_iso8601_date was called; used for matching
			-- to decide on whether to use cached ISO8601_DATE value or not

	cached_iso8601_date: ISO8601_DATE
			-- side-effect of calling valid_time_strings with valid input
	
	cached_iso8601_date_time_string: STRING
			-- last date string on which is_valid_iso8601_date was called; used for matching
			-- to decide on whether to use cached ISO8601_DATE value or not

	cached_iso8601_date_time: ISO8601_DATE_TIME
			-- side-effect of calling valid_time_strings with valid input

	cached_iso8601_duration_string: STRING
			-- last date string on which is_valid_iso8601_date was called; used for matching
			-- to decide on whether to use cached ISO8601_DATE value or not

	cached_iso8601_duration: ISO8601_DURATION
			-- side-effect of calling valid_time_strings with valid input
end


--|
--| ***** BEGIN LICENSE BLOCK *****
--| Version: MPL 1.1/GPL 2.0/LGPL 2.1
--|
--| The contents of this file are subject to the Mozilla Public License Version
--| 1.1 (the 'License'); you may not use this file except in compliance with
--| the License. You may obtain a copy of the License at
--| http://www.mozilla.org/MPL/
--|
--| Software distributed under the License is distributed on an 'AS IS' basis,
--| WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
--| for the specific language governing rights and limitations under the
--| License.
--|
--| The Original Code is date_time_routines.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2004
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|
--| Alternatively, the contents of this file may be used under the terms of
--| either the GNU General Public License Version 2 or later (the 'GPL'), or
--| the GNU Lesser General Public License Version 2.1 or later (the 'LGPL'),
--| in which case the provisions of the GPL or the LGPL are applicable instead
--| of those above. If you wish to allow use of your version of this file only
--| under the terms of either the GPL or the LGPL, and not to allow others to
--| use your version of this file under the terms of the MPL, indicate your
--| decision by deleting the provisions above and replace them with the notice
--| and other provisions required by the GPL or the LGPL. If you do not delete
--| the provisions above, a recipient may use your version of this file under
--| the terms of any one of the MPL, the GPL or the LGPL.
--|
--| ***** END LICENSE BLOCK *****
--|
