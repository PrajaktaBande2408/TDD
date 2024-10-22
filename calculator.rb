class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    num_array = numbers.split(",").map(&:to_i)

    sum = 0
    num_array.each do |n|
      sum += n
    end
  
    return sum

  end
end
