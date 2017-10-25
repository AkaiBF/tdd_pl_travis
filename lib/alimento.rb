class Alimento
    attr_reader :name, :proteins, :glucids, :lipids
   def initialize (name, proteins, glucids, lipids)
       @name = name
       @proteins = proteins
       @glucids = glucids
       @lipids = lipids
   end
end