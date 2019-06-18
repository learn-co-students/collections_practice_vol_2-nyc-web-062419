# your code goes here

def begins_with_r(array)
    value = true
    array.each do |str|
        if str[0] != "r"
            value = false
        end
    end
    value

end

def contain_a (array)
    array.select {|str| str.include? "a"}
end

def first_wa (array)
    array.each do |str|
        if str[0..1]== "wa"
            return str
            break
        end
    end
end

def remove_non_strings (array)
    new = []
    array.each do |thing|
        if thing.class == String
            new.push(thing)
        end
    end
    new
end

def count_elements (array)
    count_list = []
    name_list = []
    array.each do |item|
        if name_list.include? item[:name]
            count_list[name_list.index(item[:name])][:count] += 1
        else
            count_list.push({name: item[:name], count: 1})
            name_list.push(item[:name])
        end
    end
    count_list
end



def merge_data (data1, data2)

    merged = {}

    data1.each_with_index do |person, i|
        data2.each do |more_info|
            if more_info.key?(person[:first_name])
                more_info[person[:first_name]].each do |key, value|
                    data1[i][key] = value
                end
            end
        end
    end
    data1
end



def find_cool (array)

    cool_hashes = []

    array.each_with_index do |person, i|
        if person.values.include? "cool"
            cool_hashes.push(array[i])
        end
    end

    cool_hashes

end



def organize_schools (hash)

    final_hash = {}
    hash.each do |name, loc_hash|
        if final_hash.keys.include? loc_hash[:location]
            final_hash[loc_hash[:location]].push(name)
        else
            final_hash[loc_hash[:location]] = [name]
        end
    end
    final_hash

end