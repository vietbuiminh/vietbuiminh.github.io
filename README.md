# vietmbui.com

[![License: MIT](https://img.shields.io/badge/license-MIT-lightgrey.svg)](LICENSE) [![Jekyll 4.3](https://img.shields.io/badge/jekyll-4.3-blue.svg)](https://jekyllrb.com/)

Source for my personal and portfolio site, [vietmbui.com](https://www.vietmbui.com/). It's a hand-built [Jekyll](https://jekyllrb.com/) site with no theme: every layout, include and style lives in this repo.

## Run it locally

You need Ruby 3.x and Bundler. On macOS, install Ruby with Homebrew or rbenv (the system Ruby is too old); on Windows, use [RubyInstaller](https://rubyinstaller.org/downloads/).

```sh
bundle install        # first time, or after the Gemfile changes
bundle exec jekyll serve --livereload
```

Then open <http://localhost:4000>. Useful extras:

- `--drafts` also builds posts in `_drafts/`
- `--trace` prints the full error when a build fails

`_config.yml` is only read at startup, so restart the server after editing it.

## Deployment

Pushing to `main` deploys the site. The GitHub Actions workflow in [`.github/workflows/jekyll.yml`](.github/workflows/jekyll.yml) runs `bundle exec jekyll build` on Ruby 3.2 and publishes `_site/` to GitHub Pages. The custom domain comes from [`CNAME`](CNAME).

Because the site builds in Actions rather than GitHub's classic Pages builder, any gem in the `Gemfile` and anything in `_plugins/` works in production.

## Project structure

```
.
├── _config.yml          site settings, permalink style, plugins
├── _layouts/
│   ├── main.html        default page layout (header, breadcrumbs, footer)
│   ├── default.html
│   └── main_ca.html, main_photo.html, main_workout.html   one-off layouts
├── _includes/           header, nav, footer, breadcrumbs, signature SVG
├── _posts/              projects and writing, named YYYY-MM-DD-slug.md
├── _drafts/             unpublished posts (shown only with --drafts)
├── _plugins/            compatibility.rb, a shim for newer Ruby versions
├── tags/                one page per tag, e.g. tags/engineering.md
├── assets/
│   ├── css/main.css     all site styles
│   ├── js/              lazy image loading
│   ├── img/             images for posts, one folder per project
│   └── docs/            PDFs (CV, papers)
├── img/                 general site images
├── index.md             home / about page
├── art.md, coding.md, writing.md   category listing pages
├── now.md               /now page
└── robots.txt
```

`_site/` is build output and is git-ignored. Never edit files in it.

## Writing a post

Create `_posts/YYYY-MM-DD-slug.md`:

```yaml
---
layout: main
title: buibuoy                  # short title, used in the URL and page heading
full_title: "Modular Aquatic Research Station"   # shown on gallery cards
breadcrumb: buibuoy             # optional: short label for the breadcrumb pill
description: One or two sentences for the gallery card and search engines.
image: /assets/img/buibuoy/cover.jpg
image-alt: Describe the image
categories: [writing, research] # decides the URL and which listing pages show it
tags: [research, engineering]   # each needs a matching page in tags/
published: false                # optional: hide it without deleting it
sitemap: false                  # optional: keep it out of sitemap.xml
---
```

URLs follow `permalink: /:categories/:title/`, so the example above is served at `/writing/research/buibuoy/`.

### Front matter for pages

- `breadcrumb:` replaces the title in the breadcrumb when the title is long (see `now.md`).
- `updated: YYYY-MM-DD` shows a "last updated" date in the page content and hides the footer's build date. Change it by hand whenever you edit the page.

### Adding a tag

Copy one of the files in `tags/` (e.g. `tags/engineering.md`), rename it, and change the tag name in its title and in `site.tags.<name>`.

## Plugins

| Plugin | What it does |
|---|---|
| `jekyll-seo-tag` | Meta and Open Graph tags, via `{% seo title=false %}` in `header.html` (the `<title>` is written by hand) |
| `jekyll-sitemap` | Generates `/sitemap.xml`; pages with `sitemap: false` are left out |
| `jekyll-feed` | Generates the RSS/Atom feed at `/feed.xml`, linked in the footer |

`csv`, `base64`, `bigdecimal` and `webrick` are in the `Gemfile` because newer Ruby versions no longer bundle them by default, and Jekyll 4.3 still needs them.

## Styling notes

All styles are in [`assets/css/main.css`](assets/css/main.css).

- **`hover-underline-animation`**: link highlight that fills in from the left on hover. In the nav, the current page's link gets `id="active"` and keeps the highlight on.
- **`tag`** / **`button`**: the rounded pills used for tags and breadcrumbs.
- **`imgrow`**: a three-column photo grid.
- **`sticker`**: a tilted cut-out image that spins in on page load. Inside an `imgrow` it overlaps the photos. Use `sticker standalone` to place one on its own in the text.

## Notes to myself: Liquid

Listing posts from a category, newest first:

```liquid
{% assign sorted = site.categories.coding | sort: 'date' | reverse %}
{% for post in sorted %}
  <a href="{{ post.url }}">{{ post.full_title }}</a>
{% endfor %}
```

Showing something only on the home page:

```liquid
{% if page.url == "/" %}
  {% include svg.html %}
{% else %}
  <h1>{{ page.title | upcase }}</h1>
{% endif %}
```

Linking to a page by its source file (the build fails if the file is missing, so links can't silently break):

```liquid
<a href="{% link now.md %}">/now</a>
```

Good references: [converting a site to Jekyll](https://jekyllrb.com/tutorials/convert-site-to-jekyll/) and the [Liquid step-by-step](https://jekyllrb.com/docs/step-by-step/02-liquid/).

## License

[MIT](LICENSE)
