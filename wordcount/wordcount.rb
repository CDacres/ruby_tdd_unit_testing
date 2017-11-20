class Wordcount

  def split_into_words(sentence)
    sentence.gsub(',','').gsub(';','').gsub('.','').gsub('?','').gsub('!','').downcase.split(' ')
  end

  def count_words(sentence)
    words = {}
    split_into_words(sentence).each do |i|
      if (words.key?(i))
        words[i] += 1
      else
        words[i] = 1
      end
    end
    words
  end

  def show_word_count(sentence)
    count_words(sentence).each do |i, j|
      puts "#{i} #{j}"
    end
  end

end

test = Wordcount.new
test.show_word_count("This is a wordcount function written in Ruby. Ruby is a little more user friendly than PHP!")
