class Disciplina < ApplicationRecord

  has_many :conteudos, dependent: :destroy
  has_many :professor_disciplinas
  has_many :professores, through: :professor_disciplinas
end
