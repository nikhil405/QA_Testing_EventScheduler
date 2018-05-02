@Eventshcheduler
Feature: As a End-User
I should able to able to valid data sign in page

@InvalidSignup
Scenario: New sign up with invalid details
Given I am on Event Scheduler home page
When I click on sign up button
Then I should be able to see signup page
Given I am on Event Scheduler signup page
When I enter InValid inputs
And I click on Ok button
Then I should be able to see Error

@Invalidlogin
Scenario: Login with invalid email and password
Given I am on Event Scheduler home page
When I click on login button
Then I should be able to see login page pop up
Given I am on Event Scheduler login page
When I enter InValid email and password
And I click on ok button
Then I should be able to see Error "Email id and password does not match"
