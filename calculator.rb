require 'rspec'
include Math

class Calculator

  def add(number_one, number_two)

    return number_one + number_two

  end

  def subtract(number_one, number_two)

    return number_one - number_two

  end

  def multiply(number_one, number_two)

    return number_one * number_two

  end

  def divide(number_one, number_two)

    return number_one / number_two

  end

    def square(number)

    return number * number

  end

  def power(number, exponent)

    return number ** exponent

  end

  def modulus(number_1, number_2)

    return number_1 % number_2

  end

  def square_root(number)

    return sqrt(number)

  end

  def log(number)

    return log10(number)

  end

end

RSpec.describe Calculator do

  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = Calculator.new
      sum = calc.add(2,4)
      expect(sum).to eq (6)
    end
  end

  describe '#square' do
    it 'should return the product of a number' do
      calc = Calculator.new
      product = calc.square(5)
      expect(product).to eql (25)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calc = Calculator.new
      difference = calc.subtract(8, 5)
      expect(difference).to eq (3)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calc = Calculator.new
      product = calc.multiply(5, 6)
      expect(product).to eq (30)
    end
  end

  describe '#divide' do
    it 'should return the divisor of two numbers' do
      calc = Calculator.new
      divisor = calc.divide(25, 5)
      expect(divisor).to eq (5)
    end
  end

  describe '#power' do
    it 'should return the exponent of two numbers' do
      calc = Calculator.new
      power = calc.power(3, 3)
      expect(power).to eq (27)
    end
  end

  describe '#modulus' do
    it 'should return a modulus of zero' do
      calc = Calculator.new
      modulus = calc.modulus(10, 5)
      expect(modulus).to eq (0)
    end
  end

  describe '#square_root' do
    it 'should return a square root of a number' do
      calc = Calculator.new
      root = calc.square_root(9)
      expect(root).to eq (3)
    end
  end

  describe '#log' do
    it 'should return a logarithm(10) of a number' do
      calc = Calculator.new
      log = calc.log(1)
      expect(log).to eq (0)
    end
  end
end