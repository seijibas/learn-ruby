def translate(words)
  ar = []
  for word in words.split do
  ar.push(translateAWord(word))
  end
  ar.join(" ")
end

def translateAWord(word)
  if word.start_with?("a","e","i","o","u")
    word + "ay"
  elsif word[1,2].eql?("qu")
    word.delete(word[0,3]) + word[0,3] + "ay"
  elsif word.start_with?("qu")
    word.delete(word[0,2]) + word[0,2] + "ay"
  elsif !word[1].start_with?("a","e","i","o","u") && !word[2].start_with?("a","e","i","o","u")
    word.delete(word[0,3]) + word[0,3] + "ay"
  elsif !word[1].start_with?("a","e","i","o","u")
    word.delete(word[0,2]) + word[0,2] + "ay"
  else
    word.delete(word.chr) + word.chr + "ay"
  end
end
