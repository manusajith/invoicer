class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
    @user.build_company
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, company_attributes: [:name])
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
