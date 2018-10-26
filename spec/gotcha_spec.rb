RSpec.describe Gotcha do
  it "has a version number" do
    expect(Gotcha::VERSION).not_to be nil
  end

  describe 'capsule' do

    it "景品を吐き出したら終了" do
      #TODO
      list = ['いちご', 'ぶどう']
      expect(Gotcha::Capsule.limited list).to eq('いちご')
    end

  end
end
