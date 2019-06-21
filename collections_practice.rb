# your code goes here
require "pry"

def begins_with_r(arr)
    y = true
    arr.map do |x|
        if x.start_with?("r")
        else
           return !y 
        end
    end
    y
end

def contain_a(arr)
    arr.map do |w|
        if w.include?("a")
            w 
        end
    end.compact
end

def first_wa(arr)
    arr.map do |w|
        if w.to_s.start_with?("wa")
            return w 
        end
    end
end

def remove_non_strings(arr)
    arr.delete_if {|w| w.class != String}
end

def count_elements(arr)
    arr.map do |ele|
        count = arr.count(ele) 
        if count > 1
            arr.uniq!
            ele[:count] = count
        else
            ele[:count] = count 
        end
    end
    arr
end

def merge_data(key,data)
    data[0].map do |name,info|
        hash = {}
        key.each do |arr|
            if arr[:first_name] == name
            hash = info.merge(arr)
            end
        end
        hash
    end
end

def find_cool(word) 
    arr = []
    word.each do |hash|
        if hash[:temperature] == "cool"
            arr << hash
        end
    end
    arr
end

def organize_schools(method)   
    hash = {}
    method.map do |school,loc|
        if hash[loc[:location]] 
            hash[loc[:location]] << school
         else
            hash[loc[:location]] = []
            hash[loc[:location]] << school
         end
    end
    hash
end