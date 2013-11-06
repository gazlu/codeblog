<div class="container">
	<h1>
		All Posts
		<a href="/" class="btn btn-success" title="Create Post"><span class="glyphicon glyphicon-plus-sign"></span></a>
	</h1>
	<div class="row">
		<div class="col-lg-12 table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th width="5%">
							#
						</th>
						<th>
							Post
						</th>
						<th width="30%">
							Actions
						</th>
					</tr>
				</thead>
				<tbody>
					{% for post in posts %}
					<tr>
						<td>
							<a href="javascript:;" title="#{{ post.id }}">#</a>
						</td>
						<td>
							{{ post.title }} {% for tag in post.tags.split(',') %}
								<a href="#">
									<span class="badge badge-info">{{ tag.replace('[', '') }}</span>
								</a>
							{% endfor %}
						</td>
						<td>
							<div class="btn-group">
								<a href="/{{ post.id }}" class="btn btn-actions btn-info"><span class="glyphicon glyphicon-fullscreen"></span> View</a>
								<a href="javascript:;" class="btn btn-actions btn-hotel"><span class="glyphicon glyphicon-eye-open"></span> Quick View</a>
								<a href="/{{ post.id }}/fork" class="btn btn-actions btn-warning"><span class="glyphicon glyphicon-random"></span> Fork</a>
							</div>
						</td>
					</tr>
					{% endfor %}
				</tbody>
			</table>
		</div>
	</div>
</div>