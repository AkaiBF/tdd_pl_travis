require "spec_helper"

RSpec.describe Nutrientes do
  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end
  
  describe Alimento do
    
    before(:all) do
      @cerdo = Alimento.new("cerdo", 12)
    end
        
    it "has a name" do
      expect(@cerdo.name).not_to be nil
    end
    
    it "has a proteins ammount" do
      expect(@cerdo.proteins).not_to be nil
    end
    
    it "has a glucids ammount" do
      expect(@cerdo.glucids).not_to be nil
    end
  end
end

