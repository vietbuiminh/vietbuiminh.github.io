---
title: about
layout: main
---

# CREATIVE CODER & STE<a style="text-transform: capitalize" class="link coloranimate hover-underline-animation" href="/art">Art</a>M ADVOCATE

Việt Bùi, a creative artist & coder, a student, a naturalist, and a global citizen. Born and raised in Ho Chi Minh City (HCMC), Vietnam.

Using art to influence people. Graphic artist for clubs, and non-profit organizations in HCMC and the United States. Coder in a few hackathons, and coder by everyday.

Feel free to browse around for future / <a class="link hover-underline-animation"
        href="https://vietbuiminh.github.io/EDGE-Coding-Intern/lulac/">current</a> / <a
        class="link hover-underline-animation" href="http://webgeeksrus.com/test/her2o/">past</a> projects.
<br>
<br>
{% assign i = 0 %}
{% for category in site.categories %}

## {{ category[0] | upcase }}
{% assign sorted = category[1] | sort: 'date' | reverse  %}
{% assign post = sorted[0] %}

<div class="gallery" style="animation-delay:calc({% increment i %} * 0.1s);" >
{% if category[0] != "writing" %}
    <a target="_blank" href="{{ post.image }}">
        <img src="{{ post.image }}" alt="{{ post.img-alt }}" />
    </a>
{% endif %}
    <div class="desc">
        <h3 style="margin-top: 0">{{ post.full-title | upcase }}</h3>
        {% if category[0] == "writing" %}
        <tag style="font-size: 0.9em"><i>{{ post.date | date: "%Y-%m-%d" }}</i></tag>
        {% endif %}
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
<a class="link hover-underline-animation" href="{{category[0]}}">more &#x2192;</a>
{% endfor %}
<br>
Feeling adventurous? I enjoy going around the country to different national parks. Best overall are Mt.Rainier and Tongass.
<div class="imgrow">
        <a class="grayscl" target="_blank" href="./img/rainier.jpg">
                <img src="/img/rainier.jpg" alt="Mt. Rainier National Park">
        </a>
        <a class="grayscl" target="_blank" href="./img/me.jpg">
                <img src="/img/me.jpg" alt="Viet Bui in Seattle">
        </a>
        <a class="grayscl" target="_blank" href="./img/tongass.jpg">
                <img src="/img/tongass.jpg" alt="Tongass National Park">
        </a>
        <div class="sticker">
                <a>
                <img src="/img/ms-hiking-boots-emoji.png" alt="Hiking boots emoji">
                </a>
        </div>
</div>
<br>
