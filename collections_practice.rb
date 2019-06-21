# your code goes here
def begins_with_r(tools)
  tools.each do |tool|
    if tool[0] != 'r'
      return false 
    end
  end
  return true
end


def contain_a(arr)
  newA = []
  arr.each do |thing|
    if thing.include?("a") == true
      newA.push(thing)
    end
  end
  return newA
end


def first_wa(arr)
  newA = []
  arr.each do |thing|
    if thing.class == String
      if thing.start_with?("wa")
        return thing
      end
    end
  end
end


def remove_non_strings(arr)
  newA = []
  arr.each do |thing|
    if thing.class == String
      newA.push(thing)
    end
  end
  newA
end

def count_elements(array)
  counts = Hash.new(0)
  array.each { |element| counts[element] += 1 }
  return_array = []
  counts.each do |element,num| 
    element.each { |key, val| return_array << {key => val, :count => num} }
  end
  return_array
end


def merge_data(keys,data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name
      end
    end
  end
  merged_hashes

 end

 def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each { |k,v| cool_hashes << hash if k == :temperature && v == "cool"}
  end
  cool_hashes
end

 def organize_schools(hash)
  locations = {}
  hash.values.each { |location| locations[location.values[0]] = [] }
  hash.each { |school, location| locations[location.values[0]] << school }
  locations
end 


first_wa(["candy", :pepper, "wall", :ball, "wacky"])