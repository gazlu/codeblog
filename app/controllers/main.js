var Main = function() {
		//Main or welcome view
		this.index = function(req, resp, params) {
			this.respond({
				params: params
			}, {
				format: 'html',
				template: 'app/views/main/index'
			});
		};

		//Parameter - id
		this.fork = function(req, resp, params) {
			var _self = this;
			var _post;
			geddy.model.Post.first(params.id, function(err, post) {
				if (err) {
					throw err;
				}
				if (!post) {
					throw new geddy.errors.NotFoundError();
				} else {
					_post = post;
				}
			});
			this.respond({
				params: params,
				post: _post
			}, {
				format: 'html',
				template: 'app/views/main/fork'
			});
		};

		//Save blog post
		this.savepost = function(req, resp, params) {
			var self = this;
			var post = geddy.model.Post.create({
				title: params.title,
				code: params.hdnCode,
				blog: params.hdnBlog,
				language: params.language,
				framework: params.framework,
				tags: params.tags,
				forkedfrom: 0,
				createdby: 1,
				createdon: new Date()
			});
			if (!post.isValid()) {
				this.respondWith(post);
			} else {
				post.save(function(err, data) {
					if (err) {
						throw err;
					}
					self.redirect('/' + data.id);
				});
			}
		};

		//Save blog post
		this.savecomment = function(req, resp, params) {
			var self = this;
			var _comment;
			var comment = geddy.model.Comment.create({
				post: params.post,
				comment: params.comment,
				helpful: params.helpful != undefined
			});
			if (!comment.isValid()) {
				this.respondWith(comment);
			} else {
				comment.save(function(err, comment) {
					if (err) {
						throw err;
					}
					_comment = comment;
					self.respond({
						params: params,
						comment: _comment
					}, {
						format: 'json'
					});
				});
			}
		};

		//Show blog post
		this.show = function(req, resp, params) {
			var _self = this;
			var _post;
			geddy.model.Post.first(params.id, function(err, post) {
				if (err) {
					throw err;
				}
				if (!post) {
					throw new geddy.errors.NotFoundError();
				} else {
					_post = post;
				}
			});
			this.respond({
				params: params,
				post: _post
			}, {
				format: 'html',
				template: 'app/views/post/show'
			});
		};

		//Parameter - id
		this.post = function(req, resp, params) {
			this.respond({
				params: params
			}, {
				format: 'html',
				template: 'app/views/post/index'
			});
		};

		this.posts = function(req, resp, params) {
			var self = this, _posts;

			geddy.model.Post.all(
				function(err, posts) {
				if (err) {
					throw err;
				}
				if (!posts) {
					throw new geddy.errors.NotFoundError();
				} else {
					_posts = posts;
				}
			});
			this.respond({
				params: params,
				posts: _posts
			}, {
				format: 'html',
				template: 'app/views/post/all'
			});
		};

		this.postcomments = function(req, resp, params) {
			var _self = this;
			var _post, _comments;
			geddy.model.Post.first(params.id, function(err, post) {
				if (err) {
					throw err;
				}
				if (!post) {
					throw new geddy.errors.NotFoundError();
				} else {
					_post = post;
				}
			});
			geddy.model.Comment.all({
				'post': params.id
			}, function(err, comments) {
				if (err) {
					throw err;
				}
				if (!comments) {
					throw new geddy.errors.NotFoundError();
				} else {
					_comments = comments;
				}
			});
			this.respond({
				params: params,
				post: _post,
				comments: _comments
			}, {
				format: 'html',
				layout: false,
				template: 'app/views/post/commentform'
			});
		};

		//Parameter - id
		this.tags = function(req, resp, params) {
			this.respond({
				params: params,
				data: [{
					'title': 'item1',
					'title': 'item1',
					'title': 'item1'
				}]
			}, {
				format: 'json'
			});
		};
	};

exports.Main = Main;