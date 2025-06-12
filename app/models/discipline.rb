class Discipline < ApplicationRecord

  has_many :contents, dependent: :destroy
  has_many :teacher_disciplines
  has_many :teachers, through: :teacher_disciplines
end
