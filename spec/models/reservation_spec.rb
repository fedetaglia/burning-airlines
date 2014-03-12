require 'spec_helper'

describe Reservation do


  context 'associations' do
    describe 'should belong to a flight' do
      it { should belong_to(:flight) }
    end

    describe 'should belong to a user' do
      it { should belong_to(:user) }
    end
  end

  context 'should validate presence of' do
    describe 'user_id' do
      it { should validate_presence_of :flight_id }
    end
    describe 'flight_id' do
      it { should validate_presence_of :user_id }
    end
    describe 'row' do
      it { should validate_presence_of :row }
    end
    describe 'column' do
      it { should validate_presence_of :column }
    end
  end


end
