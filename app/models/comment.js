var Comment = function() {

    this.defineProperties({
      post: {
        type: 'string',
        required: true
      },
      comment: {
        type: 'text',
        required: true
      },
      commentby: {
        type: 'string'
      },
      helpful: {
        type: 'boolean'
      }
    })
};
/*
  login : { type: 'string', {required: true}}, 
  password : { type: 'string', {required: true}}, 
  lastName : { type: 'string'}, 
  firstName : { type: 'string'}, 

  this.validatesPresent('login'}, 
  this.validatesFormat('login', /[a-z]+/, {message: 'Subdivisions!'}}, 
  this.validatesLength('login', {min: 3}}, 
  // Use with the name of the other parameter to compare with
  this.validatesConfirmed('password : { type: 'confirmPassword'}, 
  // Use with any function that returns a Boolean
  this.validatesWithFunction('password', function (s) {
      return s.length > 0;
  }}, 

  // Can define methods for instances like this
  this.someMethod = function () {
    // Do some stuff
  };
  */

/*
// Can also define them on the prototype
Comment.prototype.someOtherMethod = function () {
  // Do some other stuff
};
// Can also define static methods and properties
Comment.someStaticMethod = function () {
  // Do some other stuff
};
Comment.someStaticProperty = 'YYZ';
*/

Comment = geddy.model.register('Comment', Comment);