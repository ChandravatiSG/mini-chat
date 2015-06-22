class Comment < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true, length: {maximum: 2000}

  scope :old_comments, -> {where('created_at<?', Date.today.to_time.beginning_of_day-40.days)}
  scope :delete_old_comments, -> {old_comments.update_all(deleted_at: 'TRUE')}
end
