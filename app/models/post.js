var Post = function() {
		this.defineProperties({
			title: {
				type: 'string'
			},
			code: {
				type: 'text'
			},
			blog: {
				type: 'text'
			},
			language: {
				type: 'string'
			},
			framework: {
				type: 'string'
			},
			tags: {
				type: 'text'
			},
			forkedfrom: {
				type: 'string'
			},
			createdby: {
				type: 'string'
			},
			createdon: {
				type: 'datetime'
			}
		});
		
	};

exports.Post = Post;
Post = geddy.model.register('Post', Post);