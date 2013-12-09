class WordTracker

  def initialize(words)
    @words = words.downcase
  end

  def frequency
    word_list = @words.split(" ")
    count = word_list.group_by {|i| i}.map{|key, value| [key, value.count]}
    Hash[*count.flatten]
  end

end