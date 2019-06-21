require 'pry'

def begins_with_r (array)
    result = nil
    array.each do |word|
        if word.start_with? 'r'
            result = true
        else
            result = false
            break
        end
    end
    result
end

def contain_a (array)
    have_a = []
    
    array.each do |word|
        if word.include? 'a'
            have_a << word
        end
    end

    have_a
end

def first_wa (array)
    first = ""
    array.each do |word|
        if word.to_s.start_with? 'wa'
            first = word
            break
        end
    end
    first
end

def remove_non_strings (array)
    strings = []
    array.each do |element|
        if element.class == String
            strings << element
        end
    end
    strings
end

def count_elements (array)
    counted = []
    already_exist = []

    array.each do |hash|
        if already_exist.include?(hash)
            hash.each do |hash_key, hash_value|
                counted.each do |element|
                    if element.values.include?(hash_value)
                        element.collect do |key, value|
                            if key == :count
                                element[:count] += 1
                            end
                        end
                    end
                end
            end
        else
            hash_clone = hash.clone
            already_exist << hash_clone
            counted << hash
            counted[counted.length-1][:count] = 1
        end
    end
    counted
end

def merge_data (structure1, structure2)
    merged_data = [{},{}]
    i = 0
    structure1.each do |hash| 
        hash.each do |key, values|
            merged_data[i][key] = values
        end
        i += 1
    end
    i = 0
    structure2.each do |hash|
        hash.each do |key_name, values|
            values.each do |key, value|
                merged_data[i][key] = value
            end
            i +=1
        end
    end
    merged_data
end

def find_cool (array)
    cool_hashes = []
    
    array.each do |hash|
        if hash.values.include? "cool"
            cool_hashes << hash
        end
    end
    cool_hashes
end

def organize_schools (array)
    schools_by_location = {}

    array.each do |school, location_hash|
        location_hash.each do |key, value|
            if schools_by_location.keys.include? (value)
                schools_by_location[value] << school
            else
                schools_by_location[value] = [school]
            end
        end
    end

    schools_by_location
end
# your code goes here
