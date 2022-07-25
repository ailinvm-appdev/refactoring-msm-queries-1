# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
  
    my_filmography_id = self.movie_id

    matching_films = Movie.where({ :id => my_filmography_id })
    
    the_movie = matching_films.at(0)

    return the_movie
    
  end
end
