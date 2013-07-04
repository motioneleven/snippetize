require 'spec_helper'
include Snippetize::ActionViewExtensions::SnippetizeHelper

describe Snippetize::ActionViewExtensions::SnippetizeHelper do
	before :each do
		@view = ActionView::Base.new
		@view.stub :render
	end

	it "should treat nil as an empty string" do
		snippetize().should eq("")
	end

	it "should render the corresponding partial" do
		@view.should_receive(:render).with({partial: "snippets/test", locals: {}})
		@view.snippetize("one two {{test}} three")
	end

	it "should render multiple partials" do
		@view.should_receive(:render).twice
		@view.snippetize("one two {{test}} three {{test2}}")
	end

	it "should pass the local variables" do
		@view.should_receive(:render).with({partial: "snippets/test", locals: {count: "2", tag: "test"}})
		@view.snippetize("one two {{test, count: 2, tag: test}} three")
	end
end
