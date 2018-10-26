RSpec.describe Gotcha do
  it "has a version number" do
    expect(Gotcha::VERSION).not_to be nil
  end

  describe 'capsule' do

    it "景品が無限に出てくるガチャ" do
      list = ['いちご', 'ぶどう']
      expect(list.include? Gotcha::Capsule.infinite(list)).to eq(true)
    end

  end
end
