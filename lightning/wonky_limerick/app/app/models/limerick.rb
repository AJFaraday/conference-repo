class Limerick < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :poem

  belongs_to :author

  def lines(index=nil)
    if index
      poem.split("\n")[index+1]
    else
      poem.split("\n")
    end
  end

  def self.write(poem)
    limerick = Limerick.new(poem: poem)
    limerick.title = limerick.lines(1)
    limerick.author = Author.current
    limerick.save
  end

end
