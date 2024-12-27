class SquareController < ApplicationController
  def square_new
    render({:template => "pages_templates/square"})
  end

  def get_result
    @user_number = params.fetch("number").to_f
    @result = @user_number*@user_number
    
    render({:template => "pages_templates/square_result"})
  end
end
