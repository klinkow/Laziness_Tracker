require 'rails_helper'

RSpec.describe "lazies/edit", type: :view do
  before(:each) do
    @lazy = assign(:lazy, Lazy.create!())
  end

  it "renders the edit lazy form" do
    render

    assert_select "form[action=?][method=?]", lazy_path(@lazy), "post" do
    end
  end
end
