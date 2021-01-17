class Users::RegistrationsController < Devise::RegistrationsController
  def create
    @user = User.new(sign_up_params)
    @user.skip_confirmation!
    if @user.save
      redirect_to new_user_session_path, notice: '登録完了しました。ログインしてください。'
    end
  end

protected

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end
end