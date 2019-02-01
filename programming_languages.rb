def reformat_languages(languages)
  new_hash = {} #build a new hash
  languages.each do |style, type| #style: oo, functional. data: hash
    type.each do |lang_name, describe| #lang_name: ruby, etc. describe: hash
       #set lang_name to be the key on top level
       #the value will be the hash(type=>...)
       if new_hash[lang_name] == nil
          new_hash[lang_name] = describe
          #set style key empty so we can add the style later
          new_hash[lang_name][:style] = []
        end
        #add style to new_hash
        #if the same lang_name, it will go straight here and add style
        new_hash[lang_name][:style] << style
    end
  end
  new_hash
end
