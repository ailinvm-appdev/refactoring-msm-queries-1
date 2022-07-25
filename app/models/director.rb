# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
  
    my_filmography_id = self.movie_id

    matching_films = Movie.where({ :id => my_filmography_id })
    
    the_movie = matching_films.at(0)

    return the_movie
    
  end
end
