require 'spec_helper'

describe Flight do
  it { should have_many(:reservations) }
  it { should belong_to(:airplane) }
end
