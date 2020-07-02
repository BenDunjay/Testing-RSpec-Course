RSpec.describe "#even? method" do #to show its an instance method test use '#' for class methods use '.'
  context "with even number" do
    it "should return true" do
      expect(4.even?).to eq(true)
    end
  end

  describe "with odd number" do
    it "should return false" do
      expect(5.even?).to eq(false)
    end
  end
end
