class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def gyazo_id
    params['id'] || new_id
  end

  def new_id
    Digest::MD5.hexdigest(request[:remote_addr] + Time.now.to_s)
  end

  def new_user?
    params[:id].present?
  end

  def current_user
    User.find(gyazo_id: gyazo_id) || User.create(gyazo_id: gyazo_id)
  end

  def hoge
    header['X-Gyazo-Id'] = gyazo_id if new_user?
  end
end
