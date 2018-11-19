def begins_with_r(array)
	array.all?{|word| word[0] == "r"}	
end

def contain_a(array)
  x = array.select{|word| word.include?("a")}
  return x
end

def first_wa(array)
  x=array.select{|word| word.class == String && word.include?("wa")}
  return x[0]
end

def remove_non_strings(array)
  array.reject{|ele| ele.class != String}
end

def count_elements(array)
  y = {}
  array.each do |element|
    if y.has_key?(element[:name])
      y[element[:name]] +=1
    else
      y[element[:name]] = 1
    end
  end
  x = []
  y.each do |key,value|
      z = {:name => key, :count => value}
      x << z
  end
  return x
end

def merge_data(keys,data)
  arr1 = []
  i = 0
  keys.each do |hash1| 
    arr1 << hash1
    data.each do |hash2| #array index 0,1
        hash2.each do |k1,v1| #blake -> {}
          if k1 == hash1[:first_name] 
            v1.each do |k2,v2| #awesomes -> values
              arr1[i][k2] = v2
            end
          end
        end
      
    end
    i+=1
  end
end

def find_cool(array)
  x = []
  array.each do |element| # index
    element.each do |keys,values|
      if element[keys] == "cool"
        x << element
        return x
      end 
    end 
  end
end

def organize_schools(hash)
  
  
end 