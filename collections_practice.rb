def begins_with_r (tools_array)
    answer = true 
    tools_array.each do |elements|
       elements[0]=="r"? answer  : answer = false
      
    end 
    answer 
end


def contain_a (array)
    array.map do |elements|
        if elements.include? "a" then elements
        end
    end
   .compact
end    


def first_wa (array)
    array.each do |elements|
        if elements.to_s.include? "wa" then return elements
         end
    end
    
end

def remove_non_strings(array)
    array.select do |elements|
        elements.is_a? String 
    end
end


def count_elements (array)
    array.each do |orginal_hash|
        orginal_hash[:count]= 0
        name= orginal_hash[:name]
        array.each do |new_hash|
            if new_hash[:name]== name then orginal_hash[:count]+=1
            end
        end
    end 
    .uniq
end


def merge_data(array_one, array_two)
    array_two.each do|data|
        data.each do |k, v|
            array_one.each do |whole_data|
                if whole_data[:first_name]==k then v.each do |x, y|
                    whole_data[x]=y
                end
            end
        end
    end
end
    array_one
end


def find_cool(hash)
    box=[]
    hash.each do|elements|
        box.push(elements) if elements[:temperature]=="cool" 
        end
        box
    end


   def organize_schools(schools)
    organized_hash ={}
    schools.each do|course, place|
        if organized_hash.keys.include? place[:location] then organized_hash[place[:location]].push(course)
        else organized_hash[place[:location]]=[course]
            end
        end
        organized_hash
   end
