assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

Tingting

parents: bookstore, library
child: book


BOOK
belongs_to: :source, polymorphic: true

title: string
composite key: 
  source_id: integer
  source_type: string

LIBRARY
  name: string
  has_many :books, :as => :source

BOOKSTORE
  name:string
  has_many :books, :as => :source

