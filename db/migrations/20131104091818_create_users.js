var CreateUsers = function () {
  this.up = function (next) {
    var def = function (t) {
          t.column('name', 'string');
          t.column('username', 'string');
          t.column('password', 'string');
          t.column('email', 'string');
          t.column('phone', 'string');
        }
      , callback = function (err, data) {
          if (err) {
            throw err;
          }
          else {
            next();
          }
        };
    this.createTable('users', def, callback);
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
    this.dropTable('users', callback);
  };
};

exports.CreateUsers = CreateUsers;
