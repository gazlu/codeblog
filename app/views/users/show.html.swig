<div class="hero-unit">
  <h2 class="id">{{ user.id }}</h2>
  <a href="/users/{{params.id}}/edit" class="btn pull-right">Edit this user</a>
</div>

<h2>User Properties</h2>
{% for prop in user %}
<div class="row list-item">
  <div class="span4">
    <h3>{{loop.key}}</h3>
  </div>
  <div class="span8">
    <h3><i class="icon-list-alt"></i><span class="{{ loop.key }}">{{ prop }}</span></h3>
  </div>
</div>
{% endfor %}