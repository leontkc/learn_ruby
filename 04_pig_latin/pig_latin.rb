def translate(string)
  alphabet = ('a'..'z').to_a
  vowel = ["a","e","i","o","u"]
  consonant = (alphabet - vowel)

  input_array = string.split(//)


if vowel.include? string[0]
  return string + "ay"
end

return_input = []
while consonant.include? input_array[0]
  return_input << input_array[0]
  input_array.delete_at(0)
end
return input_array.join + return_input.join + "ay"
end
