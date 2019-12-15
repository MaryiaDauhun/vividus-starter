Description: Vividus home task2

Scenario: Sign In using existing User
Given I am on the main application page
When I click on an element with the text 'Log In'
When I enter `hfgryTEST123@ugly.email` in field located `By.xpath(//input[@id='user'])`
When I enter `pass12345` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='login'])`
Then the page with the URL containing 'create-first-board' is loaded
Then the page title is equal to 'Create Your Board | Trello'
When I remove all cookies from the current domain


Scenario: User's profile verification
Given I am on the main application page
When I login with an existing User with Board
When I click on element located `By.xpath(//div[contains(@title,'User')])`
When I click on element located `By.xpath(//a[@data-test-id='header-member-menu-profile'])`
Then Profile page is loaded
