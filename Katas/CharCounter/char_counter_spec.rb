class CharCounter

	def self.count(palabra)
		hash = {}
		if(palabra != nil)
			palabra.each_char{|char|
				hash[char] = palabra.count(char)}
		end
		hash
	end

end
