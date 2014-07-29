def legacy(hash)
    new_hash = {}
    hash.each do |key,value|
      new_hash = {value[0] => key}
    end
    puts new_hash
    new_hash
  end
