require_relative '../lib/more'

describe Info do
  describe '#make_request' do
    context 'check if the request is successful' do
    let(:request) { Info.new }
    let(:request_json) { request }

    it 'should return json response when the request is sucessful' do
      expect(request_json.class).to eql(Array)
    end

    it 'returns an array response should not be empty' do
      expect(request_json.length).not_to eql(0)
    end
  end
  end
end
