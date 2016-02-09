assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!


=======================
Thomas + Julia


Simple polymorphic relationship: tags

Also need a Author model: has_many :articles, has_many :comments

Parent models: Articles and Comments

Terminology: taggable, Articles and Comments are both "taggable"

Tags have: a tagger (author that applied the tag), taggable_type (either "Article" or "Comment"), taggable_id (id from the parent)