class RailsclipsAuthorizator < YouShallNotPass::Authorizator
  attribute :user

  def policies
    {
     create_post: logged_in? && user.admin?,
     modify_post: proc { |post: nil|
       logged_in? && (user.admin? || user.editor? || (post && post.user == user))
     }
    }
  end

  def logged_in?
    user.present?
  end
end
