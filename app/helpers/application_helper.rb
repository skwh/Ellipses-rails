require 'digest/sha1'

module ApplicationHelper
  def full_title(title)
    base_title = "Ellipses Magazine"
    if title.empty?
      base_title
    else
      "#{base_title} | #{title}"
    end
  end

  def check_password(pw)
  		master_pw_digest = Password.first.password_digest.to_s
  		given_pw_digest = Digest::SHA1.hexdigest pw.to_s
  		if given_pw_digest == master_pw_digest
  			true
  		else
  			false
  		end
  	end

  	def store_location
      	session[:return_to] = request.url
    	end
end
