=begin
assignment_polymorphism
=======================

Cheer time! When I say "Poly", you say "Morphic", "Gon", "Vore", "Glot" or whatever your receiver returns!

Joseph Lozano
Olga Avya

=end

# Model snapInstatwittergramchat

# Likes

# Models : Pictures, Links, Posts


class Picture 

  belongs_to :likeable

  has_many :likes

end

class Link
  has_many :likes
end

class Post 
  has_many :likes
end

class Like

  has_many :likeables

  has_many :pictures, :through => :likeables

end


##########

# Tables


    #   table : "likes"
#string    # likeable_type  Picture      Post    Link
#int       # likeable_id     55             2       3    
           # liker_id       

        table : pictures
        title
        locaton

















