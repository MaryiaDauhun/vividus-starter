Description: Vividus home task1, board creation using API is skipped

Scenario: Sign Up a new User
Given I am on the main application page
When I click on an element with the text 'Sign Up'
When I create a new user
Then the text 'Email already in use' does not exist
Then the page with the URL containing 'create-first-board' is loaded
Then the page title is equal to 'Create Your Board | Trello'
When I remove all cookies from the current domain
Examples:
|email                                              |name                          |password                      |
|hfgryTrello123@ugly.email                            |TestUser                      |pass12345                     |
|#{generate(regexify '[a-z]{5}[A-Z]{3}')}@ugly.email|#{generate(Address.firstName)}|#{generate(Internet.password)}|
