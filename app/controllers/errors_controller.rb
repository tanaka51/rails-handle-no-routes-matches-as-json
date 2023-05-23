class ErrorsController < ApplicationController
  def not_found
    render json: { 'message': "no such path: #{params['not_found']}" }, status: :not_found
  end
end
