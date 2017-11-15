# A list class implementation for Lenguajes y Paradigmas de la Programación
# Universidad de La Laguna
#
# @author Ernesto Echeverría González
# @since 10-11-2017
# @email alu0100881622@ull.edu.es 
# @version 1.0.0

# Class Node
# Defines the container of each element of the list
# @!attribute r nodo
class Node
    @@estructura = Struct.new(:value, :next_, :prev_)
    attr_reader :nodo
    
    # Initialization of a node
    # @param val [Object] Value to store at the node
    def initialize(val) 
        @nodo = @@estructura.new(val, nil, nil)
    end
end

# Class List
# Defines the list
# @!attribute [r] head
#   @return [Object] The first element of the list 
# @!attribute [r] tail
#   @return [Object] The last element of the list 
# @!attribute [r] size 
#   @return [Fixnum] Size of the list
class List
    attr_reader :head, :tail, :size
    include Enumerable
    
    #   Initialization of the list
    def initialize()
        @size = 0
        @head = nil
        @tail = nil
    end
    
    # Defines the each method to make use of the Enumerable module
    def each
        actual = @head
        while actual != nil do
            yield actual
            actual = actual.nodo[:next_]
        end
    end
    
    # Inserts a node at the beginning of the list
    # @param [Object] nodo node to insert
    # @return nil
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
    
    # Inserts a node at the end of the list
    # @param nodo [Object] node to insert
    # @return nil
    def insert(nodo)
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
    
    # Deletes a node from the beginning of the list
    # @return nil
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
    
    # Deletes a node from the end of the list
    # @return nil
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
    