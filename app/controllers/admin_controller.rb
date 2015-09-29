class AdminController < ActionController::Base
  def create_subscribers
    Subscribe.instance.async.execute_list
    render nothing: true
  end
end
