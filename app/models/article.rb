class Article < ApplicationRecord
  belongs_to :user, default: -> { Current.user }

  has_rich_text :body

  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true
end
