# Snippetize

Snippetize allows you to include re-usable code and partials in html or plain text fields. Stay dry and reuse your partials using shortcode. Use it for including forms, videos, maps or simply preformated html snippets.

## Why

If you want dynamic partials to be displayed and you save your html output to a, let's say, a content column of a Article instance.

    Article.new(content: "<div class='widget'>shit I need my awesome widget that displays everywhere on the site.</div>")

Or sometimes you want a form and want to keep the authentication token for instance or any ruby code that has to stay dynamic and can't be kept static in the database.

## Installation

Add this line to your application's Gemfile:

    gem 'snippetize'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snippetize

## Defaults

All partials will be taken from a `snippets` folder in views. For instance, `{awesome_widget}` assumes you have the following file:

    app/views/snippets/_awesome_widget.html.erb

## Usage

Insert the name of the partial within brackets `{}`

    text = "<div class='widget'>{awesome_widget}</div>"

Call `snippetize` and pass it your string

    snippetize(text)

The result could look like this:

    "<div class='widget'><div class='my-awesome-widget'>This lives in my partial.</div></div>"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
