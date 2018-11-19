#Usage Guide

## Prose

The easiest way to use is to connect with Prose, the theme comes bundled with a _prose.yml file that provides all the configurations needed for use.

## Local Development

There's some work you just can't do on the web, for this we must build the site locally:

```
$ bundle install
$ jekyll serve --watch
```
## Thumbnails

Thumbnails of images in art/ are generated to art/thumbs/ during the build process. Images that already exist in art/thumbs are ignored, so you can speed things up a bit by commiting art/thumbs/ from time to time. 

We are using [mrdanadams/jekyll-thumbnailer](https://github.com/mrdanadams/jekyll-thumbnailer) but used [kevin1's modification](https://github.com/kevin1/jekyll-thumbnailer/blob/master/thumbnail.rb) to the plugin so it can accept variables and approach usefulness. With this module, thumbnails end up in art/thumbs/ when we need them in _site/art/thumbs. `jekyl serve` seems to pass these files through correctly, but for our build in netlify we needed to do the following:

**build command:** `jekyll build && cp -rf art/thumbs/ _site/art`
