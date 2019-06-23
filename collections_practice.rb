require 'pry'
require 'byebug'

def begins_with_r(array)
	testing_t_or_f = nil 
	array.each do |x|
		if x.start_with?("r")
			testing_t_or_f = true
		else
			testing_t_or_f = false
		end
	end
	return testing_t_or_f
end

def contain_a(array)
	contains_a_array = []
	array.each do |x|
		if x.include?("a")
			contains_a_array << x 
		end
	end
	return contains_a_array
end

def first_wa(hash)
	hash.select do |x|
		if x.to_s.start_with?("wa")
			return x 
		end
	end
end

def remove_non_strings(array)
	array.keep_if { |x| x.is_a? String}
	return array
end

def count_elements(array)
	array.group_by(&:itself).map do |k, v|
	k.merge!({:count => v.length})
	end
end

def merge_data(keys, data)
	keys.each do |name_motto|
		data.each do |name_info|
			name_motto.merge!(name_info[name_motto[:first_name]])
		end
	end
end

def find_cool(array)
cool_array = []
	array.each do |person|
	cool_temp = person[:temperature]
		if cool_temp == "cool"
			cool_array.push(person)	
		end
	end
	cool_array
end

def organize_schools(school_hash)
	organized_schools_hash = {}
	school_hash.each do |school_name, location_and_city|
		location_and_city.each do |location, city|
			if organized_schools_hash[city] == nil 
			organized_schools_hash[city] = [school_name]
			else 
			organized_schools_hash[city] << school_name
			end
		end
	end
	organized_schools_hash
end