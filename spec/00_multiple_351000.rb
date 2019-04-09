require_relative '../lib/00_multiple_351000'

describe "the only function" do

  it "takes a postive integer and sums all multiples of 3 or 5 below" do
    expect(sum_mul_3_or_5_to_1000(10)).to eq(23)
  end

  it "takes another postive integer and sums all multiples of 3 or 5 below" do
    expect(sum_mul_3_or_5_to_1000(11)).to eq(33)
  end

  it "takes 0 and returns 0" do
    expect(sum_mul_3_or_5_to_1000(0)).to eq(0)
  end

  it "takes 3 and returns 0" do
    expect(sum_mul_3_or_5_to_1000(3)).to eq(0)
  end

  it "doesn't take string" do
    expect(sum_mul_3_or_5_to_1000("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

  it "doesn't take float" do
    expect(sum_mul_3_or_5_to_1000(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

  it "doesn't take negative" do
    expect(sum_mul_3_or_5_to_1000(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

end
'
