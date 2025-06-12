class Student < User

  # enum :role, {
  #   student: 0,
  #   colaborator: 1
  # }
  has_one :course
  has_one_attached :featured_image
  has_rich_text :biography

  has_many :contents

end