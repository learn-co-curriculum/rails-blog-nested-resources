---
tags: rails, strong params, nested resources, collections, partials, REST
language: ruby
resources: 1
---

# Rails Blog: Nested Resources and Rendering Collections

We're going to add another feature to our blog app: the ability comment on a post.

1. Create a migration, model, and controller for Comment (let's run rails generate model and rails generate controller).
2. Associate comment and post and user.
3. Comment should have content, a user_id, and a post_id.
4. Let's create some validations on comment; content should always be present.
5. Comments will be a resource nested under posts. Why? Logically, we only care about comments when they pertain to a specific post.

Check out the documentation on [Nested Resources](http://guides.rubyonrails.org/routing.html#nested-resources).

6. On an individual post, we want to have a form to submit a comment. For fun, and for best Rails practices, let's make it a partial that we yield to.  Refer to the documentation on [Layouts, Rendering, and Collections](http://guides.rubyonrails.org/layouts_and_rendering.html#understanding-yield).
7. Remember, comment is associated with a post, so we need to include the correct params on the post controller. We also want to associate a comment with a user too. For now (before we have a login system), the user will type in their name.

