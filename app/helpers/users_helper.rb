module UsersHelper

def current_user
  if logged?
    User.find(session[:user_id])
  else
    false
  end
end

def logged?
  session[:user_id].present? ? true : false
end

end
