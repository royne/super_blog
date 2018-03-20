class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, :body, presence:true
  validates :body, length: {minimum: 250}

  has_attached_file :image, styles: { medium: "1110x500>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
