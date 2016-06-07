def echo(a)
  "#{a}"
end

def shout(a)
  a.upcase
end

def repeat(string, num = 2)
  array = []
  num.times do
    array << string
  end
  array.join(" ")
end

def start_of_word(string,i)
  p string.split(//).first(i).join()
end

def first_word(string)
  string.split(" ").first(1).join()
end

def titleize(string)
  puncs = ["and", "over", "the"]

  new_string = string.split(" ")
  upcase_string = new_string.each{|i| i.capitalize!}

  upcase_string.map! do |x|
    if puncs.include? x.downcase
      x.downcase
    else
      x
    end
  end
  upcase_string[0] = upcase_string[0].capitalize
  upcase_string.join(" ")
end
