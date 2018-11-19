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
  i =0
  arr1 = []
  keys.each do |hash|
    arr1 << hash
    data.each do |hash2|
      hash2.each do |k1,v1|
        v1.each do |k2,v2|
          arr1[i][k2] = v2
        end
      end
    end
  i+=1
  end        
end

def find_cool(arg)
  
end

def organize_schools
end 