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
        hash.each do |key, value|
            if already_exist.include?(value)
                counted.each do |element|
                    if element.include?(value)
                        element.each do |key, value|
                            if key == :count
                                value += 1
                            end
                        end
                    end
                end
            
            end
        end

            element.each do |key, value|
                if hash.values.include?(value)
                    element.each do |key, value|
                        if key == :count
                            value += 1
                        end
                    end
                end
 
        if already_exist.include?(hash)
           
            counted.each do |element|
                if element == hash
                    element.each do |key, value|
                        if key == :count
                            value += 1
                        end
                    end
                end
            end
        else
            already_exist << hash
            counted << hash
            counted[counted.length-1][:count] = 1
        end
    end
    counted
    already_exist
end
# your code goes here
