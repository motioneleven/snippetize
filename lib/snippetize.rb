require 'snippetize/version'
require 'snippetize/snippet'
require 'snippetize/action_view_extensions/snippetize_helper'

module Snippetize

  mattr_accessor :location
  @@location = 'snippets'

  def self.setup
    yield self
  end

end