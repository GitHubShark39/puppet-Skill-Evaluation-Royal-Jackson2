# Royal C Jackson Jr.
# Skill Evaluation
# Date: 8/9/2017
# File:  dnsmasq_rule_spec.rb 
# Comment: Include at least one ​rspec-puppet test​ that verifies


require 'spec_helper'

describe 'logrotate::rule' do
  let(:title) { 'nginx' }

  it { is_expected.to contain_class('logrotate::setup') }
end