class Content < ApplicationRecord
  belongs_to :discipline
  belongs_to :user

   enum :status, {
    draft: 0,
    submitted: 1,
    pending_review: 2,
    reviewed: 3,
    approved: 4,
    rejected: 5
  }
  has_rich_text :content
  validates :title, presence: true
  # validates :description, presence: true
  # validates :link, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "deve ser um URL válido" }
end
