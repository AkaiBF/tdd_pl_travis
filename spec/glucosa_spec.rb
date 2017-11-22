require "spec_helper"

RSpec.describe Experimento do
    before(:all) do
        alimento = Alimento.new("Fruta", 1.3, 2.4, 1.0)
        medida1 = [6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3, 6.2, 6.1, 5.9, 5.8, 6.1, 6.7, 6.7, 6.6, 6.7, 6.9, 7.2, 7.1]
        glucosa1 = [4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1]
        @sujeto1 = Experimento.new(alimento, medida1, glucosa1)
    end
    it "calculates the IG as a positive value" do
        expect(@sujeto1.get_IG > 0).to be true
    end
end