class Image < ApplicationRecord
  # Add the carrierwave reference
  #mount_uploader :cover, PhotoUploader

  # Map the category numbers for pictures.
  enum category: %w(portrait landscape city\ exploration nature animals)

  # Setting the name attribute as required.
  validates :name, presence: true

  # Add the paperclip reference
  #has_file_attached :cover, styles: { medium: "1280x720", thumb: "800x600" }
  #validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

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
