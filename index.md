---
title: about
layout: main
description: Viet M Bui, PhD Student studying the interaction between sea-level and sediment transport of delta regions.
---

<h1 style="text-transform:lowercase;">hello there!</h1>

Welcome to my tiny web corner!

<div class="sticker standalone">
<a>
<img src="/img/me.webp" alt="me now">
</a>
</div>

<!-- <div class="imgrow">
        <a class="" target="_blank" href="/">
                <img src="/img/IMG_4496.jpeg" alt="Me in the water of Whitewater river in Minnesota">
        </a>
        <div class="sticker">
                <a>
                <img src="/img/me.webp" alt="me now">
                </a>
        </div>
</div> -->
<br/>
<br/>
I'm Viet, a PhD student in Dr. Jorge Lorenzo Trueba's Coastal Dynamics Lab at the University of Florida. I study how sea level and sediment transport interact to shape river deltas over millenial timescale. 

Born in Ho Chi Minh (HCM) City, Viet Nam, and my education took me to Oregon to Washington, Illinois and Minnesota before I landed in Florida. Along the way I became an engineering physicist - computer scientist, and an on-going earth scientist, but I'm still someone who will stop to hug a tree when I see one.

See what I'm up to <a class="link hover-underline-animation" href="{% link now.md %}">/now</a>

or past projects:

<div class="tags" style="justify-content: flex-start;">
    {% for tag in site.tags reversed %}
    <a class="tag link" href="{{ "tags/" | append: tag[0] | relative_url }}">#{{ tag[0] }}</a>
    {% endfor %}
</div>
<br><br>
<div class="imgrow">
        <a class="grayscl" target="_blank" href="./img/rainier.jpg">
                <img src="/img/rainier.jpg" alt="Mt. Rainier National Park">
        </a>
        <a class="grayscl" target="_blank" href="./img/tongass.jpg">
                <img src="/img/tongass.jpg" alt="Tongass National Park">
        </a>
        <a class="grayscl" target="_blank" href="./img/me.jpg">
                <img src="/img/holden.jpeg" alt="Holden Village">
        </a>
        <div class="sticker">
                <a>
                <img src="/img/ms-hiking-boots-emoji.png" alt="Hiking boots emoji">
                </a>
        </div>
</div>
<br>
