# O(n**2) complexity
def brute_two_sum?(arr, target)
  arr.each_index do |i|
    arr.each_index do |j|
      if i > j
        return true if arr[i] + arr[j] == target
      end
    end
  end
  false
end

def sort_two_sum?(arr, target)
  start_idx = 0
  end_idx =  arr.length - 1
  while start_idx < end_idx
    case arr[start_idx] + arr[end_idx] <=> target
    when 0
      return true
    when -1
      start_idx += 1
    when 1
      end_idx -= 1
    end
  end

  false
end

def good_two_sum?(arr, target)
  hash = {}
  
  arr.each do |el|
    hash[el] = target - el if hash[el].nil?
  end

  hash.values.each do |value|
    return true if hash[value]
  end

  false
end

def binary_search(list, target, &prc)
  return false if list.length < 1
  prc ||= Proc.new { |a, b| a <=> b }

  mid = list.length / 2
  case prc.call(target, list[mid])
  when 1
    binary_search(list.drop(mid), target) + mid
  when 0
    mid
  when -1
    list.length.odd? ? binary_search(list.take(mid - 1), target) : binary_search(list.take(mid), target)
  end
end
