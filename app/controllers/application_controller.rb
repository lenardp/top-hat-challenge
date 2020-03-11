class ApplicationController < ActionController::Base

  def ping
    render plain: "OK"
  end

  def db_test
    status_ok = ActiveRecord::Base.connection.present?
    render plain: status_ok ? "DB OK" : "DB Disconnected."
  end
end
