module Snippetize
  module ActionViewExtensions
    module SnippetizeHelper

      # Renders the first expression within double brackets {{}} as a partial
      # Other variables are passed as parameters to the partial
      def snippetize string=''
        string.gsub(/\{\{(.*?)\}\}/) do |s|
          snippet = Snippetize::Snippet.new($1)
          render partial: snippet.path, locals: snippet.locals
        end
      end

    end
  end
end

ActionView::Base.send :include, Snippetize::ActionViewExtensions::SnippetizeHelper