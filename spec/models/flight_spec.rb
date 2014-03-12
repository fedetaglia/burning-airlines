require 'spec_helper'

describe Flight do
  context "associations" do
    it { should have_many(:reservations) }
    it { should belong_to(:airplane) }
  end

  context "validations" do
    it { should validate_presence_of :number }
    it { should validate_presence_of :origin }
    it { should validate_presence_of :destination }
    it { should validate_presence_of :date }
    it { should validate_presence_of :airplane_id }
  end
end
