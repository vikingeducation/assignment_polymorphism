assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!



Polymorphism

Entities: Post, Comment, Image

Relationships:

    A post may be commented on (one to many)
    An image may be commented on (one to many)
    A comment may be commented on (one to many)
    ** A comment must know who its parent is **

Tables:

    Post:
    * ID => PK
    * Title => string
    * Body => string

    Image:
    * ID => PK
    * Caption => string
    * url => string

    Comment:
    * ID => PK
    * Comment_body => string
    * Parent_ID => int, FK
    * Parent_class => string