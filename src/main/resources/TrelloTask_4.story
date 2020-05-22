Description: User can Sign In, verify profile and verify Profile, Boards, Templates, Home pages

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

Scenario: Use API for Trello Board creation
Given request body: {
"name":"trelloBoard"
"desc": "bewBoard",
"idOrganization": "userval"
}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/'
Then the response code is equal to '200'


Scenario: Visual Checks of Initial Page, Boards
When I click on element located `By.xpath(//*[@id="header"]/a)`
When I establish baseline with `Initial Page` ignoring:
|ELEMENT                  |
|By.xpath(//*[@id="header"])|
When I click on element located `By.xpath(//span[@class='_3qwe2tMMFonNvf'][contains(text(),'Boards')])`
When I establish baseline with `Boards` ignoring:
|ELEMENT                  |
|By.xpath(//*[@id="header"])|
When I click on element located `By.xpath(//*[@id="header"]/a)`
When I COMPARE_AGAINST baseline with `Initial Page` ignoring:
|ELEMENT                  |
|By.xpath(//*[@id="header"])|
When I click on element located `By.xpath(//span[@class='_3qwe2tMMFonNvf'][contains(text(),'Boards')])`
When I COMPARE_AGAINST baseline with `Boards` ignoring:
|ELEMENT                  |
|By.xpath(//*[@id="header"])|
