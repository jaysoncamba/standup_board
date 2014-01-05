require 'spec_helper'

describe Todo do
  describe 'validations' do
    context 'rails validations' do
      it { should validate_presence_of(:title) }
      it { should validate_numericality_of(:status) }
      it { should validate_numericality_of(:ticket) }
    end
  end

end
