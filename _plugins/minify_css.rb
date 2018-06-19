require 'cssminify'

module CssMinifier
  class Generator < Jekyll::Generator
    def generate(site)
      css = site.static_files.detect { |css| css.name == 'style.css' }

      minified_css = CSSminify.compress(File.read(css.path))

      site.data['css'] = minified_css
    end
  end
end