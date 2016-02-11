require 'rspec'

class FizzBuzz

  def go
    (1..100).to_a.each do |number|
      puts output(number) #run fb.go in terminal after done for final test
    end
  end

  def output(number)
    
    if number % 15 == 0
      "FIZZBUZZ"
    elsif number % 3 == 0
      "FIZZ"
    elsif number % 5 == 0
      "BUZZ"
    else
      number
    end
  end

end

RSpec.describe FizzBuzz do
  # describe '#go' do
  #   it 'should produce an array from 1 to 100' do
  #     fb = FizzBuzz.new
  #     expect(fb.go).to eq((1..100).to_a_)
  #   end
  # end

  describe '#output' do
    it 'should return 1 if given 1' do
      fb = FizzBuzz.new
      expect(fb.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do
      fb = FizzBuzz.new
      expect(fb.output(2)).to eq(2)
    end

    it 'should return FIZZ if given 3' do
      fb = FizzBuzz.new
      expect(fb.output(3)).to eq("FIZZ")
    end

    it 'should return 4 if given 4' do
      fb = FizzBuzz.new
      expect(fb.output(4)).to eq(4)
    end

    it 'should return BUZZ if given 5' do
      fb = FizzBuzz.new
      expect(fb.output("BUZZ")).to eq("BUZZ")
    end

    it 'should return FIZZ if given 6' do
      fb = FizzBuzz.new
      expect(fb.output(6)).to eq("FIZZ")
    end

    it 'should return 7 if given 7' do
      fb = FizzBuzz.new
      expect(fb.output(7)).to eq(7)
    end

    it 'should return 8 if given 8' do
      fb = FizzBuzz.new
      expect(fb.output(8)).to eq(8)
    end

    it 'should return FIZZ if given 9' do
      fb = FizzBuzz.new
      expect(fb.output(9)).to eq("FIZZ")
    end

    it 'should return BUZZ if given 10' do
      fb = FizzBuzz.new
      expect(fb.output(10)).to eq("BUZZ")
    end

    it 'should return FIZZBUZZ if given 15' do
      fb = FizzBuzz.new
      expect(fb.output(15)).to eq("FIZZBUZZ")
    end


  end
end