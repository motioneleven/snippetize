# Snippetize

Snippetize allows you to include partials in html or plain text fields. Stay dry and reuse your partials using shortcode. Use it for including forms, videos, maps or simply preformated html snippets.

## Why

If you want users to be able to add partials without editing html.

So this:
```ruby
    Article.new(content: "<div class='widget'>I need my awesome widget that displays everywhere on the site.</div>")
```

Becomes:
```ruby
    Article.new(content: "{{widget}}")
```

## Installation

Add this line to your application's Gemfile:

    gem 'snippetize'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snippetize

## Defaults

All partials will be taken from a `snippets` folder in views. For instance, `{{awesome_widget}}` assumes you have the following file:

    app/views/snippets/_awesome_widget.html.erb

## Usage

Insert the name of the partial within double brackets `{{}}`

    text = "<div class='widget'>{{awesome_widget}}</div>"

Call `snippetize` and pass it your string

    snippetize(text).html_safe

The result could look like this:

    "<div class='widget'><div class='my-awesome-widget'>This lives in my partial.</div></div>"

You can also pass variables to you partial like you would normaly to a partial

    text = "<div class='widget'>{{awesome_widget, count: 2, category: test}}</div>"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Test your changes (`rspec spec`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
