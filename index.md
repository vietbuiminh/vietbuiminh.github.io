---
title: about
layout: main
description: Viet M Bui, PhD Student studying the interaction between sea-level and sediment transport of delta regions.
---

<h1 style="text-transform:lowercase;">hello there!</h1>

Welcome to my tiny web corner!

<p>
<img src="img/IMG_4496.jpeg" alt="Me in the water of Whitewater river in Minnesota">
</p>

If you have not known me, here are a few gists that you might find interesting.
Born in Ho Chi Minh City, Vietnam,
I have been to various places with different stages of my education from Oregon to Washington, Illinois to Minnesota. 
Currently, I am a researcher in Dr. Jorge Lorenzo-Trueba's Coastal Dynamic Lab at University of Florida.
I am also an engineer, a computer scientist, and someone who would go ahead and hug tree when I see one. 

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
