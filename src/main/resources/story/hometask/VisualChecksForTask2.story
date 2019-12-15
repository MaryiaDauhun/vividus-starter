Description: Visual checks for 5 pages in Task2

Scenario: Visual check for Home page
Given I am on the main application page
When I COMPARE_AGAINST baseline with `homePageBaseline`

Scenario: Visual check for Login page
Given I am on a page with the URL 'https://trello.com/login'
When I COMPARE_AGAINST baseline with `loginPageBaseline`

Scenario: Visual check for Registration page
Given I am on a page with the URL 'https://trello.com/signup'
When I COMPARE_AGAINST baseline with `registrationPageBaseline`

Scenario: Visual check for Logout page
Given I am on a page with the URL 'https://trello.com/logged-out'
When I COMPARE_AGAINST baseline with `logoutPageBaseline`

Scenario: Visual check for Profile page (using page elements steps)
Given I am on the main application page
When I login with an existing User with Board
When I click on element located `By.xpath(//div[contains(@title,'User')])`
When I click on element located `By.xpath(//a[@data-test-id='header-member-menu-profile'])`
When I COMPARE_AGAINST baseline with `profilePageBaseline`
