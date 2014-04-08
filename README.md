# Hacker News clone
## Hacker News is a site where nerds post links to articles, vote on which ones they like best, and discuss the articles with comments. Let's make a simplified version of Hacker News.

Once again, don't worry about users logging in yet - we'll get to that very soon!

Here are your stories:

As a user, I want to post a link, so that I can share it with other nerds.
As a user, I want to vote up other people's links, so that I can promote links that I like.
As a user, I want the links with the most votes to be listed first, so that I can know what's most popular.
As a user, I want the link ranking to be a function of both the number of votes and the time since the post, so that popular links don't stay on the homepage forever. Hint: come up with a way to score links where they get a certain number of points for how new they are, and a certain number for how many votes they have. Don't spend too much time fussing with the algorithm - just make up something simple.
As a user, I want to comment on a link, so that I can have a discussion about the article that was submitted.
As a user, I want to comment on a comment, so that I can have a discussion about the comment. Hint: use polymorphism so that a comment can belong to a post or to another comment. Your associations will look something like this:
class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
end

class Link < ActiveRecord::Base
  has_many :comments, :as => :commentable
end
To display comments on comments, make each comment a partial. For each comment, loop through the comments on the comment, recursively rendering partial within itself.

Previous lesson
Next lesson
Section contents
Table of contents
© 2014 Epicodus, Inc.
