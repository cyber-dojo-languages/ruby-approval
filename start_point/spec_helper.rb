require_relative 'coverage'
require 'approvals'
require 'approvals/rspec'

Approvals.configure do |cfg|
  cfg.approvals_path = './'
end

RSpec.configure do |cfg|
  cfg.add_setting :approvals_namer_class, {
    :default => Approvals::Namers::RSpecNamer
  }
  cfg.add_setting :approvals_path, {
    :default => './'
  }
end
