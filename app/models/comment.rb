class Comment < ApplicationRecord
  
  has_many :children, class_name: "Comment", foreign_key: "parent_id"
  belongs_to :parent, class_name:  "Comment", optional: true

  belongs_to :post
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 240 }
end
