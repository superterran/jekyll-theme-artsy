# jekyll-theme-artsy

This is Artsy, a Jekyll theme that compiles out to a ruby gem. It provides a rough but useful theme for Jekyll sites that includes a gallery, services and a lame ecommerce methodology built around PayPal Buttons. While eventually the goal is for this to be a useful and optimized jekyll theme, at this point its very early and the only real goal is to provide a decoupled theme and asset repositories for my girlfriend that's still compatible with Prose and Netlify. The point is to allow for the theme proper to be publically availble, while letting us track the _content_ in a private repository. This theme is bundled with a thumbnailer that can shrink images and watermark them, the content repo will be a safe home for all of the artist's content and jekyll will only output images that are safe for the web. 

# Basics...

To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

TODO: Delete this and the text above, and describe your gem


## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "artsy"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: artsy
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install artsy

## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `artsy.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

