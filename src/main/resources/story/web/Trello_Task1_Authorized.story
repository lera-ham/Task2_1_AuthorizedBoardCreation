Description: Verification that user can sign up to trello and board can't be created for unauthorized users

Scenario: Open main page and sign up
Given I am on the main application page
When I click on element located `By.xpath(//body//header//a[2])`
When I enter `<email>` in field located `By.xpath(//input[@id='email'])`
When I click on element located `By.xpath(//input[@class='button account-button button-green signup-redirect'])`
When I wait until element located `By.xpath(//input[@placeholder='Enter full name'])` appears
When I enter `<name>` in field located `By.xpath(//input[@placeholder='Enter full name'])`
When I enter `<password>` in field located `By.xpath(//input[@id='password'])`
When I wait until element located `By.xpath(//*[@id="signup-submit"]/span/span)` appears
When I click on element located `By.xpath(//*[@id="signup-submit"]/span/span)`

Examples:
|email|name|password|
|test@vividus.com|#{generate(regexify '[A-Z][a-z]{1,9}')}|password1|
|test2@vividus.com|#{generate(regexify '[A-Z][a-z]{1,9}')}|password2|

Scenario: Use API for Trello Board creation
Given request body: {
"name":"trelloBoard",
"token":"de8a2c3e2c65ca1d7c3ea93f2d58bdea7c6c69dce8360d6609bc232edb1aec2b",
"key": "1e5c69edc7f9d0a748f4618c3537072d"
}

When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/'
Then the response code is equal to '200'
