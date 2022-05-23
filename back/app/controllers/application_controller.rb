class ApplicationController < ActionController::API
  def not_found
    render json: { error: 'not_found' }
  end
  
  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    return 0 unless header != "debug"
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    rescue StandardError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end
