require 'rspec'

class Coin

  #Teacher's answer*********************
  # def output(number)
  #   denominations = [25, 10, 5, 1]
  #   coins = []
  #   denominations.each do |coin|
  #     while cents >= coin
  #       cents -= coin
  #       coins << coin
  #     end
  #   end
  #   coins
  # end

  def output(number)

   array = []

   while number > 0 do

     if number >= 25
       (number/25).times do
         array << 25
       end
       number = number - (25*(number/25))

     elsif number >= 10
       (number/10).times do
         array << 10
       end
       number = number - (number/10)*10

     elsif number >= 5
       (number/5).times do
         array << 5
       end
       number = number - (number/5)*5

     elsif number >= 1
       (number/number).times do
         array << 1
       end
       number -= 1
     end
   end
   return array
  end

end

RSpec.describe Coin do

  let(:change){Coin.new}

  describe '#output' do
    it 'should return 1 if given 1' do
      expect(change.output(1)).to eq([1])
    end
  

    it 'should return 2 pennies if given 2' do
      expect(change.output(2)).to eq([1, 1])
    end

    it 'should return 3 pennies if given 3' do
      expect(change.output(3)).to eq([1, 1, 1])
    end

    it 'should return 4 pennies if given 4' do
      expect(change.output(4)).to eq([1, 1, 1, 1])
    end

    it 'should return 5 pennies if given 5' do
      expect(change.output(5)).to eq([5])
    end

    it 'should return 1 penny and 1 nickel if given 6' do
      expect(change.output(6)).to eq([5, 1])
    end

    it 'should return 2 pennies and 1 nickel if given 7' do
      expect(change.output(7)).to eq([5, 1, 1])
    end

    it 'should return 3 pennies and 1 nickel if given 8' do
      expect(change.output(8)).to eq([5, 1, 1, 1])
    end

    it 'should return 4 pennies and 1 nickel if given 9' do
      expect(change.output(9)).to eq([5, 1, 1, 1, 1])
    end

    it 'should return 1 dime if given 10' do
      expect(change.output(10)).to eq([10])
    end

    it 'should return 1 penny and 1 dime if given 11' do
      expect(change.output(11)).to eq([10, 1])
    end

    it 'should return 1 nickle and 1 dime if given 15' do
      expect(change.output(15)).to eq([10, 5])
    end

    it 'should return 1 penny, 1 nickle, and 1 dime if given 16' do
      expect(change.output(16)).to eq([10, 5, 1])
    end

    it 'should return 2 dimes if given 20' do
      expect(change.output(20)).to eq([10, 10])
    end

    it 'should return 1 quarter if given 25' do
      expect(change.output(25)).to eq([25])
    end

    it 'should return 1 quarter, 1 dime, 1 nickel, 1 penny if given 41' do
      expect(change.output(41)).to eq([25, 10, 5, 1])
    end

    it 'should return 2 quarters if given 50' do
      expect(change.output(50)).to eq([25, 25])
    end
  end
end