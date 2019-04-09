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

# these are external files
# didn't figure out where to put them in the test.....
# willy_corpus = File.read("willy_corpus.txt")
# willy_curse = File.read("willy_curse.txt").split(" ")
