class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include JsFlash::JsFlashHelper

  def current_user
    @current_user ||= if params[:email]
                        User.where(email: params[:email]).first
                      elsif params[:role]
                        User.new(email: "#{params[:role]}@example.com", role: params[:role])
                      end
  end
  helper_method :current_user

  def allow!(policy, **options, &block)
    if policy
      yield if block_given?
    else
      redirect_to root_url, flash: { error: "You are not authorized!" }
    end
    policy
  end

  def authorizator
    @authorizator ||= RailsclipsAuthorizator.new(user: current_user)
  end
  helper_method :authorizator
end
