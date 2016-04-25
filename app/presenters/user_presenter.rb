class UserPresenter < Mystique::Presenter
  def to_s
    "#{target.last_name} #{target.first_name} <#{email}>"
  end
end
