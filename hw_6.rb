str_ch = gets

#The first set of gsubs is case sensitive for F, second is the same at end of word with s

str_ch.gsub!(/\AF/, 'Gh')
str_ch.gsub!(/\Af/, 'gh')
str_ch.gsub!(/\sF/, ' Gh')
str_ch.gsub!(/\sf/, ' gh')
str_ch.gsub!(/SH\s/, 'TI ')
str_ch.gsub!(/Sh\s/, 'Ti ')
str_ch.gsub!(/sH\s/, 'tI ')
str_ch.gsub!(/sh\s/, 'ti ')

#This loop is to preserve the position and case of i 

while str_ch.match?(/\wi\w|\wI\w/) != false
	if str_ch.match?(/\wi\w/) == true
		pos = str_ch.index(/\wi\w/) + 1
		str_ch[pos] = 'o'
	end
	if str_ch.match?(/\wI\w/) == true
		pos = str_ch.index(/\wI\w/) + 1
		str_ch[pos] = 'O'
	end
end
puts str_ch
