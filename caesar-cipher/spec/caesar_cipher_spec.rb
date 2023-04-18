require './lib/caesar-cipher'

describe "#caesar_cipher" do
  it "returns a basic cipher with the given shift" do
    expect(caesar_cipher("this is the string", 5)).to eql("ymnx nx ymj xywnsl")
  end
end