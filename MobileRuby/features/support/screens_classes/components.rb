
class Navigator
    def tap_hamburger
        hamburger = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
        find_element(xpath: hamburger).click
    end

   def list
       return find_element(id: "br.gov.caixa.loterias.apostas.hmp:id/action_bar_root")
   end
   #opções de menu ex: @nav.tap_option("Minha área")
   def tap_by_text(target)
    find_element(xpath: "//*[@text='#{target}']").click
   end

   #opções de modalidades ex: @nav.tap_modal("timemania")
   def tap_modal(target)
    find_element(xpath:"//*[@text='#{target}']").click
   end
end
