---
title: Welcome Andreen 2nd Floor!
layout: main_ca
description: Andreen 2nd Floor CA Portal.
---

Welcome Andreen 2nd Floor Residents!
{% assign i = 0 %}
{% assign sorted = site.categories.ca | sort: 'date' | reverse  %}
{% for post in sorted %}

<div style="animation-delay:calc({% increment z %} * 0.2s);" class="gallery">
    <div class="desc">
        <h2 style="margin-top: 0; line-height: 1em;">{{ post.full-title | upcase }}</h2>
        <tag style="font-size: 0.9em"><i>{{ post.date | date: "%Y-%m-%d" }}</i></tag>
        <p>{{ post.description }}</p>
        <span class="bottomrow">
            <span class="tags">
                <a class="button link" href="{{ post.url }}">
                    read more &#x2192;</a>
            </span>
            <span class="tags">
                {% for tag in post.tags %}
                <a class="tag link" href="{{ "tags/" | append: tag | relative_url }}">#{{ tag }}</a>
                {% endfor %}
            </span>
        </span>
    </div>
</div>

{% endfor %}
