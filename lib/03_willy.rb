def word_counter(corpus, dictionnary)
  pairs = {}
  corpus = corpus.downcase
  dictionnary.each do |included|

  # this is something I found online
  # regex =～ returns true or false
  # this one returns matching frequences

    frequence = corpus.scan(/#{included}/).size
    if frequence > 0
      pairs[included] = frequence
    end
  end

  return pairs
end

# well how to check this....coz Hashes can be presented in disorder
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
willy_corpus = File.read("willy_corpus.txt")
willy_curse = File.read("willy_curse.txt").split(" ")

puts word_counter(willy_corpus, dictionnary)
puts word_counter(willy_corpus, willy_curse)
