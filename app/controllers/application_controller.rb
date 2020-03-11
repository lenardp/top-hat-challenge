class ApplicationController < ActionController::Base

  def ping
    render plain: "OK"
  end

end
