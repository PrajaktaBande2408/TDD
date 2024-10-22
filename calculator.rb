class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    #Here we can extend multiple delimiters list in below Regexp
    delimiter_regex_list = /[\n,;\/]/

    #Replace input strings all delimiter with ,
    numbers = numbers.gsub(delimiter_regex_list, ",")

    #Splitting the input string with delimiter like , or /n and storing it to array
    num_array = numbers.split(",").map(&:to_i)

    #adding each element of array as sum
    sum = 0
    num_array.each do |n|
      sum += n
    end
  
    return sum

  end

end
