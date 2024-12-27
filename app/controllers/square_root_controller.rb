class SquareRootController < ApplicationController
  def new
    render({:template => "pages_templates/square_root"})
  end

  def get_result
    @input_number = params.fetch("user_number").to_f
    @result = Math.sqrt(@input_number)

    render({:template => "pages_templates/square_root_result"})
  end
end
