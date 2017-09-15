class ProfilesController < ApplicationController
  def profile
    @user = current_user
    @email = current_user.email
    @articles = current_user.articles
  end
end
