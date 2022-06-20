Feature: verifying User can able to login, Create, update, get and delete Address details in Website

  Scenario Outline: Get user logtoken from login endpoint
    Given User should add headers
    And User should add basic authentication for login
    And User should send request for login endpoint
    And User should verify the status code is 200
    Then User should verify the response body and get the logtoken

  Scenario Outline: Creating user address in the website
    Given User should add headers
    And User should add payload "<first_name>", "<last_name>", "mobile", "apartment", "<state>", "<city>", "<country>", "<zipcode>", "<address>" and "<address_type>"
    And User should send "POST" and address for endpoints
    And User should verify the status the status code is 200
    Then User should verify the success message "Address updated successfully"

    Examples: 
      | first_name | last_name | mobile     | apartment | state | city | country | zipcode | address | address_type |
      | Deepak     | Sundar    | 8939186600 | Home      |    32 |   45 |      89 |  600066 | Puzhal  | Home         |

  Scenario Outline: Updating user address in the website
    Given User should add headers
    And User should add payload "<first_name>", "<last_name>", "mobile", "apartment", "<state>", "<city>", "<country>", "<zipcode>", "<address>" and "<address_type>"
    And User should send "PUT" and update address for endpoints
    And User should verify the status the status code is 200
    Then User should verify the success message "Address updated successfully"

    Examples: 
      | first_name | last_name | mobile     | apartment | state | city | country | zipcode | address | address_type |
      | Deepak     | Sundar    | 8939186600 | Home      |    32 |   45 |      89 |  600066 | Puzhal  | Home         |

  Scenario Outline: To get user address from the website
    Given User should add headers
    And User should send "GET" and update address for endpoints
    And User should verify the status the status code is 200
    Then User should verify the success message "ok"

  Scenario Outline: Deleting user address in the website
    Given User should add headers
    And User should add payload
    And User should send "DELETE" and update address for endpoints
    And User should verify the status the status code is 200
    Then User should verify the success message "Address deleted successfully"
