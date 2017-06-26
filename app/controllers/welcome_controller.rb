class WelcomeController < ApplicationController
  include SessionsHelper
  def index

  end

  def about

  end

  def contact

  end

  def admin
    is_admin?
  end
end
