require 'byebug'

class Array

  def my_min
    # byebug
    each_index do |i|
      each_index do |j|
        if i > j
          break if self[i] > self[j]
          return self[i]
        end
      end
    end
  end

end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
list.my_min  # =>  -5
# O(n**2)

def my_min_fast(list)
  min = 0
  list.each do |el|
    min = el if el < min
  end
  min
end
my_min_fast(list)  # =>  -5
# O(n)

# O(n**7)
def sub_sum(list)
  sub_arrs = []
  # byebug
  list.each_index do |i|
    list.each_index do |j|
      if j >= i
        sub_arrs << list[i..j]
      end
    end
  end
  size = []
  sub_arrs.each do |arr|
    size << arr.inject(&:+)
  end
  size.max
end

list = [5, 3, -7]
sub_sum(list) # => 8

def fast_sub_sum(list)

  return list.max if list.all?(&:negative?)

  best_max = 0
  running_max = 0
  list.each do |el|

    running_max += el

    if running_max < 0
      running_max = 0
      next
    end
    best_max = running_max if running_max > best_max
  end

  best_max
end
list = [2, 3, -6, 7, -6, 7]
p fast_sub_sum(list) # => 8 (from [7, -6, 7])
list = [5, 3, -7]
p fast_sub_sum(list) # => 8
list = [-5, -1, -3]
p fast_sub_sum(list) # => -1 (from [-1])
list = [1, 2, 3]
p fast_sub_sum(list) # => 6
list = [7, -6, 7]
p fast_sub_sum(list) # => 8
