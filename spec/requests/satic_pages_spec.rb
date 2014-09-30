require 'spec_helper'

describe "StaticPages" do
  describe "Pagina de Inicio (Home)" do
    it "debe tener el contenido 'Sample App' " do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "debe tener el titulo Predefinido" do 
    	visit '/static_pages/home'
    	expect(page).not_to have_title('Sample App / Pagina de Inicio')
    end

  end
describe "Pagina de Ayuda"do

it "Debe tener el contenido 'Ayuda' " do
	visit '/static_pages/help'
	expect(page).to have_content('Ayuda')
	end

	 it "debe tener el titulo 'Sample App / Pagina de Ayuda'" do 
    	visit '/static_pages/help'
    	expect(page).to have_title('Sample App / Pagina de Ayuda')
    end
end

describe "Pagina Acerca de"do
it "debe contener el contendio 'Acerca de' "do
    visit '/static_pages/acerca_de'
	expect(page).to have_content('Acerca de')
end

it "debe tener el titulo 'Sample App / Acerca de'" do 
    	visit '/static_pages/acerca_de'
    	expect(page).to have_title('Sample App / Acerca de')
    end

end
end
