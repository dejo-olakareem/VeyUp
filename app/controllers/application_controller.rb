class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    if current_user
      return true
    else
      return false
    end
  end

  helper_method :current_user, :logged_in? ,  :create_with_omniauth

  def datepicker_input form, field
    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'yyyy-mm-dd', 'date-autoclose' => 'true'} do
      form.text_field field, class: 'form-control', placeholder: 'YYYY-MM-DD'
    end
  end

end

