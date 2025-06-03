class Professor < Usuario
  has_many :professor_disciplinas
  has_many :disciplinas, through: :professor_disciplinas

end