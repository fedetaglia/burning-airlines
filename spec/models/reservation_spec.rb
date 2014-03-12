require 'spec_helper'

describe Reservation do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should belong_to(:user)}
end
