def reformat_languages(languages)
  new_hash = {} #build a new hash
  languages.each do |style, type| #style: oo, functional. data: hash
    type.each do |prog_lang, attribute| #lang_name: ruby, etc. describe: hash
       #set lang_name to be the key on top level
       #the value will be the hash(type=>...)
       if new_hash[prog_lang] == nil
          new_hash[prog_lang] = attribute
        end
          #set style key empty so we can add the style later
          new_hash[prog_lang][:style] = []
        #end
        #add style to new_hash
        #if the same lang_name, it will go straight here and add style
        new_hash[prog_lang][:style] << style
    end
  end
  new_hash
end
