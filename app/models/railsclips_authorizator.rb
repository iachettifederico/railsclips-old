class RailsclipsAuthorizator < YouShallNotPass::Authorizator
  attribute :user

  def policies
    {
     create_post: proc {user && user.admin? },
     modify_post: proc { |post: nil|
       user && (user.admin? || user.editor? || (post && post.user == user))
     }
    }
  end
end
