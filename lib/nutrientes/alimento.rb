class Alimento
    attr_reader :name, :proteins, :glucids, :lipids
   def initialize (name, proteins, glucids, lipids)
       @name = name
       @proteins = proteins
       @glucids = glucids
       @lipids = lipids
   end
   
   def to_s() 
       return String.new(@name + ", " + @proteins.to_s + "g proteins, " + @glucids.to_s + "g glucids, " + @lipids.to_s + "g lipids")
   end
   
   def caloric_value()
       return (@proteins * 4 + @lipids * 9 + @glucids * 4)
   end
   
end

class OvoLacteo < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

class Carnido < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

class Pescado < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

class Graso < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

class Carbohidratado < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end
