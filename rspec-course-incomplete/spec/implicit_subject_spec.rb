RSpec.describe Array do
  subject(:sally) do
    ["a", "b"]
  end

  it "has a length of two" do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it "confirms array has a length of two" do
    expect(sally.length).to eq(2)
  end
end

RSpec.shared_examples "A Ruby object with 3 elements" do
  it "returns the number of items" do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples "A Ruby object with 3 elements"
end

RSpec.describe String do
  subject { "abc" }
  include_examples "A Ruby object with 3 elements"
end

class ThreeElements
  attr_accessor :name

  def initialize(name = "Bill")
    @name = name
  end

  def length
    3
  end
end

RSpec.describe ThreeElements do
  subject { described_class.new }
  include_examples "A Ruby object with 3 elements"

  describe "initialized name" do
    subject(:bill) { described_class.new("Bill") }
    it "should return Bill" do
      expect(bill.name).to eq("Bill")
    end
  end
end
