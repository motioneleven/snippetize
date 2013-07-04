module Snippetize
	class Snippet

		attr_accessor :partial, :locals

		def initialize(snippet_value)
			values = snippet_value.split(',')
			@partial = values[0]
			@locals = Snippet.parse_locals values[1..-1]
		end

		def self.parse_locals locals={}
			hash = {}
			return hash if locals.nil?
			locals.each do |option|
				options = option.split(':')
				key = options[0].strip.to_sym
				hash[key] = options[1].strip.to_s
			end
			hash
		end

		def path
			"#{Snippetize.location}/#{@partial}"
		end
	end
end