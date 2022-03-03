Dado('que acesso a tela de Login') do
    #Evento de Clique no botão Faça Login/Cadastre-se
    find_element(xpath:"//android.widget.Button[@text='Faça login/cadastre-se']").click
    
  end
  
Quando('submeto minhas credenciais:') do |table|
      user = table.rows_hash  #transforma a tabela em objeto do ruby
      @login.sign_in(user[:cpf], user[:senha])
     ##xpect(@login.list.displayed?).to be true
  end
  
Então('devo ter acesso ao app.') do
   def list
     return find_element(id: "br.gov.caixa.loterias.apostas.hmp:id/action_bar_root")
   end
  end


#log(get_source)  #exibe o xml da tela no terminal
#log(user) #recurso da nova versão do cucumber para imprimir no console