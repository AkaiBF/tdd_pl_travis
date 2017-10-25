class Alimento
    attr_reader :name, :proteins, :glucids
   def initialize (name, proteins, glucids)
       @name = name
       @proteins = proteins
       @glucids = glucids
   end
end