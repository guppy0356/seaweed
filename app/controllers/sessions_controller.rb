class SessionsController < ApplicationController
  def create
    render json: { created_at: Time.current, version: 'v1.0' }, status: :created
  end
end
