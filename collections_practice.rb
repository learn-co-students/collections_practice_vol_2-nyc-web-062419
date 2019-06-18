require 'pry'

def begins_with_r(array)
  array.all? do |word|
    word[0] == 'r'
  end 
end

def contain_a(array)
  array.select  do |word|
    word.include?('a')
  end
end 

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?('wa')
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String 
  end 
end

def count_elements(array)
    array.group_by(&:itself).map do |key, val|
      key.merge(count: val.length)
  end
end

def merge_data(keys, data)
 keys.each do |hash1|
  data.each do |hash2|
    hash1.merge!(hash2[hash1[:first_name]])
    end
  end
end 

def find_cool(array)
  array.select do |value|
    value if value.has_value?('cool')
  end
end

def organize_schools(schools)
  location = {}
    schools.each do |key, value|
      value.each do |k, v|
        if location[v] == nil
          location[v] = [key]
        else 
          location[v] << key
        end
      end
    end
  location
end 







