def reformat_languages (languages)
  new_hash={}

  languages.each do |style, language_info|
    language_info.each do |languages, info|
      new_hash[languages]=info
    end
  end

  languages[:oo].each do |languages, info|
    new_hash[languages][:style] = []
    new_hash[languages][:style].push(:oo)
  end

  languages[:functional].each do |languages, info|
    if (new_hash[languages][:style].class==Array)
    new_hash[languages][:style].push(:functional)
    else
    new_hash[languages][:style] = []
    new_hash[languages][:style].push(:functional)
    end
  end


  new_hash
end