Dado('que seleciono a opção minhas apostas') do
  find_element(xpath:"//android.widget.Button[@text='Faça login/cadastre-se']").click
  @nav.tap_hamburger
  @nav.tap_by_text("Minha área")
  @nav.tap_by_text("Minhas Apostas")
end

Então('devo visualizar minhas apostas') do
  find_element(xpath: "//android.widget.TextView[@text='Minhas apostas']")
end
  
  