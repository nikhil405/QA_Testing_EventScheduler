Given("I am on Event Scheduler home page") do
	@browser.navigate.to "http://eventscheduling.herokuapp.com/"
end

When("I click on sign up button") do
	sleep 3
	@browser.find_element(xpath: '//div[2]/ul/li[1]/form/input').click
	sleep 3
end

Then("I should be able to see") do
	@browser.find_element(xpath: '//div[2]/div/div/h4').displayed?
end


Given("I am on Event Scheduler signup page") do
	sleep 3
	@browser.find_element(xpath: '//div[2]/div/div/h4').displayed?
end

When("I enter InValid inputs") do
	sleep 3
	name=@browser.find_element(id: 'signup_name')
	name.send_keys "nikhil"
	sleep 3
	@browser.find_element(id: 'user_email').send_keys "nill.com"
	sleep 3
	@browser.find_element(id: 'signup_password').send_keys "even"
	@browser.find_element(id: 'signup_confirm_password').send_keys "even123"
end

When("I click on Ok button") do
	sleep 3
	@browser.find_element(id: 'signup_button').click
	sleep 3
	email=@browser.find_element(xpath: 'html/body/div[1]/div[2]/div/form/div[1]/div[2]/div[1]/span').text
	print "{email}"
	pwd=@browser.find_element(xpath: '//div/form/div[1]/div[3]/div[1]/span').text
	print "#{pwd}"
	cpwd=@browser.find_element(xpath: '//div[1]/div[4]/div[1]/span').text
	print "#{cpwd}"

end

Then("I should be able to see Error") do
	@browser.find_element(xpath: '//div[2]/div/div/h4').displayed?
end

##Login page

When("I click on login button") do
	sleep 3
	@browser.find_element(xpath: '//div[2]/ul/li[2]/form/input').click
end

Then("I should be able to see login page pop up") do
	sleep 2
	@browser.find_element(xpath: '//div/div/div/h4').displayed?
end

Given("I am on Event Scheduler login page") do
  sleep 2
	@browser.find_element(xpath: '//div/div/div/h4').displayed?
end

When("I enter InValid email and password") do
	sleep 3
		@browser.find_element(id: 'inputEmail').send_keys "niknnn@gmail.com"
	sleep 3
		@browser.find_element(id: 'inputPassword').send_keys "123454"
	end

When("I click on ok button") do
	sleep 3
  	@browser.find_element(xpath: '//form/div[2]/input').click
end

Then("I should be able to see Error {string}") do |var|
  sleep 2
	var1 = @browser.find_element(xpath: "//div[2]/div/div/p").text
	if var == var1
		puts "#{var}"
	else
	raise.Exception.new "#{var} not found"
	end	
end

