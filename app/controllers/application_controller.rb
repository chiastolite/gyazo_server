class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_id
    params['id'] || new_id
  end

  def new_id
    Digest::MD5.hexdigest(request[:remote_addr] + Time.now.to_s)
  end
end
