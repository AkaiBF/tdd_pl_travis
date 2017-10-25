require "spec_helper"

RSpec.describe Nutrientes do
  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end
  
  describe Alimento do
    it "has a name" do
      @cerdo = Alimento.new("cerdo")
      expect(@cerdo.name).not_to be nil
    end
  end
end
