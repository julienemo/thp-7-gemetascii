require_relative '../lib/01_caesar_cipher'

describe "character treatment method" do

  it "takes punct and does nothing" do
    expect(char_treatment("1", 3)).to eq("!")
  end

  it "takes a capital letter, moves it to key postitions and returns a capital letter" do
    expect(char_treatment("A", 3)).to eq("D")
  end

  it "takes a letter close to the end of alphabet, moves it to key postitions. And if it goes too far, restart from a" do
    expect(char_treatment("z", 3)).to eq("c")
  end

end


describe "string tranlsation method" do

  it "translates a whole string to specified position without modifying the non-letter equivalents" do
    expect(char_treatment("Oh hell! Watch where you are GOING!!", 3)).to eq("Rk khoo! Zdwfk zkeue brx duh JRLQJ!!")
  end

  it "doesn't take french accents" do
    expect(char_treatment("Ça alors!", 3)).to eq("Can't take special character...")
  end


end
