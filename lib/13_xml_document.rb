class XmlDocument

  def hello(attributes={}, &block)
    
    return "<hello/>" if attributes == {}

    attributes_string = attributes.map do |key, value|
      "#{key}=\"#{value}\""
    end.join (" ")

    "<hello #{attributes_string}/>"
  end

  def send(name)
    "<#{name}/>"
  end

  def goodbye(attributes="")
    h = attributes
    if attributes != ""
      "<goodbye #{h.keys[0]}=\"#{h[h.keys[0]]}\"/>"
    else
      "<goodbye/>"
    end
  end

end
