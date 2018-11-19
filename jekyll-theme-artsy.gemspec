# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-artsy"
  spec.version       = "0.1.8"
  spec.authors       = ["Doug Hatcher"]
  spec.email         = ["superterran@gmail.com"]

  spec.summary       = "An artfully-minded Jekyll theme"
  spec.homepage      = "https://github.com/superterran/jekyll-theme-artsy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_plugins|_includes|_sass|LICENSE|README|shop.html)!i) }


  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
