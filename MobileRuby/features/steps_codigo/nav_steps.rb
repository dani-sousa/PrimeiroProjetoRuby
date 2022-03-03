Quando("acesso o Menu") do
   @nav.tap_hamburger
  end
  
  Então("vejo a lista de opções de navegação") do
    expect(@nav.list.displayed?).to be true 
    #no ruby os metodos booleanos tem ? ou seja sempre retorna verdadeiro ou falso
  end