class Message < ApplicationRecord
  belongs_to :users
  validates :content, presence: true
  after_create_commit { MessageBroadcastJob.perform_later self }
end
