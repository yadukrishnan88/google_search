
class Homepage
  include PageObject
  text_field(:searchbox, :xpath => '//*[@id="tsf"]/div[2]/div/div[1]/div/div[1]/input')
end