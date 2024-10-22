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
    sum = 0
    num_array.each do |n|
      n = n.to_i
      raise "Invalid input: Negative numbers present" if n < 0
      sum += n
    end
  
    return sum

  end

end
