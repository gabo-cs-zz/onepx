class Image < ApplicationRecord
  # Map the category numbers for pictures.
  enum category: %w(portrait landscape city\ exploration nature animals)
end
