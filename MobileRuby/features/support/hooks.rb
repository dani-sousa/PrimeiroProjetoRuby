#Gancho que é executado antes de cada cenário
Before do
  driver.start_driver  #esse é o cara que sobe o servidor do appium
  driver.manage.timeouts.implicit_wait =  60  #timerouts de 10 segundos para encontrar um elemento

  @nav = Navigator.new
  @login = LoginScreen.new

  #Evento de clique no botão ALLOW ao iniciar o app
  find_element(xpath: "//android.widget.Button[@text='ALLOW']").click

  #Evento de clique no botão SIM para maior de 18 anos
  find_element(xpath:"//android.widget.Button[@text='SIM']").click

  #Evento de Clique no botão Pular Introdução
  find_element(xpath:"//android.widget.Button[@text='Pular introdução']").click

  
    
end

After do |scenario|  #código que faz que tenha screenshots no relátorio
  binary_shot = driver.screenshot_as(:base64)
  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
driver.quit_driver
end
