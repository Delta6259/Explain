class ProfilesController < ApplicationController
  def profile
    @email = current_user.email
    @articles = current_user.articles
  end
end
