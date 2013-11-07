<div class="comments padded">
	{% for comment in comments %}
		<div class="comment" data-id="{{ comment.id }}">
			<p class="content">
				{% if comment.helpful %}
					<span class="glyphicon glyphicon-check"></span>
				{% endif %}
				{{ comment.comment }}
				<a href="javascript:;" title="I like it">
					<span class="glyphicon glyphicon-thumbs-up"></span>
				</a>
			</p>
		</div>
	{% endfor %}
	<form name="frmComment" id="frmComment">
		<div>
			<input type="hidden" name="post" value="{{ post.id }}">
			<textarea class="form-control" name="comment" placeholder="Add a comment..."></textarea>
		</div>
		<div class="checkbox">
			<label for="helpful">
				<input type="checkbox" name="helpful" id="helpful" value="1">
				It was helpful!
			</label>
		</div>
		<div>
			<button class="btn btn-info" type="button" onclick="ShowPost._postComment()">
				Submit
			</button>
			<button class="btn btn-warning" type="button" onclick="ShowPost._toggleBoxes()">
				Dismiss
			</button>
		</div>
	</form>
</div>