require_relative '../../app.rb'


feature 'homepage ' do

  scenario " expects players to fill in their names via a form" do
    sign_in_and_play
    expect(page).to have_content("John")
  end

  feature 'play' do 
    scenario " Players can view Points " do 
    visit('/play')
    expect(page).to have_content("Points")
    end

    scenario " player gets confirmation after an attack" do
    sign_in_and_play
    click_button('Attack P2')
    expect(page).to have_content("Successfully hit")
    end
  end
end
