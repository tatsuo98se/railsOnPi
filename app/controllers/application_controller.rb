class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_gpio

  protected

  def setup_gpio
    unless request.xhr? #check if ajax call
      system('sudo echo 4 > /sys/class/gpio/export')
      system('sudo echo "out" > /sys/class/gpio/gpio4/direction')
    end
  end
end
