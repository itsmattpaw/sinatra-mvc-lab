class PigLatinizer
    attr_accessor :result
    
    def initialize
    end
    def piglatinize(words)
      phrase = words.split(" ")
      arr = []
      phrase.each do |word|
        arr << word_piglatinize(word)
      end
      @translated = arr.join(" ").to_s
      @translated
    end
    def word_piglatinize(word)
        arr = word.split("")
        if arr.first.match?(/[^aeiouAEIOU]/)
            i = 0
            arr.each do |letter|
                if letter.match?(/[^aeiouAEIOU]/)
                    arr << letter
                    i += 1
                else
                    break
                end
            end
            until i == 0
                arr.delete_at(0)
                i-=1
            end
            if arr.last.match?(/[aeiouAEIOU]/)
                arr << "way"
            else  
                arr << "ay"
            end
        else  
            arr << "way"
        end
        @result = arr.join
    end
end