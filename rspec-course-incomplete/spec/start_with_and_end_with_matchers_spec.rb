RSpec.describe "start with and end with matchers" do
  describe "caterpillar" do
    it "should check the beginning and end of the word" do
      expect(subject).to start_with("cat")
    end

    it { is_expected.to end_with("pillar") }
  end

  describe [:a, :b, :c, :d] do
    it "should check for elements at beginning or end of array" do
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c, :d) #needs to be in correct order unlike contain_exactly
    end

    it "doesn't worry about the order" do
      expect(subject).to contain_exactly(:a, :d, :b, :c)
    end
  end
end
