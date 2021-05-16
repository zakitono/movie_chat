class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_search

    def set_search
        @search = Post.ransack(params[:q])
        @posts = @search.result(distinct: true).order(created_at: "DESC").includes(:user).page(params[:page]).per(5)
    end
    
    private
        def sign_in_required
            redirect_to new_user_session_url unless user_signed_in?
        end
          
    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
            # アカウント編集の時にusernameとmovieのストロングパラメータを追加
            devise_parameter_sanitizer.permit(:account_update, keys: [:username, :movie_a, :movie_b, :movie_c])
        end
end
