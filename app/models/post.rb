class Post < ApplicationRecord
  include PgSearch::Model
  extend FriendlyId

  validates :title, :author, :body, presence: true
  
  has_many :comments, dependent: :destroy
  friendly_id :title, use: :slugged
  pg_search_scope :search, against: [:title, :author, :body]
end
