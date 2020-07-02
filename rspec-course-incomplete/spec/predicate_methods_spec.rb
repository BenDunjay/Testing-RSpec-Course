RSpec.describe "predicate methods true/false" do
  it "can be tested with boolean methods" do
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect([]).to be_empty
  end
end
