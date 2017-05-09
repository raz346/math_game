class Question
  attr_reader :number1, :number2
# 
  def self.number1
    @number1 = rand(10)
  end

  def self.number2
    @number2 = rand(10)
  end

  def self.validation(input)
    # convert to integer and sum
    input.to_i == (@number1 + @number2)
  end

end