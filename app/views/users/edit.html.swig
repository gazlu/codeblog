<div class="hero-unit">
  <form id="user-form" class="form-horizontal" action="/users/{{params.id}}?_method=PUT" method="POST">
    <fieldset>
      <legend>Update this User</legend>
      {% if params.errors %}
      <div class="control-group">
        <ul>
        {% for err in params.errors %}
          <li>{{err}}</li>
        {% endfor %}
        </ul>
      </div>
      {% endif %}

                              <div class="control-group">
        <label for="username" class="control-label">username</label>
        <div class="controls">
                      <input type="text" class="span6" name="username" value="{{user.username}}" />
                    </div>
      </div>
                        <div class="control-group">
        <label for="password" class="control-label">password</label>
        <div class="controls">
                      <input type="password" class="span6" name="password" value="{{user.password}}" />
                    </div>
      </div>
                        <div class="control-group">
        <label for="firstname" class="control-label">firstname</label>
        <div class="controls">
                      <input type="text" class="span6" name="firstname" value="{{user.firstname}}" />
                    </div>
      </div>
                        <div class="control-group">
        <label for="lastname" class="control-label">lastname</label>
        <div class="controls">
                      <input type="text" class="span6" name="lastname" value="{{user.lastname}}" />
                    </div>
      </div>
                        <div class="control-group">
        <label for="email" class="control-label">email</label>
        <div class="controls">
                      <input type="text" class="span6" name="email" value="{{user.email}}" />
                    </div>
      </div>
            
      <div class="form-actions">
        <input type="submit" class="btn btn-primary" value="Save" />
        <input type="submit" class="btn btn-danger" value="Delete" formaction="/users/{{params.id}}?_method=DELETE" />
      </div>
    </fieldset>
  </form>
</div>
