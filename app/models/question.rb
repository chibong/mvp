class Question< ActiveRecord::Base

  belongs_to :user
  has_many :answers
  validates :summary, presence: true, uniqueness: true

end
