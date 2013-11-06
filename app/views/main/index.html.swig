{{ styleLink('/plugins/codemirror/lib/codemirror.css', {rel:'stylesheet'}) }}
{{ styleLink('/plugins/codemirror/theme/base16-dark.css', {rel:'stylesheet'}) }}
{{ scriptLink('/plugins/codemirror/lib/codemirror.js', {type: 'text/javascript'}) }}
{{ scriptLink('/plugins/codemirror/mode/javascript.js', {type: 'text/javascript'}) }}
{{ styleLink('/plugins/sceditor/themes/buttons.min.css', {rel:'stylesheet'}) }}
{{ styleLink('/plugins/magicsuggest/magicsuggest-1.3.0-min.css', {rel:'stylesheet'}) }}
<div class="container boxcontainer">
	<div class="row blogcontrols">
		<div class="col-lg-6 editbox">
			<textarea name="code" id="code" placeholder="Write your code here"></textarea>
		</div>
		<div class="col-lg-6 editbox">
			<textarea name="blog" id="blog" class="blog hide" placeholder="Blog it here"></textarea>
		</div>
	</div>
</div>

<!-- Action Bar 
<div class="btn-group appnav">
	<a href="/@Model.Id/fork" class="btn btn-warning"><i class="icon-reply"></i> Fork</a>
	<a href="/" class="btn btn-success"><i class="icon-plus"></i> New</a>
	<a href="/post" class="btn btn-info"><i class="icon-list"></i>All Posts</a>
</div>-->
<!-- /Action Bar -->
<!-- Bottom Nav -->
<div class="row">
	<header class="navbar navbar-inverse navbar-fixed-bottom" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle inverse" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
					<span class="sr-only">
						Toggle navigation
					</span>
					<span class="icon-bar">
					</span>
					<span class="icon-bar">
					</span>
					<span class="icon-bar">
					</span>
				</button>
				<a class="navbar-brand" href="/">
					<img src="/img/favicon.png" height="24" width="24" alt="CodeBlog">
					CodeBlog <img src="/img/favicon.png" height="24" width="24" alt="CodeBlog">
				</a>
			</div>
			<ul class="nav navbar-nav">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							Posts
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="/post/all"><span class="glyphicon glyphicon-align-justify"></span> All Posts</a></li>
							<li><a href="/search"><span class="glyphicon glyphicon-search"></span> Search Posts</a></li>
							<li class="divider"></li>
							<li><a href="/"><span class="glyphicon glyphicon-repeat"></span> Start Over</a></li>
						</ul>
					</li>
				</ul>
			<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
				<form class="navbar-form navbar-left" role="search" id="postForm" method="post" name="postForm" action="/savepost">
					<div class="form-group">
						<select name="language" class="form-control" data-toggle="tooltip" data-placement="top" title="Language Applicable for this post">
							<option value="">Language--></option>
							<option>PHP</option>
							<option>Node</option>
							<option>Rails</option>
							<option>C#</option>
							<option>Java</option>
							<option>VB.NET</option>
						</select>
					</div>
					<div class="form-group">
						<select name="framework" class="form-control" data-toggle="tooltip" data-placement="top" title="Framework Applicable for this post">
							<option value="">Framework--></option>
							<option value="Geddy">Geddy</option>
							<option value="Laravel">Laravel</option>
							<option value="CakePHP">CakePHP</option>
							<option value="CodeIgniter">CodeIgniter</option>
						</select>
					</div>
					<div class="form-group">
						<input type="text" name="tags" id="tags" value="" class="form-control col-lg-12" placeholder="Post Tags">
						<input type="hidden" name="hdnCode" id="hdnCode" value="">
						<input type="hidden" name="hdnBlog" id="hdnBlog" value="">
						<input type="hidden" name="title" id="title" value="">
					</div>
					<button type="button" id="postIt" name="postIt" class="btn btn-primary">Save Post</button>
					<a href="/" id="startover" name="startover" class="btn btn-danger">Start Over</a>
				</form>
			</nav>
		</div>
	</header>
</div>
<!-- /Bottom Nav -->
<script src="/plugins/magicsuggest/magicsuggest-1.3.0-min.js" type="text/javascript"></script>
{{ scriptLink('/plugins/ckeditor/ckeditor.js', {type: 'text/javascript'}) }}
{{ scriptLink('/plugins/ckeditor/adapters/jquery.js', {type: 'text/javascript'}) }}
<script>
var _code = $('textarea#code');
var _blog = $('textarea#blog');

var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
	lineNumbers: true,
	styleActiveLine: true,
	matchBrackets: true,
	theme: 'base16-dark'
});

_blogEditor = _blog.ckeditor();

$(document).ready(function(argument) {
	$("html").niceScroll({styler:"fb",cursorcolor:"#000"});
	$("div#CodeMirror").niceScroll({styler:"fb",cursorcolor:"#000"});
	_blog.niceScroll({styler:"fb",cursorcolor:"#000"});
	$('#tags').magicSuggest({
		data: 'Snippet,bootstrap,nodejs,angularjs,ko,Geddy',
		emptyText: 'Add Tags to this post'
	});

	window.prettyPrint && prettyPrint();
	$('button#postIt').click(function() {
		$('input#hdnCode').val(editor.getValue());
		$('input#hdnBlog').val(_blog.val());
		var title = 'Yet another codeblog post';
		if (title = prompt("Mind a 'codeblog post title'")) {
			$('input#title').val(title);
			$('form#postForm').submit();
		};
	});
	$('.CodeMirror-vscrollbar').niceScroll({styler:"fb",cursorcolor:"#000"})
	$('.CodeMirror-hscrollbar').niceScroll({styler:"fb",cursorcolor:"#000"})
});
</script>