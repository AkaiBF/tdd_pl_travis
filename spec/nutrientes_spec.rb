require "spec_helper"

RSpec.describe Nutrientes do
  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end
  
  describe Alimento do
    
    before(:all) do
      @cerdo = Alimento.new("cerdo", 12, 10, 9)
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
    
    it "has a lipids ammount" do
      expect(@cerdo.lipids).not_to be nil
    end
    
    it "shows its name" do
      expect(@cerdo.name).to eq("cerdo")
    end
    
    it "shows its proteins ammount" do
      expect(@cerdo.proteins).to eq(12)
    end
    
    it "shows its glucids ammount" do
      expect(@cerdo.glucids).to eq(10)
    end
    
    it "shows its lipids ammount" do
      expect(@cerdo.lipids).to eq(9)
    end
    
    it "shows the data" do
      expect(@cerdo.to_s).to eq("cerdo, 12g proteins, 10g glucids, 9g lipids")
    end
    
    it "shows the caloric value" do
      expect(@cerdo.caloric_value).to eq(169)
    end
  end
  
  describe OvoLacteo do
    before(:all) do
      @ejemplo = OvoLacteo.new("Huevo frito", 14.1, 0.0, 19.5)
    end
    
    it "has the correct class" do
      expect(@ejemplo.class).to eq(OvoLacteo)
    end
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? OvoLacteo).to eq(true)
    end
  end
  
end

