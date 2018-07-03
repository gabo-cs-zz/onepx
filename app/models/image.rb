class Image < ApplicationRecord
  # Add the carrierwave reference
  mount_uploader :photo, PhotoUploader

  # Map the category numbers for pictures.
  enum category: %w(portrait landscape city\ exploration nature animals)

  # Setting the name attribute as required.
  validates :name, presence: true

  # We have to convert the grabbed tags into Array and/or String

  # Getting the tags, in string form.
  def tags_text
    self.tags.join(',')
  end

  # Setting the tags, in array form.
  def tags_text=(value)
    self.tags = value.split(',').map{ |tag| tag.strip }
  end
end
