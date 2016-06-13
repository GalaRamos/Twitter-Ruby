class Tweet < ActiveRecord::Base
  validates :content, presence: true,
                      length: { in: 1..140 }
  default_scope -> { order(created_at: :desc) }
end
