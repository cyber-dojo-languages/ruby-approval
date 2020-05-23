require_relative 'coverage'
require 'approvals'
require 'approvals/rspec'

Approvals.configure do |config|
  config.approvals_path = './'
end

RSpec.configure do |config|
  config.add_setting :approvals_namer_class, {
    :default => Approvals::Namers::RSpecNamer
  }
  config.add_setting :approvals_path, {
    :default => './'
  }
end
