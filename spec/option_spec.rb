require 'spec_helper'

describe Option do
  it { should validate_presence_of(:name) }
end