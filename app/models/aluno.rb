class Aluno < Usuario
  has_one :curso
  has_one_attached :featured_image
  has_rich_text :biography
end