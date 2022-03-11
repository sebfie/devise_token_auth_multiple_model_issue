class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    current_user
    current_admin
  end
end
