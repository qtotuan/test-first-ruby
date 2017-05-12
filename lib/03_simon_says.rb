def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n=2)
  arr = []
  n.times {arr.push(string)}
  arr.join(" ")
end

def start_of_word(string, n=0)
  string[0..(n-1)]
end

def first_word(sentence)
  sentence.split(" ")[0]
end

def titleize(words)
  arr = words.split(" ")
  small_words = ["the", "and", "over"]
  arr.map do |e|
    if !small_words.include?(e)
      e.capitalize!
    end

    if arr.index(e) == 0
      e.capitalize!
    end
  end
  arr.join(" ")
end
