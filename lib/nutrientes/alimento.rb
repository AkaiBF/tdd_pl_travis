class Node 
    @@estructura = Struct.new(:value, :next_, :prev_)
    attr_reader :nodo
    def initialize(val) 
        @nodo = @@estructura.new(val, nil, nil)
    end
end

class List
    attr_reader :head, :tail, :size
    def initialize()
        @size = 0
        @head = nil
        @tail = nil
    end
    
    def push(nodo) 
        if @size == 0 then
            @head = nodo
            @tail = nodo
        else
            @tail.nodo[:next_] = nodo
            nodo.nodo[:prev_] = @tail
            @tail = nodo
        end
        @size += 1
    end
    
    def insert
        if @size == 0 then
            @head = nodo
            @tail = nodo
        else
            @head.nodo[:prev_] = nodo
            nodo.nodo[:next_] = @head
            @head = nodo
        end
        @size += 1
    end
    
    def truncate
        if size > 1
            @head = @head.nodo[:next_]
            @head.nodo[:prev_] = nil
            @size -= 1
        elsif size == 1
            @head = nil
            @tail = nil
            @size -= 1
        end
    end
    
    def pop
        if size > 1
            @tail = @tail.nodo[:prev_]
            @tail.nodo[:next_] = nil
            @size -= 1
        elsif size == 1
            @tail = nil
            @head = nil
            @size -= 1
        end
    end
end
    

class Alimento
    attr_reader :name, :proteins, :glucids, :lipids
   def initialize (name, proteins, glucids, lipids)
       @name = name
       @proteins = proteins
       @glucids = glucids
       @lipids = lipids
   end
   
   def to_s() 
       return String.new(@name + ", " + @proteins.to_s + "g proteins, " + @glucids.to_s + "g glucids, " + @lipids.to_s + "g lipids")
   end
   
   def caloric_value()
       return (@proteins * 4 + @lipids * 9 + @glucids * 4)
   end
   
end