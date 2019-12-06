require "test/unit/assertions"
include Test::Unit::Assertions

def high(x)
  words = x.split
  scores = words.map { |word| word.chars.map { |ch| ch.ord - 96}.sum  }
  words[scores.index(scores.max)]
end

assert_equal(high('man i need a taxi up to ubud'), 'taxi')
assert_equal(high('what time are we climbing up the volcano'), 'volcano')
assert_equal(high('take me to semynak'), 'semynak')
assert_equal(high('aaa b'), 'aaa')
