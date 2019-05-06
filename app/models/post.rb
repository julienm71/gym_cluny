class Post < ApplicationRecord
  belongs_to :user
  validates :titre, :titre_secondaire, :description, :image, :user_id, presence: true
end
