# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# The commented part solves this using each
def sum_3_5_multiple(n)
  total = 0

  #using each
  # (0...n).each do |i|
  #   total += i if (i%3 == 0 || i%5 == 0)
  # end
  #using for
  for i in 0..n-1
    total += i if (i%3 == 0 || i%5 == 0)
  end
  puts total
end
