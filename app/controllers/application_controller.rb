class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
	respond_to :html, :json

  
	# before_filter :set_headers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session
  protect_from_forgery with: :null_session,
      if: Proc.new { |c| c.request.format =~ %r{application/json} }
  
 #  def index
	#   puts "Do nothing."
	#   render nothing: true
	# end

	# def set_headers
	#   puts 'ApplicationController.set_headers'
	#   if request.headers["HTTP_ORIGIN"]     
	#   # better way check origin
	#   # if request.headers["HTTP_ORIGIN"] && /^https?:\/\/(.*)\.some\.site\.com$/i.match(request.headers["HTTP_ORIGIN"])
	#     headers['Access-Control-Allow-Origin'] = request.headers["HTTP_ORIGIN"]
	#     headers['Access-Control-Expose-Headers'] = 'ETag'
	#     headers['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
	#     headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match,Auth-User-Token'
	#     headers['Access-Control-Max-Age'] = '86400'
	#     headers['Access-Control-Allow-Credentials'] = 'true'
	#   end
	# end
end
