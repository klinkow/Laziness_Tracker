require 'rails_helper'

RSpec.describe "lazies/index", type: :view do
  before(:each) do
    assign(:lazies, [
      Lazy.create!(),
      Lazy.create!()
    ])
  end

  it "renders a list of lazies" do
    render
  end
end
