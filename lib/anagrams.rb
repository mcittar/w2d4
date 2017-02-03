require 'byebug'

def first_anagram?(word_one, word_two)
  word_one.split("").permutation.include?(word_two.split(""))
end

def second_anagram?(word_one, word_two)
  working_one = word_one.chars
  working_two = word_two.chars
  # byebug
  word_one.chars.each do |char|
    word_two.chars.each do |char_two|
      if char == char_two
        working_one.delete(char)
        working_two.delete(char)
      end
    end
  end

  working_one.empty? && working_two.empty?
end

def third_anagram?(word_one, word_two)
  word_one.chars.sort == word_two.chars.sort
end

def fourth_anagram?(word_one, word_two)
  arr = word_one.chars + word_two.chars
  output = {}

  arr.each do |letter|
    output[letter].nil? ? output[letter] = 1 : output[letter] += 1
  end

  output.values.any? { |el| el.odd? }
end
