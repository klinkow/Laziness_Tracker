require 'rails_helper'

describe Lazy do
  it { should validate_presence_of :name }
  it { should validate_presence_of :points }
end
