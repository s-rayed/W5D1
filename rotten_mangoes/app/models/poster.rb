class Poster < ActiveRecord::Base
  attr_accessible :movie_id, :poster
  belongs_to :movie
  mount_uploader :poster, PosterUploader
end