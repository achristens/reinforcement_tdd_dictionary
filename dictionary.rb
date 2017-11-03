class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(new_term)
    hash = new_term
    if hash.class == String
      hash = {}
      hash[new_term] = nil
    end
    @entries.merge!(hash)
  end

  def keywords
    @entries.keys
  end

  def include?(word)
    if @entries.key?(word)
      true
    else
      false
    end
  end

  def find(word)
    @entries.keys.any? { |k| k.include? word }
  end
  
end
