require_relative '../lib/more'

describe Info do
  describe '#select_random' do
    context 'check what data in the api to pick from' do
      let(:select_test) { Info.new('X') }
      it 'should return false if array is empty' do
        expect(select_test.select_random).to eql false if @values == ''
      end
    end
  end
end
