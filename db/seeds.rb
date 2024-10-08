# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
# Delete all existing movies before seeding new ones
Movie.destroy_all
more_movies = [
    {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
    {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
    {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
    {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
    {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
    {:title => 'Kimi No Nawa', :rating => 'PG-13',
    :release_date => '15-Aug-2016'},
    {:title => 'Kung Fu Panda', :rating => 'PG-13',
    :release_date => '19-Sep-2008'},
    {:title => 'Deadpool', :rating => 'R',
    :release_date => '12-Feb-2016'},
    {:title => 'Logan', :rating => 'R', 
    :release_date => '03-Mar-2017'},
    {:title => 'John Wick', :rating => 'R', 
        :release_date => '24-Oct-2014'},
    {:title => 'Mad Max: Fury Road', :rating => 'R', 
        :release_date => '15-May-2015'},
    {:title => 'The Revenant', :rating => 'R', 
        :release_date => '25-Dec-2015'},
]

more_movies.each do |movie|
  Movie.create!(movie)
end
