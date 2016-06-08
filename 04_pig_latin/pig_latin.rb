def translate(string)
  vowel = ["a","e","i","o","u"]

  words = string.split

  words.map do |word|
  input_array = word.split("")
  until vowel.include? input_array[0]
    if input_array[0] == "q" && input_array[1] == "u"
      input_array.rotate!(2)
    elsif !vowel.include? input_array[0]
      input_array.rotate!(1)
    end
  end
  input_array << "ay"
  input_array.join
end.join(" ")
end

# puts translate("school")
