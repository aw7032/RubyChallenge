$LOAD_PATH << '.'

require 'roman_numeral_converter.rb'
include RomanNumeralConverter


puts "Roman Numeral Converter  "
puts "--------------------------------"


print "Enter an integer to convert: "
intVal = gets.to_i

numeralStr = convertToRomNum(intVal)

puts "--------------------------------"
print intVal.to_s + " converted to roman numeral " + numeralStr
  
  
