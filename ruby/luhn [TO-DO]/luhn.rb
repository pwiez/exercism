class Luhn
  def valid?(number)
    numbers = number.gsub(/ /, '').split('')
    numbers.map!(&:to_i)

    until position == 0
      numbers[position - 1] *= 2
      numbers[position] -= 9 if numbers[position] > 9
      position -= 2
    end

    p numbers
    p numbers.sum
    return true if numbers.sum % 10 == 0

    false
  end
end

a = Luhn.new
p a.valid?('4539 3195 0343 6467')
