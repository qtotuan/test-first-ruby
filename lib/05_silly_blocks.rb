def reverser
  string = yield
  words = string.strip.split(" ")
  result = []
  words.map do |word|
    word
    letters = word.strip.chars
    reversed = []
    while letters.length > 0 do
      reversed << letters.pop
    end
    result << reversed.join("")
  end
  result.join(" ")
end

def adder(num=1)
  input = yield
  input + num
end

def repeater(n=1)
  n.times { yield }
end
