#!/bin/ruby

def are_anagrams?(word1, word2)
  # O(n)
  counts1 = char_counts(word1)
  counts2 = char_counts(word2)

  counts1 == counts2
end

# O(n)
def char_counts(word)
  counts = {}
  word.split('').each do |char|
    counts[char] ||= 0
    counts[char] += 1
  end
  counts
end
