class WikiPolicy < ApplicationPolicy
  # def update?
  #   user.admin?
  # end
  
  def update?
    user.present?
  end
end
