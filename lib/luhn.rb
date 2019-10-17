module Luhn
  def self.is_valid?(number)
    sum = number.to_s.scan(/./).reverse.each_with_index.inject(0) do |sum, (value, index)|
      integer = value.to_i
      integer *= 2 if index % 2 == 1
      integer -= 9 if integer >= 10

      sum += integer
    end

    sum % 10 == 0
  end
end