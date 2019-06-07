require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).count
    # captures all characters that are not ., ! or ? till we get characters that are ., ! or ?. Which basically can be treated as a sentence.
    #’+’ returns matches between 1 and unlimited times (capturing sentences and ignoring repetitions like ...)

    #binding.pry

  end
end
