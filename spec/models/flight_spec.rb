require 'spec_helper'

describe Flight do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should have_many(:reservations) }
  it { should belong_to(:airplane) }
end
