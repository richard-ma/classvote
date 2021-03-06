module ApplicationHelper
  def get_number_of_machine
    # machine number = last ip address number + 1
    User.find(session[:user_id]).ip.split('.')[3].to_i
  end

  def get_ip_of_machine
    User.find(session[:user_id]).ip
  end

  def is_admin?
    # TODO move this to config file
    admin_ip = [
      #'127.0.0.1',
      '192.168.1.230',
      #'192.168.1.110',
    ]

    true if admin_ip.include? get_ip_of_machine
  end

  def server_ip
    '192.168.1.230'
  end

  def server_port
    '3000'
  end

  def generate_direct_link link
    "http://#{server_ip}:#{server_port}#{link}"
  end
end
