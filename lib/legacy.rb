def legacy(hash)
    new_hash = Hash.new
    hash.each do |key,value|
      value.each do |element|
        new_hash[element] = key
      end
    end
    new_hash
  end
