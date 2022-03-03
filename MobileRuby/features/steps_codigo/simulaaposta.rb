Dado('que seleciono a mega sena no carrossel') do
  find_element(xpath:"//android.widget.Button[@text='Faça login/cadastre-se']").click
  find_element(xpath: "//android.widget.TextView[@text='mega-sena']")
  #megasena
  #find_elements(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.RelativeLayout[1]/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout")
  #coord = { start_x:0.58, start_y:0.48, end_x:0.16, end_y:0.48, duration: 2000}
 # Appium::TouchAction.new.swipe(coord).perform
  @button = find_element(xpath: "//android.widget.Button[contains(@text,'Aposte')]")
  Appium::TouchAction.new.press(element: @button).wait(2000).release.perform
  
  end
  
  Quando('eu informo os números e adiciono ao carrinho') do 
  find_element(:id, 'br.gov.caixa.loterias.apostas.hmp:id/qtdNumerosButton').click
  find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.TextView").click
  find_element(xpath: "//android.widget.Button[@text='OK']").click
  find_element(xpath: "//android.widget.TextView[@text='05']").click
  find_element(xpath: "//android.widget.TextView[@text='09']").click
  find_element(xpath: "//android.widget.TextView[@text='15']").click
  find_element(xpath: "//android.widget.TextView[@text='20']").click
  find_element(xpath: "//android.widget.TextView[@text='23']").click
  find_element(xpath: "//android.widget.TextView[@text='29']").click
  find_element(xpath: "//android.widget.TextView[@text='31']").click
  @button = find_element(:id, "br.gov.caixa.loterias.apostas.hmp:id/botaoAdicionarCompletarCartela")
  Appium::TouchAction.new.press(element: @button).wait(2000).release.perform
  
  end
  
  Então('devo vê a mensagem {string}') do |string|
  find_elements(:id, "br.gov.caixa.loterias.apostas.hmp:id/textTituloTela")
  end