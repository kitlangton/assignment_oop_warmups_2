class Array
  def deep_dup
    self.map do |element|
      if element.is_a? Array
        element.dup
        element.deep_dup
      else
        element
      end
    end
  end
end
