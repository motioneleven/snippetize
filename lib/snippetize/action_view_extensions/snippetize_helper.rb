module Snippetize
  module ActionViewExtensions
    module SnippetizeHelper

      def snippetize string=''
        string.gsub(/\{(.*?)\}/) do |s|
          snippet = Snippetize::Snippet.new($1)
          render partial: snippet.path, locals: snippet.locals
        end
      end

    end
  end
end

ActionView::Base.send :include, Snippetize::ActionViewExtensions::SnippetizeHelper