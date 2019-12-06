def high(x)
  words = x.split
  scores = words.map { |word| word.chars.map { |ch| ch.ord - 96}.sum  }
  words[scores.index(scores.max)]
end
