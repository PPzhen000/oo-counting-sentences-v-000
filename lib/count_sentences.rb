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
    array = self.split(" ")
    counter = 0
      array.each do |x|
        if x.sentence? || x.question? || x.exclamation? && x.length > 1
          counter += 1
        end
      end
    counter
  end



end
