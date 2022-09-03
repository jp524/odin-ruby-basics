require './caesar-cipher'

cc = CaesarCipher.new

describe CaesarCipher do
  it "returns a cipher if text is all uppercase" do
    expect(cc.caesar_cipher('ABCD', 2)).to eql('CDEF')
  end

  it "returns a cipher if text is mixed uppercase and lowercase" do
    expect(cc.caesar_cipher('ABcdEF', 2)).to eql('CDefGH')
  end

  it "returns the same string if no letters are present" do
    expect(cc.caesar_cipher('  %^@ /!', 2)).to eql('  %^@ /!')
  end

  it "returns a cipher if the letters are close to the end of the alphabet" do
    expect(cc.caesar_cipher('ZbY', 10)).to eql('JlI')
  end
end