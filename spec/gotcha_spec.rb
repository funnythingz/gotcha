RSpec.describe Gotcha do
  it "has a version number" do
    expect(Gotcha::VERSION).not_to be nil
  end

  describe 'capsule' do

    it "景品が無限に出てくるガチャ" do
      g = Gotcha::InfiniteCapsule.new ['いちご', 'ぶどう', 'なし']
      expect(g.list.include? g.run).to eq(true)
    end

    it "出た景品が減っていくガチャ" do
      g = Gotcha::LimitedCapsule.new ['いちご', 'ぶどう', 'なし']
      (0..g.list.size - 1).each do |item|
        g.run
      end
      expect(g.list.size).to eq(0)
    end

  end
end
