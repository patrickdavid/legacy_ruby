require "legacy"
require "rspec"

describe("legacy") do
  it("takes the character 'A' and gives it the value of one") do
    expect(legacy({1=>['A']})).to(eq({'A'=>1}))
  end
end
