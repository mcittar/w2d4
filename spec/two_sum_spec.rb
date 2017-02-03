require 'two_sum'
require 'byebug'

describe '#brute_two_sum' do
  let(:arr) { [0, 1, 5, 7] }

  it 'returns true if two numbers in array sum to target' do
    expect(brute_two_sum?(arr, 6)).to be(true) # => should be true
  end

  it 'returns false if no two numbers in array sum to target' do
    expect(brute_two_sum?(arr, 10)).to be(false) # => should be false
  end

end

describe '#sort_two_sum' do
  let(:arr_odd) { [1, 2, 3, 4, 5] }
  let(:arr_even) { [1, 2, 3, 4] }

  it 'returns true if two numbers in array sum to target' do
    expect(sort_two_sum?(arr_odd, 3)).to be(true)
  end

  it 'returns true if two numbers in array sum to target' do
    expect(sort_two_sum?(arr_even, 7)).to be(true)
  end

  it 'returns false if no two numbers in array sum to target' do
    expect(sort_two_sum?(arr_even, 10)).to be(false)
  end

end

describe '#binary_search' do
  let(:arr_odd) { [1, 2, 3, 4, 5] }
  let(:arr_even) { [1, 2, 3, 4] }

  it 'returns middle number INDEX in an odd array' do
    expect(binary_search(arr_odd, 3)).to eq(2)
  end

  it 'returns a number index on the right in an odd array' do
    expect(binary_search(arr_odd, 4)).to eq(3)
  end

  it 'returns a number index on the left in an odd array' do
    expect(binary_search(arr_odd, 1)).to eq(0)
  end

  it 'returns a number index on the right in an even array' do
    expect(binary_search(arr_even, 4)).to eq(3)
  end

  it 'returns a number index on the left in an even array' do
    expect(binary_search(arr_even, 2)).to eq(1)
  end

end

describe
