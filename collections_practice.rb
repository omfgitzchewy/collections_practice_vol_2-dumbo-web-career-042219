def begins_with_r(array)
  boolean = false
  array.each do |element|
    if element.start_with?("r")
      boolean = true
    else
      boolean = false
      return boolean
    end
  end
  return boolean
end

def contain_a(array)
  output = []
  array.each do |element|
    output << element if element.include?("a")
  end
  return output
end

def first_wa(array)
  array.each do |element|
    return element if element[0] == "w" && element[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  array.uniq.each do |hash|
    count = 0
    array.each {|i| count += 1 if i == hash}
    hash[:count] = count
  end
end

def merge_data(keys, data)
  keys.each do |element|
    (data[0][element[:first_name]]).each do |k,v|
      element[k] = v
    end
  end
end

def find_cool(cool)
  final = []
  cool.each do |element|
    element.each do |k,v|
      if v == "cool"
        final << element
      end
    end
  end
  final
end

def organize_schools(schools)
  final = Hash.new
  schools.map do |school, hash|
    hash.map do |location, city|
      if final.key?(city)
        final[city] = [school]
      else
        final[city] << school
      end
    end
  end
  final
end
