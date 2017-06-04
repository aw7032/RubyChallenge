module RomanNumeralConverter
  
=begin
    Given the digitNum (i.e. for 10, 1 is digit two), return
    the characters used to represent digits in that number range
=end
  
  def getCharSet(digitNum)
    
    charSet = String.new("");
    
    case digitNum
    when 1
      charSet = "IVX"
    when 2
      charSet = "XLC"
    when 3
      charSet = "CDM"
    else
      charSet = "ERROR - Please enter integer 1-3"
      
    return charSet
  
    end
  end
  
=begin
  Convert a digit to its corresponding roman numeral
=end
  
  def convertDigit(digitVal, charSet)
  
    digitStr = String.new("");
    
    case digitVal
    when 1 .. 3
       digitStr = charSet[0] * digitVal
    when 4
       digitStr = charSet[0..1]
    when 5.. 8
       digitStr = charSet[1] + charSet[0] * (digitVal-5)
    when 9
       digitStr = charSet[0] + charSet[2]
    else
       digitStr = "ERROR in convertDigit"
    end
    
    return digitStr
  end
  
=begin
  Convert integer to roman numeral and return string result
=end

  def convertToRomNum(intVal)
    
    numeralStr = String.new("");
    
=begin
  Convert every thousand one "M" character. This converts everything from
  4th digit on to its corresponding roman numeral.
=end
    
    numeralStr += "M" * (intVal/1000)
    intVal = intVal % 1000
    
    
    if intVal >= 100
      charStr = getCharSet 3
      numeralStr += convertDigit(intVal/100, charStr)
      intVal = intVal % 100
    end
      
    
    if intVal >= 10
      charStr = getCharSet 2
      numeralStr += convertDigit(intVal/10, charStr)
      intVal = intVal % 10
    end
    
    
    if intVal >= 1
      charStr = getCharSet 1
      numeralStr += convertDigit(intVal, charStr)
    end
    
    return numeralStr;
  end

end