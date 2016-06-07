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
  ignore = ["and", "over", "the"]

  new_string = string.split(" ")
  new_string.map! do |x|
    if ignore.include? x.downcase
      x.downcase
    else
      x.capitalize
    end
  end
  new_string[0] = new_string[0].capitalize
  new_string.join(" ")
end
