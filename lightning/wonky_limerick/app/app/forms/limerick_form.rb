class LimerickForm < Reform::Form

  property :title
  property :poem
  property :footnote
  property :author_id

  validate :title, presence: true
  validate :poem, presence: true

  def save

  end

end
