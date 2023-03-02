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
    filter_result = filter(&block)
    !filter_result.empty?
  end
end


