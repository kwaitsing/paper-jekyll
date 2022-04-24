---
layout: default
permalink: /pages/blog
title: Blogs
row: true
list: main
---
{% for post in site.posts %}
{% if post.hidden != true %}
<div class="col s12 m7 center">
  <div class="card center waves-effect {{ site.css }} lighten-5">
        {% if post.cover %}
        <div class="card-image z-depth-2 waves-effect waves-light img-responsive cover">
          <img src="{{ post.cover }}" onerror="this.style.display='none'" />
        </div>
        {% endif %}
        <div class="card-stacked">
          <div class="card-content">
            <h2 class="header">{{ post.title }}</h2>
              <p>{{ post.date | date: "%b %-d, %Y" }}{% if post.author %} • {{ post.author }}{% endif %}{% if post.meta %} • {{ post.meta }}{% endif %}</p><hr>
              <p>{{ post.content | strip_html | truncatewords: 20}}</p>
          </div>
        <div class="card-action">
        <a href="{{ post.url | prepend: site.baseurl }}" class="waves-effect waves-grey btn {{ site.css }}">View</a>
      </div>
    </div>
  </div>
</div>
{% endif %}
{% endfor %}
