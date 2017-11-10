require "spec_helper"

# Node class' tests
RSpec.describe Node do
    # Initialization of the tests
    before(:all) do
       @node1 = Node.new(3)
    end
    
    # Tests if a node stores its value
    it "has a value" do
        expect(@node1.nodo[:value]).not_to be nil
    end
end

# List class' tests
RSpec.describe List do
    # Initialization of the tests
    before(:all) do
        @lista = List.new()
        @node1 = Node.new(3)
        @lista.push(@node1)
    end
    
    # Tests if the list pointers are not empty while the list has a node
    it "has a head and a tail" do
        expect(@lista.head).not_to be nil
        expect(@lista.tail).not_to be nil
    end
    
    # Tests if the nodes can be pushed at the end of the list
    it "can contain more than an element by pushing them" do
        @node2 = Node.new(2)
        @lista.push(@node2)
        expect(@lista.size >= 2).to be true
    end
    
    # Tests if the nodes can be pushed at the beginning of the list
    it "can insert data from the beginning" do
        @node3 = Node.new(7)
        @lista.insert(@node3)
        expect(@lista.head.nodo[:value]).to eq(7)
    end
    
    # Tests if the nodes can be erased from the end of the list
    it "eliminates data from the beginning" do
        @initialsize = @lista.size
        @lista.truncate()
        expect(@lista.size).to eq(@initialsize - 1)
    end
    
    # Tests if the nodes can be erased from the beginning of the list
    it "eliminates data from the end" do
       @initialsize = @lista.size
       @lista.pop()
       expect(@lista.size).to eq(@initialsize - 1)
    end
    
    # Tests if the list is enumerable
    it "is enumerable" do
        expect(@lista.all? {|dato| dato.nodo[:value] >= 0}).to be true
    end
end
    