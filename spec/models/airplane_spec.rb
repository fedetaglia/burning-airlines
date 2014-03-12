require 'spec_helper'

describe Airplane do
  
  context 'associations' do
    describe 'should have many flights' do
      it { should have_many(:flights) }
    end
  end

  context 'should validate presence of' do
    describe 'name' do
      it { should validate_presence_of :name }
    end
    describe 'rows' do
      it { should validate_presence_of :rows }
    end
    describe 'columns' do
      it { should validate_presence_of :columns }
    end
  end

end
