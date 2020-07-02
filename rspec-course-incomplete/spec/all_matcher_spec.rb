RSpec.describe "all matcher" do
  it "allows for agg checks" do
    # [5,7,9].each do |val|
    #     expect(val).to be_odd
    # end
    # is the same as
    expect([5, 7, 9]).to all(be_odd)
    expect([5, 7, 9]).to all(be < 10)
end
end

expect({}).to be_empty
expect([10,20,30]).to all(be_even)
expect([0,1,2]).to all(be >= 0)
T, F, T, T, T, T, T, T, F, T