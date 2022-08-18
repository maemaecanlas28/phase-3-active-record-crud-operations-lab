require "pry"

class Movie < ActiveRecord::Base

    # saves the title to the movie + creates a new record in the database
    def self.create_with_title (title)
        self.create(title: title)
    end

    # returns the 1st item in the movies tables
    def self.first_movie 
        self.first
    end

    # returns the last item in the movies tables
    def self.last_movie
        self.last
    end

    # returns the number of items in the movies table
    def self.movie_count
        self.count 
    end

    # returns the movie with the corresponding id
    def self.find_movie_with_id (id)
        self.find_by(id: id)
    end

    # returns the movie with the corresponding attributes
    def self.find_movie_with_attributes (*args)
        self.find_by(*args)
    end

    # returns a list of movies released after 2002
    def self.find_movies_after_2002
        self.where("release_date > ?", 2002)
    end

    # updates one movie
    def update_with_attributes(*args)
        self.update(*args)
    end

    # updates the title of all the movies
    def self.update_all_titles(title)
        self.update_all(title: title)
    end

    # deletes the record with the corresponding id
    def self.delete_by_id (id)
        self.destroy(id)
    end

    # deletes ALL the movies from the movies table
    def self.delete_all_movies
        self.destroy_all
    end
end