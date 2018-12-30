require 'spec_helper_acceptance'

describe 'ipsec service up and responding' do
  describe 'systemd service' do
    subject(:systemd_unit) { command('systemctl status strongswan.service') }

    its(:exit_status) { is_expected.to eq 0 }
  end

  describe 'ipsec status command' do
    subject(:update_tool) { command('ipsec status') }

    its(:exit_status) { is_expected.to eq 0 }
  end
end # describe 'ipsec module'
