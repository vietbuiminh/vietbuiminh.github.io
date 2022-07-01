---
title: Viet's Workout Guide Image Storage
layout: main_workout
description: Viet can remember much of his workout routine. He indeed keeps track of the work out plans on his Notion but he need to check if his form is correct. He use this page to double check that 😂.
---
Click on to get full size photos.

<style>
    .gallery {
        flex-direction: column; 
        justify-content: space-between;
        position: relative; 
        border-radius: 1px;
        margin-bottom: 0 !important;
    }
    .gallery a {
        width: 100%;
        height: 100%;
    }
    .gallery img {
        width: 100%;
        border-right: none;
        border-radius: 1px;
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
    .grid {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-gap: 1em;
    }
    @media (max-width: 68em) {
        .gallery {
            width: 40vw;
            margin-right: 1vw;
            margin-bottom: 1vw;
        }
        .grid {
            grid-template-columns: 1fr 1fr;
        }
    }
</style>
<div class="grid">
    {% for image in site.static_files %}
        {% if image.path contains 'assets/img/workout-img' %}
            <div class="gallery">
                <a target="_blank" href="{{ image.path }}" >
                    <img width="10%" height="10%" class="lazy" data-src="{{ image.path }}" alt="{{ image-alt }}" />
                </a>
            </div>
        {% endif %}
    {% endfor %}
</div>