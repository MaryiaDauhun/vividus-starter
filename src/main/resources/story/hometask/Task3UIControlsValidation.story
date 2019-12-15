Description: attempt to use if-like scenario

Scenario: Switch language to English
Given I am on the main application page
When the condition '#{eval("<id>"=="<language-picker>")}' is true I do
|step|
|When I select 'English' from a drop down with the name 'language-picker'|
