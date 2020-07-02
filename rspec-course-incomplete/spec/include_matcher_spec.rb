RSpec.describe "include matcher" do
  describe "hot chocolate" do
    it "checks the string for inclusion" do
      expect(subject).to include("hot")
    end

    describe [10, 20, 30] do
      it { is_expected.to include(20) }
    end
  end
end
