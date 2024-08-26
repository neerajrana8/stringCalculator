class StringCalculator
  def self.add(input_str)
    return 0 if input_str.empty?
    input_array = input_str.split(',').map(&:to_i)
    input_array.sum
  end
end