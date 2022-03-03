require "allure-cucumber"  #relatórios
require "appium_lib"
require "selenium-webdriver"
require "fileutils" 
require "touch_action"


# Limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
