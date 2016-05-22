require 'rails_helper'

RSpec.describe 'GET /api/v1/person' do

  let(:person) {FactoryGirl.create(:person)}

  before { get '/api/v1/person'}

  subject { response }

  it 'should be successful' do

    p response

    expect(response.status).to eq 200
  end

  its(:body) { should match_schema 'people' }

end