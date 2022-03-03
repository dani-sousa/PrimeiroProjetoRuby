 class LoginScreen

    def sign_in(cpf,senha)
    require 'selenium-webdriver'
    @driver = Selenium::WebDriver
    @driver.find_element(xpath: "//android.view.View[2]/android.view.View[2]/android.view.View[1]/android.widget.EditText").send_keys(cpf)
    @driver.find_element(xpath: "//android.view.View[2]/android.view.View[2]/android.widget.Button").click
    @driver.find_element(xpath: "//android.view.View[2]/android.view.View[2]/android.view.View[1]/android.widget.EditText").send_keys(senha)
    @driver.find_element(xpath: "//android.view.View[2]/android.view.View[2]/android.widget.Button").click
   end
end


#screen por se tratar de uma tela.