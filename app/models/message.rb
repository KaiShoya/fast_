class Message < ApplicationRecord
  has_many :messages
  validates :content, presence: true
  after_create_commit { MessageBroadcastJob.perform_later self }
end
