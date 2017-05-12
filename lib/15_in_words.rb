class Fixnum

  SPECIALS = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
  }

  TENS = {
    2 => "twenty",
    3 => "thirty",
    4 => "forty",
    5 => "fifty",
    6 => "sixty",
    7 => "seventy",
    8 => "eighty",
    9 => "ninety"
  }

  DICTIONARY = {
    1000000000000 => " trillion ",
    1000000000 => " billion ",
    1000000 => " million ",
    1000 => " thousand ",
    100 => " hundred "
  }

  def in_words

    return 'zero' if self == 0

    end_result = ""

    def specials(num)
      result = ""
      if num < 20
        result += SPECIALS[num]
      elsif num < 100
        if num % 10 == 0
          result += TENS[num/10]
        else
          result += TENS[num/10]
          result += " " + SPECIALS[num % 10]
        end
      end
    end

    def hundreds(num)
        string = SPECIALS[num/100] + " hundred"
        if num % 100 != 0
          string += " " + specials(num % 100)
        end
        string
    end

    remainder = self

    DICTIONARY.each do |number, word|
      if remainder >= number
        if remainder/number < 100
          end_result += specials(remainder/number) + word
        else
          end_result += hundreds(remainder/number) + word
        end
        remainder = remainder % number
      end
    end

    end_result += specials(remainder) if remainder != 0

   end_result.strip
  end
end
