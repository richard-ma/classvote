module ApplicationHelper
  def get_number_of_machine()
    # machine number = last ip address number + 1
    User.find(session[:user_id]).ip.split('.')[3].to_i + 1
  end

  def get_ip_of_machine()
    User.find(session[:user_id]).ip
  end
end
