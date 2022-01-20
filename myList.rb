class MyList
    
    def initialize(list)
        @list = list
    end

    def each(&block)
        @List.each do |item|
          block.call(item) 
        end
    end

end