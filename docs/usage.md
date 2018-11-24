# Usage Guide

## Deploying to rubygems.org

The following will push a new release live, be sure to tag and create a release in github!

```
$ gem build jekyll-theme-artsy.gemspec
$ gem push jekyll-theme-artsy-0.1.9.gem
```

This has been simplifed down to...

```
$ bin/push
```

This will draft a new release, attempt to push to RubyGems.org

## Local Development

It's best to build this theme along with the content. There's a watcher that will regenerate the content's installation whenever
you make changes to the theme. To use it...


```
$ cd ../artsy-content
$ sudo bundle exec jekyll serve
```

Meanwhile in another terminal...

```
$ bin/watch
```

This will kick-off a watcher that will run a jekyll build against the content directory when anything changes in this directory.

To use this, be sure to clone down the content repository and run jekyll serve from it, then run bin/watch from this directory and
when content changes here, it'll re-populate the _site/ directory in the content repo, thus letting you edit the base template
and see how it works with the content repo. 


## Thumbnails

Thumbnails of images in art/ are generated to art/thumbs/ during the build process. Images that already exist in art/thumbs are ignored, so you can speed things up a bit by commiting art/thumbs/ from time to time. 

We are using [mrdanadams/jekyll-thumbnailer](https://github.com/mrdanadams/jekyll-thumbnailer) but used [kevin1's modification](https://github.com/kevin1/jekyll-thumbnailer/blob/master/thumbnail.rb) to the plugin so it can accept variables and approach usefulness. With this module, thumbnails end up in art/thumbs/ when we need them in _site/art/thumbs. `jekyl serve` seems to pass these files through correctly, but for our build in netlify we needed to do the following:

**build command:** `jekyll build && cp -rf art/thumbs/ _site/art`

## Paypal Support

One of our goals is to give Trina an ecommerce presence, so we're using Paypal's hosted cart to bring in those basic features.

Prices are determiend in markdown front matter, images in art/ that do not have a related markdown file in _art/ will not be purchasable. A user sees a product they like in the gallery with a markdown (blue girl, for example), click 'Learn More', are redirected to the post page for that markdown file and they will find an add to cart button.

Would like to have a mini-cart, a 'full cart' icon that isn't just setting a cookie when someone clicks a link, etc. We might adopt their checkout.js and implement this a little more cleanly, but the virtue of the paypal buttons is they are basically just the embedables. 

## Prose

The easiest way to use is to connect with Prose, the theme comes bundled with a _prose.yml file that provides all the configurations needed for use.