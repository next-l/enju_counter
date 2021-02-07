require 'rails_helper'

RSpec.describe "enju_counter/requests/show", type: :view do
  before(:each) do
    @request = assign(:request, EnjuCounter::Request.create!(user: FactoryBot.create(:librarian)))
  end

  it "renders attributes in <p>" do
    render
  end
end
