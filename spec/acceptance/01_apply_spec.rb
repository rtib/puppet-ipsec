require 'spec_helper_acceptance'

describe 'ipsec module behaves like an idempotent resource' do
  let(:manifest) do
    %(
      class { 'ipsec':
      }
    )
  end

  it_behaves_like 'an idempotent resource'
end # describe 'ipsec module'
