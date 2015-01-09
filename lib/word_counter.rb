class String
  define_method(:word_counter) do |argument|
    answer = 0
    words = split(" ")
    words.each() do |object|
      if object.downcase().chomp("!").chomp(".").chomp(",").chomp("?").eql?(argument.downcase()) == false
        answer.+(0)
      else object.downcase().eql?(argument.downcase()) == true
        answer = answer.+(1)
      end
    end
    answer
  end
end
