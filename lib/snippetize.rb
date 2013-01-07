require 'snippetize/version'
require 'snippetize/snippet'
require 'snippetize/action_view_extensions/snippetize_helper'

module Snippetize

  mattr_accessor :delimiters
  @@delimiters = %w({ })

  mattr_accessor :location
  @@location = 'snippets'

  mattr_accessor :templating_engine
  @@templating_engine = 'erb'

  def self.setup
    yield self
  end

  protected

  def start_delimiter
    @start_delimiter ||= Snippetize.delimiters[0]
  end

  def end_delimiter
    @end_delimiter ||= Snippetize.delimiters[1]
  end
end