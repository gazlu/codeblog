<link href="/plugins/code-prettify/prettify.css" rel="stylesheet">
<link href="/plugins/code-prettify/sons-of-obsidian.css" rel="stylesheet">
<div class="container boxcontainer">
	<div class="row blogcontrols titlebox">
		<div class="col-lg-12 bs-callout bs-callout-info" style="background: #fff">
			<blockquote>
				{{ post.title }}
			</blockquote>
		</div>
	</div>
	<div class="row blogcontrols">
		<div class="col-lg-6 editbox">
			<pre class="prettyprint linenums">
				{{ post.code }}
			</pre>
		</div>
		<div class="col-lg-12 commentbox jumbotron" style="display: none;">
			{{ post.blog }}
		</div>
		<div class="col-lg-6 editbox" style="color:#FFF">
			<p>
				{{ post.blog|raw }}
			</p>
		</div>
	</div>
	<div class="row blogcontrols navbar-fixed-bottom">
		<button type="button" onclick="ShowPost._toggleBoxes()" class="btn btn-default col-lg-12">
			<span class="glyphicon glyphicon-comment">
			</span>
			Leave a comment!
		</button>
	</div>
</div>
<!-- Action Bar -->
<div class="btn-group appnav">
	<a href="/{{ post.id }}/fork" class="btn btn-warning"><span class="glyphicon glyphicon-random"></span> Fork</a>
	<a href="/" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span> New</a>
	<a href="/post/all" class="btn btn-info"><span class="glyphicon glyphicon-list"></span> All Posts</a>
</div>
<!-- /Action Bar -->
<script src="/plugins/code-prettify/prettify.js">
</script>
<script type="text/javascript">
	var ShowPost = {
		_toggleBoxes: function() {
			$('div.editbox').toggle("slow");
			$('div.commentbox').toggle("slow");
			$('div.appnav').toggle();
			$('div.titlebox').toggle();
		},

		_commentBox: function() {
			$.get('/post/comments/{{ post.id }}', function(response) {
				$('div.commentbox').html(response);
			});
		},

		_postComment: function() {
			$.post('/savecomment', $('form#frmComment').serialize(), function(resp) {
				ShowPost._commentBox();
			});
		}
	};

	$(document).ready(function() {
		$("html").niceScroll({
			styler: "fb",
			cursorcolor: "#000"
		});
		ShowPost._commentBox();
		prettyPrint();
	})
</script>