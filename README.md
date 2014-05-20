---
tags: rails, strong params, nested resources, collections, REST
language: ruby
resources: 3
---

# Rails Blog: Nested Resources and Rendering Collections

We're going to add another feature to our blog app: the ability comment on a post.

## Nesting Resources

1. Generate a model for Comment.
2. Associate comment and post and user.
3. Comment should have content, a user_id, and a post_id. 
4. Let's create some validations on comment; content should always be present.
5. Generate a controller for comment to handle all of the actions. We only need: new, create, edit, update, and destroy. Be sure to permit appropriate params in a private method.
6. Comments will be a resource nested under posts. Why? Logically, we only care about comments when they pertain to a specific post.

Check out the documentation on [Nested Resources](http://guides.rubyonrails.org/routing.html#nested-resources), specifically on how to only include certain routes; have them correlate with what we have in our controller.

## Posting a Comment to a Post

7. Edit the show page for a post to include all comments for the post.
8. On the post show page, we want to have a form to submit a comment. Build out a form for that takes an array as a parameter, and has a [hidden field](http://apidock.com/rails/ActionView/Helpers/FormHelper/hidden_field) to handle the `post_id`. 
9. Be sure to include `comments_attributes` on the posts controller.

## Rendering Collections, a Refactor

We're going to do a bit refactoring on our posts index page by [rendering collections](http://guides.rubyonrails.org/layouts_and_rendering.html) instead of iterating through our @posts in the view. Rendering collections is useful in keeping a complex view looking clean, and making a view DRYer. Our posts index page isn't the most complicated view, but it's a great starting point for refactoring our views. Give it a try elsewhere in our blog app as well.


## Resources

[Nested Resources](http://guides.rubyonrails.org/routing.html#nested-resources)

[Hidden Fields](http://apidock.com/rails/ActionView/Helpers/FormHelper/hidden_field)

[Rendering Collections](http://guides.rubyonrails.org/layouts_and_rendering.html)
