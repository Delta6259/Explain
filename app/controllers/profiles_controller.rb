class ProfilesController < ApplicationController
  def profile
    @user = current_user
    @email = current_user.email
    @articles = current_user.articles.order('vote DESC')
    @latitude = current_user.latitude
    @longitude = current_user.longitude
    @city = current_user.city
    weather
  end

  private

  def weather
    # scraping (voir cours scraping JSON)
    url = "https://api.darksky.net/forecast/6919bc2ae7b083bdac732a36b67983b1/#{@latitude},#{@longitude}" # L'url retourne un JSON à scraper qui contient les informations essentielles.

    html_file = open(url).read
    meteo = JSON.parse(html_file)
    @weather_now_description = meteo['currently']['summary']
    temperature_in_f = meteo['currently']['temperature']
    @temperature_in_c = (temperature_in_f.round - 32) * 5/9
    @temperature_in_c.round
    # html_doc = Nokogiri::HTML(html_file)
    # html_doc.search('.k').each do |element|
    #   @content = element.text
    #    # puts element.attribute('href')
    # end
  end

end
