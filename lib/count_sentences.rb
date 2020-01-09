require 'pry'

class String
  
  attr_accessor = :sentence
  attr_reader = :sentence
 
  def sentence?
    self.split("")[-1] == "."  
  end
  
  def question?
    self.split("")[-1] == "?"    
  end

  def exclamation?
    self.split("")[-1] == "!"  
  end
    
  def count_sentences
    delimiters = ['.', "!"]

    self.split(Regexp.union(delimiters)).count
  end
end