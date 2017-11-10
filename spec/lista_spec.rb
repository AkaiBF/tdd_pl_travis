require "spec_helper"

RSpec.describe Node do
    before(:all) do
       @node1 = Node.new(3)
    end
    
    it "has a value" do
        expect(@node1.nodo[:value]).not_to be nil
    end
end

RSpec.describe List do
    before(:all) do
        @lista = List.new()
        @node1 = Node.new(3)
        @lista.push(@node1)
    end
    
    it "has a head and a tail" do
        expect(@lista.head).not_to be nil
        expect(@lista.tail).not_to be nil
    end
    
    it "can contain more than an element by pushing them" do
        @node2 = Node.new(2)
        @lista.push(@node2)
        expect(@lista.size >= 2).to be true
    end
    
    it "can insert data from the beginning" do
        @node3 = Node.new(7)
        @lista.insert(@node3)
        expect(@lista.head.nodo[:value]).to eq(7)
    end
    
    it "eliminates data from the beginning" do
        @initialsize = @lista.size
        @lista.truncate()
        expect(@lista.size).to eq(@initialsize - 1)
    end
    
    it "eliminates data from the end" do
       @initialsize = @lista.size
       @lista.pop()
       expect(@lista.size).to eq(@initialsize - 1)
    end
    
    it "is enumerable" do
        expect(@lista.all? {|dato| dato >= 0}).to be true
    end
end
    