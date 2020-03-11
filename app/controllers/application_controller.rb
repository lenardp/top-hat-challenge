class ApplicationController < ActionController::Base

  def ping
    render plain: "OK #{test_query}"
  end

end
