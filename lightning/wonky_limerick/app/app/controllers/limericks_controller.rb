class LimericksController < ApplicationController

  def new
    @limerick_form = LimerickForm.new(
      Limerick.new(
        author: Author.current
      )
    )
  end

  def create
    @limerick_form = LimerickForm.new(
      Limerick.new(
        params[:limerick]
      )
    )
  end

end

