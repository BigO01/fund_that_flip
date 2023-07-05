
def multiply(a, b)
  return 0 if a == 0 || b == 0

  negative_result = (a < 0) ^ (b < 0)

  a = a.abs
  b = b.abs

  result = 0

  while b > 0
    result += a
    b -= 1
  end

  negative_result ? -result : result
end

def power(base, exponent)
  return 1 if exponent == 0

  negative_result = (base < 0) && (exponent % 2 != 0)

  base = base.abs
  exponent = exponent.abs

  result = 1

  while exponent > 0
    result = multiply(result, base)
    exponent -= 1
  end

  negative_result ? -result : result
end

loop do
  puts "Choose a method to run:"
  puts "1. Multiply"
  puts "2. Power"
  puts "3. Exit"

  choice = gets.chomp

  case choice
  when "1"
    print "Enter the first number: "
    a = gets.chomp.to_i
    print "Enter the second number: "
    b = gets.chomp.to_i
    result = multiply(a, b)
    puts "Result: #{result}"
  when "2"
    print "Enter the base number: "
    base = gets.chomp.to_i
    print "Enter the exponent: "
    exponent = gets.chomp.to_i
    result = power(base, exponent)
    puts "Result: #{result}"
  when "3"
    puts "Exiting the program..."
    break
  else
    puts "Invalid choice! Please try again."
  end
end
