module Snippetize
  class Snippet

    attr_accessor :partial, :path, :locals

    def initialize(snippet_value)
      @partial, params = snippet_value.split(/[\s]/, 2)
      @locals = Rack::Utils.parse_nested_query(params).try(:symbolize_keys!)
      @path = "#{Snippetize.location}/#{@partial}"
    end

  end
end