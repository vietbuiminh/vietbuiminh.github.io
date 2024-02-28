---
layout: main
title: MusicStand
full-title: "Foldable Music Stand"
image: /assets/img/music-stand/violinist-w-stand.png
image-alt: 3D Modeling of the improved music stand with the human scale
description: An Engineering design modeling project on improving the foldable music stand.
categories: [writing, research, engineering]
tags: [writing, research, engineering, design, art]
---

<style>
    .gallery {
        flex-direction: column; 
        justify-content: space-between;
        position: relative; 
        width: 230px;
        margin-right: 20px;
    }
    .gallery a {
        width: 100%;
        height: 100%;
    }
    .gallery img {
        width: 100%;
        height: 100%;
        border-right: none;
    }
    .gallery h2 {
        padding: 0 10px 10px;
        font-size: 30px;
        margin-top: 0; 
        line-height: 1em;
    }
    .gallery p {
        padding: 0 10px 10px;
        font-size: 20px;
    }
    .gallery .link {
        text-align: center;
    }
</style>
# {{ page.full-title }}
![{{ page.image-alt }}]({{ '/assets/img/music-stand/improved-parts.png' | relative_url }})

{{ page.description}}

## Engineering Project:

<style>
    ul {
        margin-left: 2em;
    }
</style>

- Final Project from ENGR 375 Engineering Design
- Dr. Joshua Dyer
- Presented and submitted in December 2022
- Engineering & Physics
- The people behind this project: Viet M. Bui, Amanda Gravelle, Molly Garrison
- Presentation link <a class="link hover-underline-animation" href="/assets/docs/engineering/presentation.pdf" target="_blank">here</a>
- Report link here <a class="link hover-underline-animation" href="/assets/docs/engineering/written-report.pdf" target="_blank">here</a>

### Intro
Music stands like this one are used primarily for practicing rather than performance due to their portable but flimsy nature. The market segment is enormous; according to DataUSA, 2.12 million music majors are currently in the workplace, with projected growth of 3.22%. This statistic represents only a sliver of musicians in the United States – it does not include the millions of Americans who play music without a music degree, including students still in school, those who play as a hobby, and professionals in the workplace.

Our improvement is straightforward and practical; its design makes it robust, it does not take up significant extra space, it is inexpensive to manufacture, and it efficiently addresses the two primary issues that we found with the original stand. The 3D printed nature of our component means that it is flexible, allowing it to fit on a wide variety of stand types regardless of brand. Given the low cost of the stand, we concluded that our solution must also be very low cost, otherwise consumers would merely purchase a new stand. This design does not appear to be overly complex, but this is its primary virtue.

<div class="flex">
    {% for image in site.static_files %}
        {% if image.path contains 'assets/img/music-stand' %}
            <div class="gallery">
                <a target="_blank" href="{{ image.path }}" >
                    <img class="lazy" data-src="{{ image.path }}" alt="graphics from saola"/>
                </a>
            </div>
        {% endif %}
    {% endfor %}
</div>
