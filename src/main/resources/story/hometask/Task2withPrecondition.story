Description: Try to log in a User using PreCondition Story

GivenStories: story/hometask/PreconditionForTask2.story

Scenario: Sign In using existing User
Given I am on the main application page
When I click on an element with the text 'Log In'
When I enter `<email>` in field located `By.xpath(//input[@id='user'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then the page with the URL containing 'create-first-board' is loaded
Then the page title is equal to 'Create Your Board | Trello'
When I remove all cookies from the current domain
Examples:
|email                 |password  |
|testUser731@ugly.email|Parol12345|
|testUser732@ugly.email|Parol12345|
