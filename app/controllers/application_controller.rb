class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :resource, :resource_name, :devise_mapping

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
