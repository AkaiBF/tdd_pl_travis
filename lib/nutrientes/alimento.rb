# Alimento class that stores different kinds of food for Lenguajes y Paradigmas de la Programación
# Universidad de La Laguna
#
# @author Ernesto Echeverría González
# @since 10-11-2017
# @email alu0100881622@ull.edu.es 
# @version 1.2.0

# Class Alimento
# Stores a food and some values of its elements.
class Alimento
    include Comparable
    attr_reader :name, :proteins, :glucids, :lipids
    
    # @!method <=>(another)
    #   Method to implement the comparison between two Alimentos
    #   @param another Object to compare with
    #   @return 1 if the first object is bigger, 0 if equal and -1 if minor
    def <=>(another)
        if(another.caloric_value > caloric_value)
            return -1
        else
            if(another.caloric_value < caloric_value)
                return 1
            end
            if (another.proteins > proteins)
                return -1
            else
                if(another.proteins < proteins)
                    return 1
                end
                if(another.glucids > glucids)
                    return -1
                else
                    if(another.glucids < glucids)
                        return 1
                    end
                    if(another.lipids > lipids)
                        return -1
                    else 
                        if(another.lipids < lipids)
                            return 1
                        else return 0
                        end
                    end
                end
            end
        end
    end
    
    # @!method initialize (name, proteins, glucids, lipids)
    #   Initialization of the object given its attributes
    #   @param name Name of the Alimento
    #   @param proteins Proteins ammount of the Alimento
    #   @param glucids Glucids ammount of the Alimento
    #   @param lipids Lipids ammount of the Alimento
    def initialize (name, proteins, glucids, lipids)
       @name = name
       @proteins = proteins
       @glucids = glucids
       @lipids = lipids
    end
    
    # @!method to_s()
    #   Method to transform an object of Alimento to a string
    #   @return the object as a string
    def to_s() 
       return String.new(@name + ", " + @proteins.to_s + "g proteins, " + @glucids.to_s + "g glucids, " + @lipids.to_s + "g lipids")
    end
   
    # @!method caloric_value()
    #   Calculates the caloric value of the Alimento
    #   @return The caloric value
    def caloric_value()
       return (@proteins * 4 + @lipids * 9 + @glucids * 4)
    end
   
end

# Class OvoLacteo
# Defines an Alimento (or food) derived from milk or eggs
class OvoLacteo < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

# Class Carnido
# Defines meat and derivates
class Carnido < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

# Class Pescado
# Defines Fish and Shelfish
class Pescado < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

# Class Graso
# Defines a food with high fat content
class Graso < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

# Class Carbohidratado
# Defines food mainly componed by carbohydrates
class Carbohidratado < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

# Class Verdura
# Defines vegetables
class Verdura < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end

# Class Fruta
# Defines fruits
class Fruta < Alimento
    def initialize(name, proteins, glucids, lipids)
        super(name, proteins, glucids, lipids)
    end
end
