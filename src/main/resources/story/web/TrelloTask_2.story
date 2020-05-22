Description: User can Sign In, verify profile and verify Profile, Boards, Templates, Home pages

Scenario:Sign In
Given I am on the main application page
When I click on element located `By.xpath(//a[contains(text(),'Log In')])`
When I enter `valerisa@inbox.ru` in field located `By.xpath(//input[@placeholder='Enter email'])`
When I enter `Passwordtest1` in field located `By.xpath(//input[@placeholder='Enter password'])`
When I click on element located `By.xpath(//input[@id='login'])`

Scenario: Verify Profile
When I wait until element located `By.xpath(//*[@id="header"]/div[2]/button[4])` appears
When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4])
When I click on element located `By.xpath(//span[contains(text(),'Profile and Visibility')])`
When I wait until element located `By.xpath(//span[contains(text(),'Email address')])` appears
Then the text 'valerisa@inbox.ru' exists

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

Scenario: Visual Checks of Profile
When I establish baseline with `Profile and Visibility`
When I click on element located `By.xpath(//a[contains(text(),'Trello Gold')])`
When I wait until element located `By.xpath(//h2[contains(text(),'Get extra fun and functionality.')])` appears
When I establish baseline with `Trello Gold`
When I click on element located `By.xpath(//a[contains(text(),'Cards')])`
When I establish baseline with `Cards`
When I click on element located `By.xpath(//a[contains(text(),'Profile and Visibility')])`
When I COMPARE_AGAINST baseline with `Profile and Visibility`
When I click on element located `By.xpath(//a[contains(text(),'Trello Gold')])`
When I COMPARE_AGAINST baseline with `Trello Gold`
When I click on element located `By.xpath(//a[contains(text(),'Cards')])`
When I COMPARE_AGAINST baseline with `Cards`
