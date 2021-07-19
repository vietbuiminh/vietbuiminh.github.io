---
title: art
layout: main
categories: [art]
---

A few of my featured projects.
{% assign i = 0 %}
{% for post in site.categories.art reversed %}

<div style="animation-delay:calc({% increment i %} * 0.3s);" class="gallery">
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

I will put more projects up here soon. It's just the matter of me coding the site out 😁
