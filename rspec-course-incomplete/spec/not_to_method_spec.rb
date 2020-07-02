RSpec.describe "not to method" do
  it "checks that two values are not the same" do
    expect(3 * 3).not_to eq(10)
    expect([1, 2]).not_to eq({ a: 1, b: 2 })
  end
end
