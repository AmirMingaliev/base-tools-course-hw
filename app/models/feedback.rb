class Feedback
  include ActiveModel::Model

  attr_reader :name, :email, :body

  validates :name, :email, :body, presence: true
end
