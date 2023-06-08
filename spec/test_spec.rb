require 'spec_helper'

describe 'Sample Stack' do
  describe vpc('my-vpc') do
    it { should exist }
    it { should be_available }
    its(:cidr_block) { should eq '10.0.0.0/16' }
  end

  describe subnet('my-subnet') do
    it { should exist }
    it { should be_available }
    it { should belong_to_vpc('my-vpc') }
  end

  describe security_group('my-security-group') do
    it { should exist }
    it { should allow_in(port: 80, protocol: 'tcp') }
    it { should allow_out(port: 443, protocol: 'tcp') }
  end

  describe ec2('my-ec2-instance') do
    it { should exist }
    it { should be_running }
    it { should belong_to_subnet('my-subnet') }
    it { should have_security_group('my-security-group') }
    its(:instance_type) { should eq 't2.micro' }
  end
end
