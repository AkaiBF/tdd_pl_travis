class Alimento
    attr_reader :name, :proteins, :glucids, :lipids
   def initialize (name, proteins, glucids, lipids)
       @name = name
       @proteins = proteins
       @glucids = glucids
       @lipids = lipids
   end
   
   def to_s() 
       return String.new(@name + ", " + @proteins + "g proteins, " + @glucids + "g glucids, " + @lipids + "g lipids")
   end
   
end