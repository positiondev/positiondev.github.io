# Install

If you want to use rbenv:

```
brew install rbenv
rbenv init
# follow instructions in output from `rbenv init`
 rbenv install 2.5.1
rbenv local 2.5.1
gem install bundler
bundle install
```

# Run server

```
bundle exec jekyll serve
```

# Add workers

Add a bio in this format to `_workers`:

```
---
name: Jane Worker
start_date: 2018-05
---
This is Jane's bio.
```

# Add clients

Add a client in this format to the `_data/clients.yml` file:

```
- url: "https://clienturl.com/"
  name: Client Name
  image: "logo_client.gif"
```

Put the logo in the `img` directory. Images should be very small and greyscale -- 65 px tall, max.

# Add testimonials

Add a testimonial to the `_testimonials` directory in this format:

```
---
client_name: Company name
project_name: specific-project.com or Specific Project
project_url: https://www.specific-project.com
person: Antonio Client
title: CEO
---
Enthusiast endorsement of Position Dev!
```

# Edit the rest of the index

The "mission" section is in the `index.md` file.

The rest of the sections are currently hardcoded into the template, `_/layouts/home.html`.

# How CSS works

The `minify_css.rb` plugin in the `_plugins` directory minifies the CSS in `styles/style.css` and stores it in `site.data.css`. You can then use it in a `style` tag. This is to maximize the PageSpeed speed score by inlining critical CSS.

If the CSS gets too large, we may need to handle this differently.

*This is not currently live because Github Pages doesn't allow custom plugins.*
