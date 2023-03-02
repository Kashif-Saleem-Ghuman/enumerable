# create a module called MyEnumerable
module MyEnumerable
  def all?
    each do |item|
      return false unless yield(item)
    end
    true
  end
  def any?
    each do |item|
      return true if yield(item)
    end
    false
  end
  def filter?(&block)
    output_arr = []
    each do |element|
      output_arr << element if block.call(element) == true
    end
    output_arr
  end
end


