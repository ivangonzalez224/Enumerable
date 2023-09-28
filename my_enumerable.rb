module MyEnumerable
  def all?
    each do |item|
      return true unless block_given?
      return false unless yield(item)
    end
    true
  end

  def any?
    each do |item|
      return false unless block_given?
      return true if yield(item)
    end
    false
  end

  def filter
    final_arr = []
    each do |item|
      final_arr << item if yield(item)
    end
    final_arr.to_s
  end
end
