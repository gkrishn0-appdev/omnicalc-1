class ApplicationController < ActionController::Base

  def blank_square_form
    render ({:template => "calculation_templates/square_form.html.erb"})
  end
  def blank_payment_form
    render ({:template => "calculation_templates/payment_form.html.erb"})
  end
  def calculate_payment
     @principal=params.fetch("principal").to_f
     @APR=params.fetch("APR").to_f
     @years=params.fetch("Number of years").to_f
      @payment=@principal*@APR*@years
    render ({:template => "calculation_templates/payment_results.html.erb"})
  end
  def random_form
    render ({:template => "calculation_templates/random_form.html.erb"})
  end
  def blank_square_root_form
    render ({:template => "calculation_templates/square_root_form.html.erb"})
  end
    def calculate_square
      @num=params.fetch("textVal")
      @square_of_num=@num.to_f * @num.to_f
    render ({:template => "calculation_templates/square_results.html.erb"})
  end
  def calculate_square_root
      @num=params.fetch("textVal")
      @square_of_num=@num.to_f ** 0.5
    render ({:template => "calculation_templates/square_root_results.html.erb"})
  end
  def calculate_random
      @lower=params.fetch("user_min").to_f
       @upper=params.fetch("user_max").to_f
       @results=rand(@lower..@upper)
      
    render ({:template => "calculation_templates/rand_results.html.erb"})
  end
end


