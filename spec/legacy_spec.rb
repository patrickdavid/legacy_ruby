require ("legacy")
require ("rspec")

describe("legacy") do
  it("takes the character 'A' and gives it the value of one") do
    expect(legacy({1=>['A']})).to(eq({'A'=>1}))
  end
  it("takes the character 'A', 'E', 'I' and gives it the value of one") do
    expect(legacy({1=>['A', 'E', 'I']})).to(eq({'A'=>1, 'E'=>1, 'I'=>1}))
  end
  it("takes the characters 'A', 'E', 'I' and gives it the value of one. Takes the characters 'D' and 'G' and gives it a value of two.") do
    expect(legacy({1=>['A', 'E', 'I'],2=>['D', 'G']})).to(eq({'A'=>1, 'E'=>1, 'I'=>1, 'D'=>2, 'G'=>2}))
  end
  it("takes the whole hash and converts into the new hash") do
    expect(legacy({ 1  => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2  => ["D", "G"],
  3  => ["B", "C", "M", "P"],
  4  => ["F", "H", "V", "W", "Y"],
  5  => ["K"],
  8  => ["J", "X"],
  10 => ["Q", "Z"]
})).to(eq({ "A" => 1, "B" => 3,  "C" => 3, "D" => 2, "E" => 1,
  "F" => 4, "G" => 2,  "H" => 4, "I" => 1, "J" => 8,
  "K" => 5, "L" => 1,  "M" => 3, "N" => 1, "O" => 1,
  "P" => 3, "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
  "U" => 1, "V" => 4,  "W" => 4, "X" => 8, "Y" => 4,
  "Z" => 10
}))
  end
end
