class CountElements
    def initialize(table)
      @table = table
    end
  
    def perform
      count_hash = Hash.new(0)
      @table.each do |element|
        count_hash[element] += 1
      end
      count_hash
    end
  end
  