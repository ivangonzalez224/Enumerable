module MyEnumerable
    def all?
        each do |item|
          return true unless block_given?
          return false unless yield(item)
        end
        return true
    end

    def any?
        each do |item|
          return false unless block_given?
          return true if yield(item)
        end
        return false
    end
end