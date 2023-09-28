module MyEnumerable
    def all?
        each do |item|
          return true unless block_given?
          return false unless yield(item)
        end
        return true
    end
end