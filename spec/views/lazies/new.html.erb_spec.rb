require 'rails_helper'

RSpec.describe "lazies/new", type: :view do
  before(:each) do
    assign(:lazy, Lazy.new())
  end

  it "renders new lazy form" do
    render

    assert_select "form[action=?][method=?]", lazies_path, "post" do
    end
  end
end
