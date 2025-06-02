class Conteudo < ApplicationRecord
  belongs_to :disciplina

   enum status: {
    rascunho: 0,
    submetido: 1,
    pendente_correcao: 2,
    corrigido: 3,
    aprovado: 4,
    reprovado: 5
  }

  validates :titulo, presence: true
  validates :descricao, presence: true
  validates :link, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "deve ser um URL válido" }
end
