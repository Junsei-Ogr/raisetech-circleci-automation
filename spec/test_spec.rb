require 'spec_helper'

describe stack('sample-stack') do
  it { should exist }
  it { should be_running }
  its('stack_status') { should eq 'CREATE_COMPLETE' }
  its('template_description') { should include 'AWS CloudFormation Sample Template' }
  its('parameters') do
    should include(
      {
        'ParameterKey' => 'InstanceType',
        'ParameterValue' => 't2.micro'
      },
      {
        'ParameterKey' => 'KeyName',
        'ParameterValue' => 'my-key-pair'
      }
    )
  end
end
