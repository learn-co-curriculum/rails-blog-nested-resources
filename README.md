

## Before doing this lab, you should have completed the following labs:
1. Rails Blog Scaffold
2. Rails Blog Associations Validations
3. Rails Blog Nested Forms

# Rails Blog: Comments

We're going to add another feature to our blog app: the ability to comment on a post.

<em>Before anything</em>, note that when you generate models, controllers, etc, be sure to include this option, so that it skips tests (which we already have): `--no-test-framework`

## Comments

1. Generate a model for Comment.
2. Associate comment and post and user, making the appropriate migration changes.
3. Let's create some validations on comment; content should always be present.
4. Generate a controller for comment. We only need a `create` action, because viewing comments will be handled on the posts show page. Be sure to permit appropriate params in a private method.
5. Comments will be a resource nested under posts. Why? Logically, comments only matter when they are associated with a post.

6. Get the model tests to pass.

Check out the documentation on [Nested Resources](http://guides.rubyonrails.org/routing.html#nested-resources).

## Posting a Comment to a Post

7. Edit the show page for a post to include all comments for the post.
8. On the post show page, we want to have a form to submit a comment. Build out a form for that takes an array as a parameter, and has a [hidden field](http://apidock.com/rails/ActionView/Helpers/FormHelper/hidden_field) to handle the `post_id`.

9. Get the comment features tests to pass.


## Resources

* [Nested Resources](http://guides.rubyonrails.org/routing.html#nested-resources)
* [Hidden Fields](http://apidock.com/rails/ActionView/Helpers/FormHelper/hidden_field)
