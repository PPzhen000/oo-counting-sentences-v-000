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
    array = self.split(/\W+/)
    binding.pry 
    counter = 0
    while counter <= array.length
      array.each do |x|
        if sentence?(x) || question?(x) || exclamation?(x) && x.length > 1
          counter += 1
        end
      end

      counter 
    end
end
