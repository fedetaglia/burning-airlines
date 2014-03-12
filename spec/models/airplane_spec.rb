require 'spec_helper'

describe Airplane do
  
  context 'associations' do
    describe 'should have many flights' do
      it { should have_many(:flights) }
    end
  end

  context 'validation' do
    describe ''
end
