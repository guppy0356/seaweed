class SessionsController < ApplicationController
  def create
    render json: { created_at: Time.current }, status: :created
  end
end
