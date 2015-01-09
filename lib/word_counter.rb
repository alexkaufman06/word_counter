class String
  define_method(:word_counter) do |argument|
    answer = 0
    words = self.split(" ")
    words.each() do |object|
      if object.eql?(argument) == false
        answer.+(0)
      else object.eql?(argument) == true
        answer = answer.+(1)
      end
    end
    answer
  end
end
