class RandomController < ApplicationController
  def new
    render({:template => "pages_templates/random"})
  end

  def get_result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @result = rand(@min..@max)
    render({:template => "pages_templates/random_result"})
  end
end
