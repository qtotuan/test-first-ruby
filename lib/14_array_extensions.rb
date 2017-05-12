class Array
  def square
    self.collect { |e| e * e }
  end

  def square!
    self.collect! { |e| e * e }
  end
end
