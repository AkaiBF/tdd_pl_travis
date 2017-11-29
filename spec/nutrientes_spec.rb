# Tests of alimento.rb for Lenguajes y Paradigmas de la Programación
# Universidad de La Laguna
#
# @author Ernesto Echeverría González
# @since 10-11-2017
# @email alu0100881622@ull.edu.es 

require "spec_helper"

RSpec.describe Nutrientes do
  it "has a version number" do
    expect(Nutrientes::VERSION).not_to be nil
  end
  
  # Alimento class' tests
  describe Alimento do
    # Initialization of the tests
    before(:all) do
      @cerdo = Alimento.new("cerdo", 12, 10, 9)
      @huevo = Alimento.new("huevo", 12, 2, 8)
      @res = Alimento.new("res", 30, 2, 12)
    end
    
    # Tests if the object can store a string name
    it "has a name" do
      expect(@cerdo.name).not_to be nil
    end
    
    # Tests if the object can store a number of proteins
    it "has a proteins ammount" do
      expect(@cerdo.proteins).not_to be nil
    end
    
    # Tests if the object can store a number of glucids
    it "has a glucids ammount" do
      expect(@cerdo.glucids).not_to be nil
    end
    
    # Tests if the object can store a number of lipids
    it "has a lipids ammount" do
      expect(@cerdo.lipids).not_to be nil
    end
    
    # Tests if the name can be shown
    it "shows its name" do
      expect(@cerdo.name).to eq("cerdo")
    end
    
    # Tests if the number of proteins can be shown
    it "shows its proteins ammount" do
      expect(@cerdo.proteins).to eq(12)
    end
    
    # Tests if the number of glucids can be shown
    it "shows its glucids ammount" do
      expect(@cerdo.glucids).to eq(10)
    end
    
    # Tests if the number of lipids can be shown
    it "shows its lipids ammount" do
      expect(@cerdo.lipids).to eq(9)
    end
    
    # Tests if the object can use a 'to string' method
    it "shows the data" do
      expect(@cerdo.to_s).to eq("cerdo, 12g proteins, 10g glucids, 9g lipids")
    end
    
    # Tests if the object calculates its caloric value properly
    it "shows the caloric value" do
      expect(@cerdo.caloric_value).to eq(169)
    end
    
    # Tests if the objects of the class are comparables
    it "is comparable" do
      expect(@cerdo > @huevo).to eq(true)
      expect(@cerdo == @cerdo).to eq(true)
      expect(@cerdo < @res).to eq(true)
      expect(@cerdo >= @huevo).to eq(true)
      expect(@cerdo >= @cerdo).to eq(true)
      expect(@cerdo <= @res).to eq(true)
      expect(@cerdo <= @cerdo).to eq(true)
    end
  end
  
  # OvoLacteo class' tests
  describe OvoLacteo do
    # Initialize the tests
    before(:all) do
      @ejemplo = OvoLacteo.new("Huevo frito", 14.1, 0.0, 19.5)
    end
    
    # Tests the instance's class
    it "has the correct class" do
      expect(@ejemplo.class).to eq(OvoLacteo)
    end
    # Tests the instance's superclass. It must be Alimento.
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    # Tests if the object is an instance of the class
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? OvoLacteo).to eq(true)
    end
  end
  
  # Carnido class' tests
  describe Carnido do
    before(:all) do
      @ejemplo = Carnido.new("Cerdo", 21.5, 0.0, 6.3)
    end
    
    # Tests the instance's class
    it "has the correct class" do
      expect(@ejemplo.class).to eq(Carnido)
    end
    # Tests the instance's superclass. It must be Alimento.
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    # Tests if the object is an instance of the class
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? Carnido).to eq(true)
    end
  end
  
  # Pescado class' tests
  describe Pescado do
    before(:all) do
      @ejemplo = Pescado.new("Bacalao", 17.7, 0.0, 0.4)
    end
    
    # Tests the instance's class
    it "has the correct class" do
      expect(@ejemplo.class).to eq(Pescado)
    end
    # Tests the instance's superclass. It must be Alimento.
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    # Tests if the object is an instance of the class
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? Pescado).to eq(true)
    end
  end
  
  # Grasa class' tests
  describe Graso do
    before(:all) do
      @ejemplo = Graso.new("Aceite de oliva", 0.0, 0.2, 99.6)
    end
    
    # Tests the instance's class
    it "has the correct class" do
      expect(@ejemplo.class).to eq(Graso)
    end
    # Tests the instance's superclass. It must be Alimento.
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    # Tests if the object is an instance of the class
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? Graso).to eq(true)
    end
  end
  
  # Carbohidratado class' tests
  describe Carbohidratado do
    before(:all) do
      @ejemplo = Carbohidratado.new("Azúcar", 0.0, 99.8, 0.0)
    end
    
    # Tests the instance's class
    it "has the correct class" do
      expect(@ejemplo.class).to eq(Carbohidratado)
    end
    # Tests the instance's superclass. It must be Alimento.
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    # Tests if the object is an instance of the class
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? Carbohidratado).to eq(true)
    end
  end
  
  # Verdura class' tests
  describe Verdura do
    before(:all) do
      @ejemplo = Verdura.new("Tomate", 1.0, 3.5, 0.2)
    end
    
    # Tests the instance's class
    it "has the correct class" do
      expect(@ejemplo.class).to eq(Verdura)
    end
    # Tests the instance's superclass. It must be Alimento.
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    # Tests if the object is an instance of the class
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? Verdura).to eq(true)
    end
  end
  
  # Fruta class' tests
  describe Fruta do
    before(:all) do
      @ejemplo = Fruta.new("Manzana", 0.3, 12.4, 0.4)
    end
    
    # Tests the instance's class
    it "has the correct class" do
      expect(@ejemplo.class).to eq(Fruta)
    end
    # Tests the instance's superclass. It must be Alimento.
    it "has the correct superclass" do
      expect(@ejemplo.class.superclass).to eq(Alimento)
    end
    # Tests if the object is an instance of the class
    it "is an instance of its class" do
      expect(@ejemplo.instance_of? Fruta).to eq(true)
    end
  end
  context "Métodos de orden" do
    before :each do
      @lista_prueba = 
      [OvoLacteo.new("Huevo frito", 14.1, 0.0, 19.5),
      OvoLacteo.new("Leche de vaca", 3.3, 4.8, 3.2),
      OvoLacteo.new("Yogurt", 3.8, 4.9, 3.8),
      Carnido.new("Cerdo", 21.5, 0.0, 6.3),
      Carnido.new("Ternera", 21.1, 0.0, 3.1),
      Carnido.new("Pollo", 20.6, 0.0, 5.6),
      Pescado.new("Bacalao", 17.7, 0.0, 0.4),
      Pescado.new("Atún", 21.5, 0.0, 15.5),
      Pescado.new("Salmón", 19.9, 0.0, 13.6),
      Graso.new("Aceite de oliva", 0.0, 0.2, 99.6),
      Graso.new("Mantequilla", 0.7, 0.0, 83.2),
      Graso.new("Chocolate", 5.3, 47.0, 30.0),
      Carbohidratado.new("Azúcar", 0.0, 99.8, 0.0),
      Carbohidratado.new("Arroz", 6.8, 77.7, 0.6),
      Carbohidratado.new("Lentejas", 23.5, 52.0, 1.4),
      Carbohidratado.new("Papas", 2.0, 15.4, 0.1),
      Verdura.new("Tomate", 1.0, 3.5, 0.2),
      Verdura.new("Cebolla", 1.3, 5.8, 0.3),
      Verdura.new("Calabaza", 1.1, 4.8, 0.1),
      Fruta.new("Manzana", 0.3, 12.4, 0.4),
      Fruta.new("Plátano", 1.2, 21.4, 0.2),
      Fruta.new("Pera", 0.5 ,12.7, 0.3)]
      
      def arraytos(array)
        output = ""
        array.each do |a|
          output += a.to_s + "\n"
        end
        return output
      end
      
      def sort_for(array)
        for i in 0..array.length
          for j in i+1..array.length - 1
            if array[i] > array[j]
              array[i] , array[j] = array[j] , array[i]
            end
          end
        end
        return array
      end
      
      def sort_each(array)
        array.each do
          finished = true
          array.each_with_index do |a, index|
            if index == array.length - 1 
              break
            end
            if a > array[index + 1]
              array[index], array[index + 1] = array[index + 1], array[index]
              finished = false
            end
          end
          if finished 
            break
          end
        end 
        return array
      end
      
    end
    
    it "Time testing"do
      Benchmark.bmbm do |a| 
        arraytos(@lista_prueba)
         a.report("Método sort\n")  { @lista_prueba.dup.sort }
         #puts @list.dup.sort
         a.report("Método for\n") { sort_for(@lista_prueba.dup)}
         a.report("Método each\n") { sort_each(@lista_prueba.dup)}
      end
    end
    
    
  end
end

