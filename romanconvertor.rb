def fromRoman(romanNumber)

    roman_numerals = {
        1000 => "M",
         900 => "CM",
         500 => "D",
         400 => "CD",
         100 => "C",
          90 => "XC",
          50 => "L",
          40 => "XL",
          10 => "X",
           9 => "IX",
           5 => "V",
           4 => "IV",
           1 => "I",
    }
if romanNumber != roman_numerals
    raise TypeError
end
 
finalNumber = 0
i = 0
while i < romanNumber.length
    if i + 1 < romanNumber.length && roman_numerals[romanNumber[i]] < roman_numerals[romanNumber[i + 1]]
        finalNumber += roman_numerals[romanNumber[i + 1]] - hash[romanNumber[i]]
        i += 1
    else
        finalNumber += roman_numerals[romanNumber[i]]
    end
    i += 1
end
finalNumber
end

def toRoman(arabicNumber)
    raise RangeError unless arabicNumber >= 1 && arabicNumber <= 3999

    roman_numerals = {
        1000 => "M",
         900 => "CM",
         500 => "D",
         400 => "CD",
         100 => "C",
          90 => "XC",
          50 => "L",
          40 => "XL",
          10 => "X",
           9 => "IX",
           5 => "V",
           4 => "IV",
           1 => "I",
    }
    roman = ''
    roman_numerals.each do |(letter, key)|
        roman << key * (arabicNumber/letter)
        arabicNumber = arabicNumber % letter
    end
    return roman
  end