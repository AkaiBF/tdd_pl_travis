# Experimento class that calculates the glucemic index for Lenguajes y Paradigmas de la Programación
# Universidad de La Laguna
#
# @author Ernesto Echeverría González
# @since 22-11-2017
# @email alu0100881622@ull.edu.es 
# @version 1.0.0

# Class Experimento
# Calculates the glucemic value of a food
class Experimento
    
    # Initialization of the object given its attributes
    # @param alimento [Object] Test target
    # @param medidas [Array] Measures from a subject
    # @param glucosa [Array] Measures of glucose
    def initialize(alimento, medidas, glucosa)
        @alimento = alimento
        @medidas = medidas
        @glucosa = glucosa
    end
    
    # Calculates the AIBC recursively
    # @param i [FixNum] Index of the current element
    # @return [FixNum] AIBC
    def get_AIBC(i)
        @@tam = @medidas.length
        if i >= @@tam
            return 0
        else
            return (((@medidas[i] - @medidas[0]) + (@medidas[i - 1] - @medidas[0])) / 24) + get_AIBC(i + 1)
        end
    end
    
    # Calculates the Glucemic index
    # @return [FixNum] Glucemic index
    def get_IG()
        return (get_AIBC(1) / Experimento.new(nil, @glucosa, @glucosa).get_AIBC(1)) * 100
    end
end