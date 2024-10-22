class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    #Here we can extend multiple delimiters list in below Regexp
    delimiter_regex_list = /[\n,;\/]/

    #Replace input strings all delimiter with ,
    numbers = numbers.gsub(delimiter_regex_list, ",")

    #Splitting the input string with delimiter like , or /n and storing it to array
    num_array = numbers.split(",")

    #adding each element of array as sum
    negatives_nums = []
    valid_nums = []
    
    num_array.each do |n|
      n = n.to_i
      if n < 0
        negatives_nums << n
      else
        valid_nums << n
      end 
    end

    raise "Negative numbers not allowed #{negatives_nums}" unless negatives_nums.empty?
    
    return valid_nums.sum

  end

end
