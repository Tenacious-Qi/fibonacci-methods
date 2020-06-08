# Write a method fibs which takes a number and
# returns that many members of the fibonacci sequence.
# Use iteration for this solution.

# iterative fibonacci solution,
# returns fibonacci sequence elements up to num
def fibs(num)
  fib_sequence = [0, 1]
  1.upto(num) do |i|
    fib_sequence << (fib_sequence[i] + fib_sequence[i - 1])
  end
  fib_sequence[0...num]
end

# recursive fibonacci solution
# returns sequence value at num
def fibs_rec(num)
  num < 2 ? num : fibs_rec(num - 1) + fibs_rec(num - 2)
end

# calls fibs_rec to return fibonacci sequence elements up to num
def fibs_rec_list(result = [], num)
  0.upto(num) { |elem| result << fibs_rec(elem) }
  result
end

p fibs_rec_list(8)
