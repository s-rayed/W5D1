class Movie < ActiveRecord::Base

  scope :search, -> (search) { where('title LIKE :search OR director LIKE :search', {search: "%#{search}%"})}

  has_many :reviews

  validates :title,
    presence: true

  validates :director,
    presence: true

  validates :runtime_in_minutes,
    numericality: { only_integer: true }

  validates :description,
    presence: true

  validates :release_date,
    presence: true

  validate :release_date_is_in_the_past

  mount_uploader :image, ImageUploader

  def review_average
    reviews.sum(:rating_out_of_ten)/reviews.size unless reviews.nil?
  end

  def self.search_duration(duration)
    if duration == "Under 90 minutes"
      where('runtime_in_minutes < 90')
    elsif duration == "90 - 120 minutes"
      where('runtime_in_minutes >= 90 AND runtime_in_minutes <= 120')
    elsif duration == "Over 120 minutes"
      where('runtime_in_minutes > 120')
    elsif duration == "Select" 
      scoped
    end 
  end

  protected

  def release_date_is_in_the_past
    if release_date.present?
      errors.add(:release_date, "should be in the past") if release_date > Date.today
    end
  end

end