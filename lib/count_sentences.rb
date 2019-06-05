require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else false
    end
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    str_arr = self.split(/\.|\?|\!/)
    
    str_arr.reject(&:empty?).count
  end
end