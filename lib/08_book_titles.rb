class Book
  attr_reader :title

  $exceptions = ["and", "in", "the", "of", "a", "an"]

  def title=(string)

    def capitalize_title(string)
      string.split(" ").each_with_index.map { |e, index| ($exceptions.include?(e) && index != 0) ? e : e.capitalize }.join (" ")
    end
    @title = capitalize_title(string)
  end
end
