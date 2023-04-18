require './lib/caesar-cipher'

describe "#caesar_cipher" do
  it "returns a basic cipher with the given shift" do
    expect(caesar_cipher("this is the string", 5)).to eql("ymnx nx ymj xywnsl")
  end

  it "wraps from z to a" do
    expect(caesar_cipher("wxyz", 5)).to eql("bcde")
  end
end