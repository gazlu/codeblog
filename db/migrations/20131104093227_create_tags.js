var CreateTags = function () {
  this.up = function (next) {
    var def = function (t) {
          t.column('title', 'string');
          t.column('isactive', 'string');
        }
      , callback = function (err, data) {
          if (err) {
            throw err;
          }
          else {
            next();
          }
        };
    this.createTable('tags', def, callback);
  };

  this.down = function (next) {
    var callback = function (err, data) {
          if (err) {
            throw err;
          }
          else {
            next();
          }
        };
    this.dropTable('tags', callback);
  };
};

exports.CreateTags = CreateTags;
