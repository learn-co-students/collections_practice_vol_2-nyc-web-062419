# your code goes here
require 'pry'
def begins_with_r arr
    mark = true
    arr.each {|x| mark = false unless x[0] == "r" }
    mark
end

def contain_a arr 
    arr.select {|x| x.include? "a"}
end

def first_wa arr
   val = arr.select {|x| x.to_s.include? "wa"}
   val[0]   
end

def remove_non_strings arr
    arr.select {|x| x.is_a? String}
end

def count_elements arr
    arr.each do |hash|
        hash[:count] = 0
    end
    arr.each do |updated_hash|
        arr.each do |counting|
            if counting[:name] == updated_hash[:name]
                updated_hash[:count] += 1
            end
        end
    end
    arr.uniq    
end

def merge_data set_one,set_two
    set_two.each do |sub_set|
        sub_set.each do |key,value|
            set_one.each do |master_set|
                if master_set[:first_name] == key
                    value.each do |x,y|
                        master_set[x] = y
                    end
                end
            end
        end   
    end
    set_one
end

def find_cool hashes
    to_return = []
    hashes.each do |hash|
       to_return << hash unless !hash.values.any? "cool"
    end
    to_return
end

def organize_schools schools
    return_hash = {}
    schools.each do |school,location|
        if  return_hash.keys.any? location[:location]
            return_hash[location[:location]] << school
        else 
            return_hash[location[:location]] = [school]
        end
    end
    return_hash       
end


#pry(#<RSpec::ExampleGroups::CollectionsPractkiceVol2::MergeData>)> set_one
#=> [{:first_name=>"blake", :motto=>"Have a koala-ty day!"}, {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
#[#2] pry(#<RSpec::ExampleGroups::CollectionsPracticeVol2::MergeData>)> set_two
##=> [{"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}]


