Given("I am on Event Scheduler home page") do
	@browser.navigate.to "http://eventscheduling.herokuapp.com/"
end

When("I signup with invalid details") do
	sleep 3
	@browser.find_element(xpath: '//div[2]/ul/li[1]/form/input').click
	sleep 3
	@browser.find_element(id: 'signup_name').send_keys "nikhil"
	sleep 3
	@browser.find_element(id: 'user_email').send_keys "nill.com"
	sleep 3
	@browser.find_element(id: 'signup_password').send_keys "even"
	sleep 3
	@browser.find_element(id: 'signup_confirm_password').send_keys "even123"
	sleep 3
	@browser.find_element(id: 'signup_button').click
end

Then("I should be able to see Error message") do
	sleep 3
	email = @browser.find_element(xpath: '//div[1]/div[2]/div[1]/span').text
	email1 = "Your email address must be in the format of name@domain.com."
	if email == email1
		puts "#{email}"
	else 
		raise puts "#{email} not match"
	end
end
