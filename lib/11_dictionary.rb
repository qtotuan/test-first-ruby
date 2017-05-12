class Dictionary
  attr_reader :entries
  def initialize(entries={})
    @entries = entries
  end

  def add(entry)
    entry.class == String ? @entries[entry] = nil : @entries.merge!(entry)
  end

  def keywords
    @entries.keys.sort
  end

  def include?(string)
    @entries.keys.include?(string)
  end

  def find(string)
    result = {}
    @entries.each do | key, value |
      if /(^#{string})/.match(key)
        result.merge!(key => value)
      else
        {}
      end
    end
    result
  end

  def printable
    string = ""
    @entries.sort.to_h.map do |key, value|
      string += %Q{[#{key}] "#{value}"\n}
    end
    string.strip
  end
end
