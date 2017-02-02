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
p list.my_min  # =>  -5
# O(n^2)

def my_min_fast(list)
  min = 0
  list.each do |el|
    min = el if el < min
  end
  min
end
p my_min_fast(list)  # =>  -5
# O(n)

def sub_sum(list)
  sub_arrs = []
  byebug
  list.each_index do |i|
    list.each_index do |j|
      if j >= i
        sub_arrs << list[i..j]
      end
    end
  end
  sub_arrs
end

list = [5, 3, -7]
p sub_sum(list) # => 8
