require 'rails_helper'

describe Activity do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories }  
end
