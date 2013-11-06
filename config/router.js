var router = new geddy.RegExpRouter();

router.get('/').to('Main.index');
router.get('/:id').to('Main.show');
router.post('/savepost').to('Main.savepost');
router.get('/new').to('Main.index');
router.get('/search').to('Main.search');
router.get('/:id/fork').to('Main.fork');

router.get('/post/all').to('Main.posts');
router.get('/post/:id').to('Main.post');
router.get('/post/own/:id').to('Main.own');
router.get('/post/tags/:id').to('Main.tags');

router.get('/post/comments/:id').to('Main.postcomments');
router.post('/savecomment').to('Main.savecomment');

// Basic routes
// router.match('/moving/pictures/:id', 'GET').to('Moving.pictures');
//
// router.match('/farewells/:farewelltype/kings/:kingid', 'GET').to('Farewells.kings');
//
// Can also match specific HTTP methods only
// router.get('/xandadu').to('Xanadu.specialHandler');
// router.del('/xandadu/:id').to('Xanadu.killItWithFire');
//
// Resource-based routes
// router.resource('hemispheres');
//
// Nested Resource-based routes
// router.resource('hemispheres', function(){
//   this.resource('countries');
//   this.get('/print(.:format)').to('Hemispheres.print');
// });

// router.resource('comments');
// router.resource('users');
// router.resource('tags');
exports.router = router;