# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array)
  count_array = []
    array.uniq.each_with_index do |elem, index|
      count_array << array[index+1].merge(Hash[:count, array.count(elem)])
      end
      count_array
    end



=begin

def count_elements(array)
count_array = []
count_hash = {}
count = 0
  array.detect.each do |name|
      count = array.count(name)
      count_hash = {:name => name, :count => count}
      end
    end
=end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select { |element| element if element.has_value? "cool" }
end

def organize_schools(array)
  location_hash = {}
     schools.each do |school, locations|
       locations.each do |symbol, location|
         if location_hash[location] == nil
           location_hash[location] = [school]
         else
           location_hash[location] << school
         end
       end
     end
     location_hash
  end
