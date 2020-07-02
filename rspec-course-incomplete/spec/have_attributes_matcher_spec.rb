class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe ProfessionalWrestler do
  subject { described_class.new("SCSA", "stunner") }
  it "checks for attr_readers" do
    expect(subject).to have_attributes(name: "SCSA", finishing_move: "stunner")
  end
end
