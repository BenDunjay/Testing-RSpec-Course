RSpec.describe "comparison operators" do
  it "allows for comparison with built-in Ruby operators" do
    expect(10).to be > 9
    expect(8).to be < 15

    expect(22).to be <= 100
  end

  describe 100 do #this block makes 100 the Subject therefore you can call is_expected and write a single line.
    it { is_expected.to be > 90 }
    it { is_expected.to be <= 100 }
    it { is_expected.to be <= 500 }
  end
end
