require "spec_helper"

RSpec.describe Node do
    before(:all) do
       @Node1 = Node.new(3)
    end
    
    it "has a value" do
        expect(@Node1.nodo[:value]).not_to be nil
    end
end