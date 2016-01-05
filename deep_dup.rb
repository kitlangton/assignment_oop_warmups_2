class Array
  def deep_dup
    self.map! do |element|
      if element.is_a? Array
        element.deep_dup
      else
        element
      end
    end
  end
end

original_array = [ ["cat", "dog"], 2 ]

duped_array = original_array.deep_dup

puts original_array[0].object_id
puts duped_array[0].object_id

