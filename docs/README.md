This blog is a Jekyll-based website with a few gems to help keep things running well on the web. We use tagging and thumbnailing gems to add pagination and to reduce download sizes, making the site incompatible with github pages. We use Netlify, which supports these gems, to generate and host the static files. 

Trina doesn't like using markdown and github very much, so we have been using Prose to make content management easier. Check out the _prose.yml file to see the custom configuration, the goal is to expose all functionality in it.

## Local Development

There's some work you just can't do on the web, for this we must build the site locally:

```
$ bundle install
$ jekyll serve --watch
```

## Hosting
[Netlify](https://app.netlify.com/sites/trinaisartsy/) does a really good job so far and seems free for our uses. It triggers when we push to this repo's master, it is deigned for staticly generated content so it's suited well for this, it's free, and it doesn't block us in on what gems we can use. Will follow-up if they start trying to charge us. 

Originally we were using github pages but with the heavy file sizes of the gallery and not wanting to box Trina into any set tag or category taxonomy, we had to make a move.  

## Paypal Support

One of our goals is to give Trina an ecommerce presence, so we're using Paypal's hosted cart to bring in those basic features.

Prices are determiend in markdown front matter, images in art/ that do not have a related markdown file in _art/ will not be purchasable. A user sees a product they like in the gallery with a markdown (blue girl, for example), click 'Learn More', are redirected to the post page for that markdown file and they will find an add to cart button.

Would like to have a mini-cart, a 'full cart' icon that isn't just setting a cookie when someone clicks a link, etc. We might adopt their checkout.js and implement this a little more cleanly, but the virtue of the paypal buttons is they are basically just the embedables. 

## Thumbnails

Thumbnails of images in art/ are generated to art/thumbs/ during the build process. Images that already exist in art/thumbs are ignored, so you can speed things up a bit by commiting art/thumbs/ from time to time. 

We are using [mrdanadams/jekyll-thumbnailer](https://github.com/mrdanadams/jekyll-thumbnailer) but used [kevin1's modification](https://github.com/kevin1/jekyll-thumbnailer/blob/master/thumbnail.rb) to the plugin so it can accept variables and approach usefulness. With this module, thumbnails end up in art/thumbs/ when we need them in _site/art/thumbs. `jekyl serve` seems to pass these files through correctly, but for our build in netlify we needed to do the following:

**build command:** `jekyll build && cp -rf art/thumbs/ _site/art`

## HTTPS

All websites should be served over https, but github pages and many other services do not provide ssl for domains. To work around this, we are using a free Cloudflare account that provides a free shared ssl cert. To enable, we pointed our domain to the cloudflare nameservers. Then by enabling the shared ssl, cloudflare will provide a certificate and terminate on their end, proxying the request to either github pages or netify without issue. It works really well.

