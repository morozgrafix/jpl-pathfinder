# JPL Pathfinder page
class PathfinderPage
  include PageObject

  page_url 'http://www.practicalsqa.net/mars-brainteaser.html'

  # Page Elements

  # first row of buttons
  button(:alpha, id: 'button-alpha')
  button(:beta, id: 'button-beta')
  button(:gamma, id: 'button-gamma')
  button(:delta, id: 'button-delta')
  button(:epsilon, id: 'button-epsilon')
  button(:zeta, id: 'button-zeta')
  button(:eta, id: 'button-eta')
  button(:theta, id: 'button-theta')

  # second row of buttons
  button(:forall, id: 'button-forall')
  button(:part, id: 'button-part')
  button(:exist, id: 'button-exist')
  button(:empty, id: 'button-empty')
  button(:nabla, id: 'button-nabla')
  button(:isin, id: 'button-isin')
  button(:notin, id: 'button-notin')
  button(:ni, id: 'button-ni')

  # third row of buttons
  button(:frodo, id: 'button-frodo')
  button(:bilbo, id: 'button-bilbo')
  button(:gimli, id: 'button-gimli')
  button(:gandalf, id: 'button-gandalf')
  button(:glorfindel, id: 'button-glorfindel')
  button(:legolas, id: 'button-legolas')
  button(:aragorn, id: 'button-aragorn')

  # fourth row of buttons
  button(:a, id: 'button-a')
  button(:be, id: 'button-be')
  button(:ve, id: 'button-ve')
  button(:ghe, id: 'button-ghe')
  button(:de, id: 'button-de')
  button(:ie, id: 'button-ie')
  button(:zhe, id: 'button-zhe')

  # passcode span
  span(:passcode, id: 'passcode')

  # status span
  span(:status, id: 'status')

  # push a given button
  def push_button(button)
    send("#{button}")
  end

  # return given button element
  def button_element(button)
    send("#{button}_element")
  end
end
