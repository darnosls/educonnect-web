class Disciplina < ApplicationRecord

  has_many :conteudos, dependent: :destroy
end
