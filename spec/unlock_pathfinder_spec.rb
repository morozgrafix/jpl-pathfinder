require 'spec_helper'

describe 'Unlock Pathfinder' do
  before(:each) do
    visit(PathfinderPage)
  end

  it 'try all the codes' do
    buttons = %w(alpha beta gamma delta epsilon zeta eta theta
                 forall part exist empty nabla isin notin ni
                 frodo bilbo gimli gandalf glorfindel legolas aragorn
                 a be ve ghe de ie zhe)
    perm = buttons.permutation(3).to_a
    perm.each do |p|
      button_text = []
      p.map.each do |b|
        button_text << @current_page.button_element(b).text
        @current_page.push_button(b)
      end
      if @current_page.status == 'UNLOCKED'
        puts "The combination is: #{button_text.join(',')}"
        break
      end
    end
    expect(@current_page.status).to be('UNLOCKED')
  end
end
