RSpec.describe "before and after hooks" do
  before(:example) do
    puts "Before example"
  end

  after(:example) do # happens after each example
    puts "After example"
  end

  before(:context) do #will only appear once before the block it is in.
    puts "Before context"
  end

  after(:context) do
    puts "After context"
  end

  it "is just a random example" do
    expect(5 * 4).to eq(20)
  end

  it "is just another random example" do
    expect(5 + 4).to eq(9)
  end
end
