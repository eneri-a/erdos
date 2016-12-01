class Message < ApplicationRecord
  # ensure that all messages are sorted in ascending order
  default_scope { order(created_at: :asc) }
  belongs_to :chatroom
  belongs_to :user

  validates :content, presence: true, length: {minimum: 1}
  #something about user?
end
