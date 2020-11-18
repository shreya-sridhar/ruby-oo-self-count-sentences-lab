require 'pry'

class String

  def sentence?
    self[self.length-1]=="."
  end

  def question?
    self[self.length-1]=="?"
  end

  def exclamation?
    self[self.length-1]=="!"
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo..."