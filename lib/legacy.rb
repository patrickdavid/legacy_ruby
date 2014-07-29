def legacy(hash)
    new_hash = Hash.new
    hash.each do |key,value|
      value.each do |element|
        puts new_hash
        puts new_hash[element] = key
      end
    end
    puts new_hash
    new_hash
  end

legacy({1=>['A', 'E', 'I']})
