class Comment < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  # validates :comment, presence: true, unless: :was_attached?

  # def was_attached?
  #   self.image.attached?
  # end
  def self.search(search)
    if search
      where(['business_name LIKE ?', "%#{search}%"])
    else  
      all  
    end  
  end
end
