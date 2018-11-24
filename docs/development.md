
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
