class Node 
    @@estructura = Struct.new(:value, :next_, :prev_)
    attr_reader :nodo
    def initialize(val) 
        @nodo = @@estructura.new(val, nil, nil)
    end
end