require "spec_helper"

RSpec.describe Glucosa do
    it "calculates the IG as a positive value" do
        expect(@sujeto1.get_IG > 0).to be true
    end
end