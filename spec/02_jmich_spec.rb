require_relative '../lib/02_jmich'

describe "the only function" do

  it "doesn't take one-day-array" do
    expect(day_trader([5])).to eq("No interesting case")
  end

  it "doesn't take descending array" do
    expect(day_trader([5,4,4,2,1])).to eq("No interesting case")
  end

  it "takes a longer array and return the days between which the gain is the most interesting" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq("ACH-J1, VTE-J4")
  end

  it "takes another longer array and return the days between which the gain is the most interesting" do
    expect(day_trader([7, 5, 3, 7, 4, 8, 2, 6])).to eq("ACH-J2, VTE-J5")
  end

end
