require "spec_helper"

RSpect.describe Node do
    before(:all) do
       @Node1 = new Node(3)
    end
    
    it "has a value" do
        expect(@Node1.value).not_to be nil
    end
end