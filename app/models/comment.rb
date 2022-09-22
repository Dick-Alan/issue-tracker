class Comment < ApplicationRecord
  include Visible
  
  belongs_to :article

  validates :commenter, presence: true, length: { maximum: 21 }
end
