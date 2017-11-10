class Alimento
    include Comparable
    attr_reader :name, :proteins, :glucids, :lipids
    
    def <=>(another)
        if(another.caloric_value > @caloric_value)
            return -1
        else
            if(another.caloric_value < @caloric_value)
                return 1
            end
            if (another.proteins > @proteins)
                return -1
            else
                if(another.proteins < @proteins)
                    return 1
                end
                if(another.glucids > @glucids)
                    return -1
                else
                    if(another.glucids < @glucids)
                        return 1
                    end
                    if(another.lipids > @lipids)
                        return -1
                    else 
                        if(another.lipids < @lipids)
                            return 1
                        else return 0
                        end
                    end
                end
            end
        end
    end
    
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

class Verdura < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

class Fruta < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end
