---
title: Welcome to Andreen 2nd Floor!
layout: main_ca
description: Andreen 2nd Floor CA Portal.
---

Click on read more for full articles.
{% assign i = 0 %}
{% assign sorted = site.categories.ca | sort: 'date' | reverse  %}
{% for post in sorted %}

<div style="animation-delay:calc({% increment z %} * 0.2s);" class="gallery">
    <div class="desc">
        <h2 style="margin-top: 0; line-height: 1em;">{{ post.title | upcase }}</h2>
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

## YOUR CA

<style>
    .ca-profiles {
        display: flex;
        gap: 20px;
    }
    .frame-img {
        display: flex;
        flex-direction: column;
        text-align: center;
    }
    .frame-img img {
        margin: auto;
        object-fit: cover;
        width: 100px;
        height: 100px;
        border: solid var(--footercolor) 2px;
        border-radius: 50%;
    }


</style>

<div class="ca-profiles">
    <div class="frame-img">
        <img src="/assets/img/ca/kristina.jpg" alt="CA Kristina avatar" />
        <p>CA <strong>KRYSTINA</strong></p>
    </div>
    <div class="frame-img">
        <img src="/assets/img/ca/viet.jpeg" alt="CA Viet avatar" />
        <p>CA <strong>VIET</strong></p>
    </div>
</div>
