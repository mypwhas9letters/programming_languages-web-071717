 require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.map do |oofunc, lang|
    lang.map do |lang, type|
    new_hash[lang] =type
    end
  end
    new_hash.map do |x,y|
      languages.map do |oofunc, lang|
       lang.keys.each do |language|
         if x == language
           if new_hash[language][:style] == nil
           new_hash[language][:style] = [oofunc]
         else
          new_hash[language][:style].push(oofunc)
        end
      end
    end
      end
  end
  new_hash
end
