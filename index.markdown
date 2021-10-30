---
layout: default
title: Front-page
---
<h3>Hi</h3>
<h4>here's <b>some</b> Text</h4>
<h4>And a</h4>
<a target="_blank" class="waves-effect waves-grey btn {{ site.css }} black-text z-depth-2">Button</a><br>
<hr>
<h5>Latest Post</h5>
{% for post in site.posts limit:1 %}
<div class="col s1 m1">
  <div class="card small waves-effect {{ site.css }} lighten-5">
        <div class="card-stacked">
          <div class="card-content">
            <h2 class="header">{{ post.title }}</h2>
              <p>{{ post.date | date: "%b %-d, %Y" }}{% if post.author %} • {{ post.author }}{% endif %}{% if post.meta %} • {{ post.meta }}{% endif %}</p><hr>
              <p>{{ post.content | strip_html | truncatewords: 50}}</p>
          </div>
        <div class="card-action">
        <a href="{{ post.url | prepend: site.baseurl }}" class="waves-effect waves-grey btn {{ site.css }} black-text">View</a>
      </div>
    </div>
  </div>
</div>
{% endfor %}
