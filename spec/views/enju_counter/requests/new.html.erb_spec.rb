require 'rails_helper'

RSpec.describe "enju_counter/requests/new", type: :view do
  before(:each) do
    assign(:request, EnjuCounter::Request.new())
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", enju_counter.requests_path, "post" do
    end
  end
end
