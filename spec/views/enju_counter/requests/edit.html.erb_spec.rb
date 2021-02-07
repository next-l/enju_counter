require 'rails_helper'

RSpec.describe "enju_counter/requests/edit", type: :view do
  fixtures :all

  before(:each) do
    @request = assign(:request, EnjuCounter::Request.create!(user: FactoryBot.create(:librarian)))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", enju_counter.request_path(@request), "post" do
    end
  end
end
