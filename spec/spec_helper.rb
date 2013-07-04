RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end

require 'active_support/core_ext/module'
require 'active_support/core_ext/class'
require 'active_support/core_ext/hash'
require 'action_view'
require 'rack/utils'

require_relative '../lib/snippetize.rb'
