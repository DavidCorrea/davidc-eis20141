require 'rspec'
require_relative '../lib/perro.rb'
require_relative '../lib/coleccionDePerros.rb'

describe 'Perro' do

	before :each do
		blanco = Color.new('blanco',4)
		negro = Color.new('negro',3)
		marron = Color.new('marron',2)
		gris = Color.new('gris',1)
		@perro3 = Perro.new(50, 50, marron)
		@perro1 = Perro.new(50, 40, blanco)
		@perro4 = Perro.new(50, 40, blanco)
		@perro5 = Perro.new(50, 40, negro)
		@perro6 = Perro.new(50, 40, marron)
		@perro7 = Perro.new(50, 40, gris)
		@perro2 = Perro.new(40, 30, negro)
		
		
	end

	it 'Deberia devolver 50 cuando le preguntamos su edad' do
                @perro1.edad.should == 50
	end	

	it 'Deberia devolver 40 cuando le preguntamos su peso' do
		@perro1.peso.should == 40
	end

	it 'Deberia devolver "blanco" cuando le preguntamos su color' do
		@perro1.color.nombre.should == 'blanco'
	end

	it 'Deberia devolver true cuando perro1 es mas grande que perro2' do
		@perro1.esMasGrandeQue(@perro2).should == true
	end

	it 'Deberia devolver false cuando perro2 es mas grande que perro1' do
		@perro2.esMasGrandeQue(@perro1).should == false
	end

	it 'Deberia devolver true cuando perro1 es mas pesado que perro2' do
		@perro1.esMasPesadoQue(@perro2).should == true
	end

	it 'Deberia devolver false cuando perro2 es mas pesado que perro1' do
		@perro2.esMasPesadoQue(@perro1).should == false
	end

	it 'Deberia devolver true cuando el color de perro1 es mas importante que el color de perro2' do
		@perro1.colorMasImportanteQue(@perro2.color).should == true
	end

	it 'Deberia devoler false cuando el color de perro2 es mas importante que el color de perro1' do
		@perro2.colorMasImportanteQue(@perro1.color).should == false
	end

	it 'Dada una coleccion, le damos perros y al ordenarlos, nos deberia dar una coleccion igual a la propuesta' do
		arrayResultante = [@perro1, @perro2]
		coleccionDePerros = ColeccionDePerros.new
		coleccionDePerros.agregar(@perro1)
		coleccionDePerros.agregar(@perro2)
		coleccionDePerros.ordenar
		coleccionDePerros.mostrar.should == arrayResultante
	end

	it 'Dada una coleccion, le damos perros de misma edad y al ordenarlos, nos deberia dar una coleccion igual a la propuesta' do
		arrayResultante = [@perro3, @perro1, @perro2]
		coleccionDePerros = ColeccionDePerros.new
		coleccionDePerros.agregar(@perro1)
		coleccionDePerros.agregar(@perro2)
		coleccionDePerros.agregar(@perro3)
		coleccionDePerros.ordenar
		coleccionDePerros.mostrar.should == arrayResultante
	end

	it 'Dada una coleccion, le damos perros de misma edad y al ordenarlos, nos deberia dar una coleccion igual a la propuesta' do
		arrayResultante = [@perro3, @perro1, @perro5, @perro6, @perro7, @perro2]
		coleccionDePerros = ColeccionDePerros.new
		coleccionDePerros.agregar(@perro1)
		coleccionDePerros.agregar(@perro2)
		coleccionDePerros.agregar(@perro3)
		coleccionDePerros.agregar(@perro5)
		coleccionDePerros.agregar(@perro6)
		coleccionDePerros.agregar(@perro7)	
		coleccionDePerros.ordenar
		coleccionDePerros.mostrar.should == arrayResultante
	end

end
