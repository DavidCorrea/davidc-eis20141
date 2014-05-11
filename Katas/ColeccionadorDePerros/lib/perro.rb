require_relative '../lib/color.rb'

class Perro
	include Comparable

	attr_accessor :edad, :peso, :color

	def initialize(edad, peso, color)
		@edad = edad
		@peso = peso
		@color = color
	end

	def esMasGrandeQue(perro)
		@edad > perro.edad
	end

	def esMasPesadoQue(perro)
		@peso > perro.peso
	end

	def colorMasImportanteQue(color)
		@color.importancia > color.importancia
	end

	def color
		@color
	end

	def <=> (perro)
	#Me habia olvidado de poner los casos que devolvian si el parametro era mas grande que self.
		if(self.esMasGrandeQue(perro))
			+1
		elsif (perro.esMasGrandeQue(self))
			-1
		elsif (self.esMasPesadoQue(perro))
			+1
		elsif (perro.esMasPesadoQue(self))
			-1
		elsif (self.colorMasImportanteQue(perro.color))
			+1
		elsif (perro.colorMasImportanteQue(self.color))
			-1
		else
			0
		end
	end

end
