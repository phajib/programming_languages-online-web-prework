def reformat_languages(languages)
  new_hash = {} 
  languages.each do |style, type|
    type.each do |prog_lang, attribute|
       if new_hash[prog_lang] == nil
          new_hash[prog_lang] = attribute
        end
        new_hash[prog_lang][:style] = []
        new_hash[prog_lang][:style] << style
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
