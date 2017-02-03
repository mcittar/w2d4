require 'anagrams'

describe '#first_anagram?' do

  it 'returns true if two words are anagrams' do
    expect(first_anagram?("elvis", "lives")).to be(true)
  end

  it 'returns false if two words are not anagrams' do
    expect(first_anagram?("gizmo", "sally")).to be(false)
  end

end

describe '#second_anagram?' do

    it 'returns true if two words are anagrams' do
      expect(second_anagram?("elvis", "lives")).to be(true)
    end

    it 'returns false if two words are not anagrams' do
      expect(second_anagram?("gizmo", "sally")).to be(false)
    end

    it 'retruns true for long anagrams' do
      expect(second_anagram?("doctrinairism", "discriminator")).to be(true)
    end

end

describe '#third_anagram?' do

    it 'returns true if two words are anagrams' do
      expect(third_anagram?("elvis", "lives")).to be(true)
    end

    it 'returns false if two words are not anagrams' do
      expect(third_anagram?("gizmo", "sally")).to be(false)
    end

    it 'retruns true for long anagrams' do
      expect(third_anagram?("doctrinairism", "discriminator")).to be(true)
    end
end

describe '#fourth_anagram?' do

    it 'returns true if two words are anagrams' do
      expect(fourth_anagram?("elvis", "lives")).to be(true)
    end

    it 'returns false if two words are not anagrams' do
      expect(fourth_anagram?("gizmo", "sally")).to be(false)
    end

    it 'retruns true for long anagrams' do
      expect(fourth_anagram?("doctrinairism", "discriminator")).to be(true)
    end

end
