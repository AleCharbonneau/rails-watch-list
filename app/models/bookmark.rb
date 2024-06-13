class Bookmark < ApplicationRecord
  # belongs to a movie
  # belongs to an list
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list }
  # comment cannot be shorter than 6 characters
  validates :comment, length: { minimum: 6 }
end
