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
end
    