# Practice with Polymorphic Associations
========================

This quick sprint assignment to build simple polymorphic relationships (with seeded data) and explore it both from the command line and via a very simple front end. This project is purely focused on the associations so no styling on the front end.


## Getting Started

To get the app started locally you'll need to:

1. Clone the repo with `git clone REPO_URL`
2. `cd` into the project
3. Run
  - `$ bundle install`
  - `$ bundle exec rake db:migrate`
  - `$ bundle exec rake db:seed`
(# take a look around the schema file to see how models were created)

4. Start up the console with `rails c` command

```
# simple association methods
> Photo.first.commentable
> Article.first.commenatble

```


## About the author
[Dariusz Biskupski](http://dariuszbiskupski.com/)

## Acknowledgments

This is an assignment created for [Viking Code School](https://www.vikingcodeschool.com/)
