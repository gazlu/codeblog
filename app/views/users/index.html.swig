<div class="hero-unit">
  <h2>All Users</h2>
  <a href="/users/add" class="btn pull-right">Create a new User</a>
</div>

{% if users %}
<div id="users-list">
{% for user in users %}
  <div class="row list-item" id="user-{{ user.id }}">
    <div class="span8">
      <h3><a href="/users/{{user.id}}">{{user.id}}</a></h3>
    </div>
    <div class="span4">
      <h3><i class="icon-list-alt"></i>{{user.id}}</h3>
    </div>
  </div>
{% endfor %}
{% endif %}
</div>
