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
    @entries.keys.sort
  end

  def include?(word)
    if @entries.key?(word)
      true
    else
      false
    end
  end

  def find(word)
    @entries.select { |k, v| k.start_with?(word) }
  end

end
