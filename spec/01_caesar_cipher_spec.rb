require_relative '../lib/01_caesar_cipher'


describe "character treatment method" do

  it "takes a punctuation and returns the same" do
    expect(char_treatment("!",3)).to eq("!")
  end

  it "takes a capital letter and returns a displaced capital letter" do
    expect(char_treatment("A",3)).to eq("D")
  end

  it "takes a letter close to the end of alphabet and goes back to A and further" do
    expect(char_treatment("y",3)).to eq("b")
  end

  it "even if the key is really large, the 'décalage' only happens with in letter range" do
    expect(char_treatment("z",26*26+1)).to eq("a")
  end


end


describe "the overall translation method" do

  it "doesn't take string as key" do
    expect(caesar_cipher("hell", "trois")).to eq("Please enter first your lettered-string and then your positive integer key.")
  end

  it "doesn't translate number" do
    expect(caesar_cipher(3.5, 3)).to eq("Please enter first your lettered-string and then your positive integer key.")
  end

  it "doesn't take french accents" do
    expect(caesar_cipher("ça alors", 3)).to eq("Can't take special character...")
  end

  it "takes a letter and number string, translates and keep the cap and punct" do
    expect(caesar_cipher("Hell! Watch where you are going!!!", 3)).to eq("Khoo! Zdwfk zkhuh brx duh jrlqj!!!")
  end

end
