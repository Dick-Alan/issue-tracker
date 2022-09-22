class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy
    
    validates :author, presence: true, length: { maximum: 21 }
    validates :title, presence: true, length: { maximum: 50 }
    validates :body, presence: true, length: { minimum: 10 }

    VALID_PRIORITIES = [ 'very low', 'low', 'medium', 'high', 'very high' ]

    validates :priority, inclusion: { in: VALID_PRIORITIES }
  
end
