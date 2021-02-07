require 'rails_helper'

RSpec.describe "enju_counter/requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      EnjuCounter::Request.create!(user: FactoryBot.create(:librarian)),
      EnjuCounter::Request.create!(user: FactoryBot.create(:librarian))
    ])
  end

  it "renders a list of requests" do
    render
  end
end
