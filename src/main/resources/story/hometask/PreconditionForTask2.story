Description: Precondition scenarion for Sigh In case

Scenario: Sign Up a new User
Given I am on the main application page
When I click on an element with the text 'Sign Up'
When I enter `<email>` in field located `By.xpath(//input[@id='email'])`
When I click on element located `By.xpath(//input[@id='signup' and @type='button'])`
When I enter `<name>` in field located `By.xpath(//input[@id='name'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//input[@id='signup' and @type='button'])`
Then the text 'Email already in use' does not exist
Then the page with the URL containing 'create-first-board' is loaded
Then the page title is equal to 'Create Your Board | Trello'
When I remove all cookies from the current domain
Examples:
|email                 |name    |password  |
|testUser731@ugly.email|TestUser|Parol12345|
|testUser732@ugly.email|User    |Parol12345|
