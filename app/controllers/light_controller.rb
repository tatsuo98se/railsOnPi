class LightController < ApplicationController
  def off
    system("echo \"0\" > /sys/class/gpio/gpio4/value")
  end

  def on
    system("echo \"1\" > /sys/class/gpio/gpio4/value")
  end
end
