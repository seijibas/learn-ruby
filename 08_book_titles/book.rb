class Book
  attr_reader :title

  def title=(new_title)
    title_array = []
    for word in new_title.split
      if word.eql?("in") || word.eql?("and") || word.eql?("the") || word.eql?("of") || word.eql?("a") || word.eql?("an")
        title_array.push(word)
      else
        title_array.push(word.capitalize)
      end
      title_array[0].capitalize!
    end
    @title = title_array.join(" ")
  end
end

