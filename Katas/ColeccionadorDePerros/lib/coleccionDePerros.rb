class ColeccionDePerros
	include Comparable

	def initialize
		@coleccion = []
	end

	def agregar(perro)
		@coleccion << perro
	end

	def ordenar
		@coleccion.sort! {|a, b| b <=> a} #Habia puesto a <=> b, devolviendome las listas al reves.
	end

	def mostrar
		@coleccion
	end

end
