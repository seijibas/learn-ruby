def echo(msg)
  msg
end

def shout(msg)
  msg.upcase
end

def repeat(msg,times=2)
  (msg+" ")*(times-1) + msg
end

def start_of_word(msg,letters=1)
  msg[0..(letters-1)]
end

def first_word(msg)
  msg.split[0]
end

def titleize(msg)
  ar = msg.split
  for word in ar
    if (word != "and" && word != "over" && word != "the")
      word.capitalize!
    end
    ar[0].capitalize!
  end
  ar.join(" ")
  
end
