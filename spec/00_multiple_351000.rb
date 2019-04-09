require_relative '../lib/00_multiple_351000.rb'

describe "the only function" do

  it "takes a postive integer and sums all multiples of 3 or 5 below" do
    expect(get_sum_multiple(10)).to eq(23)
  end

  it "takes another postive integer and sums all multiples of 3 or 5 below" do
    expect(get_sum_multiple11)).to eq(33)
  end

  it "takes 0 and returns 0" do
    expect(get_sum_multiple(0)).to eq(0)
  end

  it "takes 3 and returns 0" do
    expect(get_sum_multiple(3)).to eq(0)
  end

  it "doesn't take string" do
    expect(get_sum_multiple("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

  it "doesn't take float" do
    expect(get_sum_multiple(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

  it "doesn't take negative" do
    expect(get_sum_multiple(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

end
'
