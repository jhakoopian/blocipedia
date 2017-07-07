class DowngradeController < ApplicationController
  def downgrade
    current_user.standard!
    current_user.wikis.update_all(private: false)

    flash[:notice] = "Your account has been successfully downgraded."
    redirect_to edit_user_registration_path
  end
end
