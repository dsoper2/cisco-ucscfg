require 'spec_helper'
describe 'ucscfg' do

  context 'with default values for all parameters' do
    it { should contain_class('ucscfg') }
  end
end
