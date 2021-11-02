# Viet Bui Personal & Portfolio Website
## _Started with Jekyll Website_

[![LICENSE](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/vietbuiminh/vietbuiminh.github.io/main/LICENSE) [![Jekyll](https://img.shields.io/badge/jekyll-%3E%3D%203.7-blue.svg)](https://jekyllrb.com/) [![Ruby gem](https://img.shields.io/gem/v/minimal-mistakes-jekyll.svg)](https://rubygems.org/gems/minimal-mistakes-jekyll)
[vietbui.xyz](https:vietbui.xyz)

I am leaving a note down here for myself or whom interested in managing pages on their website with ease by creating template using the newly powerful technology that I recently discover, [Jekyll](https://jekyllrb.com/).

Reason why I almost stop coding a complicated with raw html & css:
- Jekyll creates a secure framework
- Automatic generate pages with the template
- Work well with static server (Github Page: I mean it's free so why not make it work better than PHP?) 

## Install
This project I worked mainly on Windows so please consider my process before doing it on yourown.
1. Set up a folder for the project or create a github repo on your computer, then open it with VSCode.
Make sure that VSCode is configured to type in terminal or git bash. [ctrl] + [`] to open the terminal.
2. Install [Ruby](https://rubyinstaller.org/downloads/)
```ruby -v``` to check version of ruby
3. Check for Gem
```gem -v```
4. Install Jekyll
```gem intall jekyll``` 
if you check on the Jekyll website I specifically not using the ```gem install bundler``` because I want to customize everything for myself and not fighting against the automatic template that jekyll will add for you new project.
5. create these files and folder in your project folder 
    ```
    .
    ├── _config.yml (the hyphen infront is important for jekyll to run and serve)
    ├── _include
    │      └── footer.html
    │      └── header.html
    │      └── nav.html
    ├── _layouts
    │      └── default.html
    ├── _post
    │      └── [year]-[mo]-[da]-[title].md
    ├── assets
    │      └── css___main.css
    └── index.md```
6. Following this [article](https://jekyllrb.com/tutorials/convert-site-to-jekyll/) to get a clear view on why we are doing these 
7. Learn [Liquid](https://jekyllrb.com/docs/step-by-step/02-liquid/) notice on the if else statement and for loop

## Configure your file
Navigate to _config.yml and add:
```
name: [yourname]
title: [yoursitetitle]
permalink: /:categories/:title/ 
baseurl: /
```
the permalink will help to reduce the link file for example if in your _post folder you create markdown file with the name ```2021-02-01-title.md``` the file will serve in the _site as /2021/02/01/title.html rather than /title.html/

## Create a Template for your website
Navigate to _layouts default.html file. We will using Liquid to piece header, content, and footer.
- Add liquid tag ```{% include header.html %}``` to the top of the file, this will let jekyll get the file from _include folder and add to your template.
- I personally put a date tag ```<tag style="font-size: 0.9em"><i>{{ page.date | date: "%Y-%m-%d" }}</i></tag>``` (put what if you want don't want the date to appear in the front page aka. index.html? Don't worry it will not because the index.md does not have the date name like _post).
- ```{{ content }}``` will get the content after the  front matter both in index.md and the posts.
- Finally footer {% include footer.html %}

## Markdown file
Remember to add 
```
---
# front matter as to store the data for your page/site
title: home
layout: default
---
# HEADER 1
## HEADER 2

Lorem
```
layout default will get the default.html in your _layouts folder and generate a page out of that for you.
bellow front matter is the start of content for your page as in {{ content }} in your template.

## Let Serve the Site on Local Server
```jekyll serve``` in your terminal to run.
type _localhost:4000_ on your desire browser

## Troubleshooting when the serve fail to run
type ```jekyll serve --trace``` to read the problem
after that try to type 
```bundle install```
```jekyll serve``` again
If not please check the config.yml or any liquid that cause the problem. 
Happy troubleshooting, and Google is still your best friend for this problem.

## Search engine optimization (SEO) for your site
Check out the [github repo](https://github.com/jekyll/jekyll-seo-tag) for seo tag

- Go to [installation](https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/installation.md) read and since we don't have gemfile, we create one by just type "Gemfile" as the name for our new file in the projetc folder.
Make sure you have this in the file:
    ```
    gem 'jekyll-seo-tag'
    gem "webrick"
    ```
    In your config.yml add to the bottom 
    ```
    plugins:
  - jekyll-seo-tag
    ```
    Add ```{% seo %}``` in your <head></head> in header.html. Because I customized my <title> tag so I used ```{% seo title=false %}``` for my header.html, for more customization for the seo tag [check out](https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/advanced-usage.md).
- Serve and run your project again

## For loop loading posts
example for my coding page.
in my posts md front matter I added ```categories: [coding]``` to list all post in the categories array.
```html
{% for post in site.categories.coding reversed %}

<div class="gallery">
    <a target="_blank" href="{{ post.image }}">
        <img src="{{ post.image }}" alt="{{ post.img-alt }}" />
    </a>
    <div class="desc">
        <h2 style="margin-top: 0; line-height: 1em;">{{ post.full-title | upcase }}</h2>
        <p>{{ post.description }}</p>
        <span class="bottomrow">
            <span class="tags">
                <a class="button link" href="{{ post.url }}">
                    read more &#x2192;</a>
            </span>
            <span class="tags">
                {% for tag in post.tags %}
                <a class="tag link">#{{ tag }}</a>
                {% endfor %}
            </span>
        </span>
    </div>
</div>

{% endfor %}
```
## if else Statement example
```html
{% if page.url == "/" %}
    {% include svg.html %}
{% else %}
    <h1>{{ page.categories[0] | upcase }}</h1>
{% endif %}
```

## Launch project on github
Change or make sure your repo name is [yourgithubaccount].github.io
```
git add .
git commit -m"Created project"
git push
```
Go to Setting and scroll down to Github page. 
Launch the page by choosing the main branch. 
Check the project!

## License

MIT

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>
