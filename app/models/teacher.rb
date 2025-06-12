class Teacher < User
  has_many :teacher_disciplines
  has_many :disciplines, through: :teacher_disciplines

end