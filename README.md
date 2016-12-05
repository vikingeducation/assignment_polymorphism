assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

Teachers

  * name: string

  * composite key:
    - institution_id: integer
    - institution_type: string
      - middle_school
      - high_school
      - college

  - belongs_to :institution, polymorphic: true

MiddleSchool

  * name: string

  - has_many :teachers, as: :institution

HighSchool

  * name: string

  - has_many :teachers, as: :institution

College

  * name: string

  - has_many :teachers, as: :institution
