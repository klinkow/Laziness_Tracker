require 'rails_helper'

RSpec.describe "lazies/show", type: :view do
  before(:each) do
    @lazy = assign(:lazy, Lazy.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
