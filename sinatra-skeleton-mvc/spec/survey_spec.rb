require 'spec_helper'

describe Survey do
  it { should validate_presence_of(:name) }
end