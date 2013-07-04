require 'spec_helper'

describe Snippetize::Snippet do

  describe '.new' do
    it "should create a new instance" do
      Snippetize::Snippet.new("test").should be_a Snippetize::Snippet
    end

		it "should create a path form the string" do
      Snippetize::Snippet.new("test").path.should eq("snippets/test")
		end
  end
end
