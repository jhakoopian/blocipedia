module WikisHelper
  def can_make_private_for(wiki)
    current_user.admin? || (current_user.premium? && (wiki.new_record? || wiki.user == current_user))
  end
end
