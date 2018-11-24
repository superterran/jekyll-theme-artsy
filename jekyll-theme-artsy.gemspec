# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-artsy"
  spec.version       = "0.1.10"
  spec.authors       = ["Doug Hatcher"]
  spec.email         = ["superterran@gmail.com"]

  spec.summary       = "An artfully-minded Jekyll theme. This will not usable/stable until version 2.0.0"
  spec.homepage      = "https://superterran.github.io/jekyll-theme-artsy/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_plugins|_includes|_sass|LICENSE|README|shop.html)!i) }


  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
