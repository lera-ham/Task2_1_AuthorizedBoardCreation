Description: User can Sign In and validate notifications

Scenario:Sign In
Given I am on the main application page
When I click on element located `By.xpath(//a[contains(text(),'Log In')])`
When I login as a registered user

Scenario: Validation of the notifications
When I wait until element located `By.xpath(//button[3]//span[1])` appears
When I find >= `1` elements by `By.xpath(//button[3]//span[1])` and for each element do
|step|
|When I click on element located `By.xpath(//button[3]//span[1])`|
|When I click on element located `By.xpath(//button[contains(text(),'View All')])`|

