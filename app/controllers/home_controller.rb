class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:results] 
  def index
  end

  def about_us
  end

  def results
 

    if user_signed_in?
      if current_user.sign_in_count > 20
        edit_user_password_path
      end      
      
    else
      if current_user.sign_in_count > 20
        edit_user_password_path
      end
    end 



#    if user_signed_in?
#      if current_user.admin
#        redirect_to managers_index_path
#      else
#        if current_user.sign_in_count > 20
#          redirect_to results_path 
#        else
#          edit_user_password_path
#        end
#      end
#    else
#      redirect_to new_user_session_path
#    end

#  	if user_signed_in?
#  		redirect_to results_path
#  	else
#  		redirect_to new_user_session_path
#  	end
 
  end

end

