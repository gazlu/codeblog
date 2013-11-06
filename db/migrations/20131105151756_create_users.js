var CreateUsers = function () {
  this.up = function (next) {
    var def = function (t) {
          t.column('username', 'string');
          t.column('password', 'string');
          t.column('firstname', 'string');
          t.column('lastname', 'string');
          t.column('email', 'string');
        }
      , callback = function (err, data) {
          if (err) {
            throw err;
          }
          else {
            next();
          }
        };
    this.createTable('user', def, callback);
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
    this.dropTable('user', callback);
  };
};

exports.CreateUsers = CreateUsers;
