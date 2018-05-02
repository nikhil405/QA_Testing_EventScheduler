When("I login with invalid details") do
	@browser.find_element(xpath: '//div[2]/ul/li[2]/form/input').click
  sleep 3
 	@browser.find_element(id: 'inputEmail').send_keys "niknnn@gmail.com"
	sleep 3
	@browser.find_element(id: 'inputPassword').send_keys "123454"
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

