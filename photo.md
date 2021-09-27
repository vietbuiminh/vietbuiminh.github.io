---
title: Photos
layout: main_photo
description: Latest photos from moon festival
---

Click on to get full size photos.

<style>
    .gallery {
        flex-direction: column; 
        justify-content: space-between;
        position: relative; 
        width: 200px;
        margin-right: 10px;
        margin-bottom: 10px;
        border-radius: 1px;
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
    @media (max-width: 68em) {
        .gallery {
            width: 20vw;
            margin-right: 1vw;
            margin-bottom: 1vw;
        }
    }
</style>
<div class="flex">
    {% for image in site.static_files %}
        {% if image.path contains 'assets/img/moonfest/JPG' %}
            <div class="gallery">
                <a target="_blank" href="{{ image.path }}" >
                    <img width="10%" height="10%" class="lazy" data-src="{{ image.path }}" alt="{{ image-alt }}" />
                </a>
            </div>
        {% endif %}
    {% endfor %}
</div>
