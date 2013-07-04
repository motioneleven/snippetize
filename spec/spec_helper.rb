RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end

module ActionView
	class Base
	end
end
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/core_ext/hash'
require 'rack/utils'

require_relative '../lib/snippetize.rb'
