require 'capybara'


session = Capybara::Session.new(:selenium)


session.visit 'http://www.google.com'
session.fill_in('lst-ib', with: 'Victor Buttner')
session.find(:xpath, '/html/body/div/div[3]/form/div[2]/div[3]/center/input[1]').click
session.find('a', :text => 'Victor Buttner - Descomplicando a TI!').click
sleep(2)
session.find(:xpath, '//*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/a').click
session.fill_in('name',  with:'Victor Buttner')
session.fill_in('email',  with:'victorbuttner@gmail.com')
session.fill_in('phone', with: '5551989416644')
session.fill_in('message',  with:'This is a test from Capybara and Selenium')
session.click_button('submit')
sleep(1000)

