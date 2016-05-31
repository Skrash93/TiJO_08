Feature: Text filter
     Scenario: Search using a search field
       When I browse to the "/"
       When I enter "War" into "input.search" field
       Then the css element "td:nth-of-type(1)" should contain the text "Warner"
       Then I should see "Warner" in "firstName" column in row "1" of "student.table" table
       When I enter "27" into "input.search" field
       Then the css element "td:nth-of-type(3)" should contain the text "27"
       Then I should see "Burnett" in "lastName" column in row "1" of "student.table" table
     Scenario: Search using a Email field
        When I browse to the "/"
        When I enter ".biz" into "input.email" field
        Then the css element "td:nth-of-type(4)" should contain the text "warner.bridges@undefined.biz"
        Then I should see "+1 (914) 451-3055" in "phone" column in row "1" of "student.table" table
        Then I should see "Knapp" in "firstName" column in row "2" of "student.table" table
        When I enter "ry" into "input.email" field
        Then the css element "td:nth-of-type(2)" should contain the text "Ryan"
        Then I should see "chang.ryan@undefined.ca" in "email" column in row "1" of "student.table" table
    Scenario: lastName search
        When I browse to the "/"
        When I enter "nett" into "input.last" field
        Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
        Then I should see "Burnett" in "lastName" column in row "1" of "student.table" table
    Scenario: age search
        When I browse to the "/"
        When I enter "27" into "input.age" field
        Then the css element "td:nth-of-type(3)" should contain the text "27"
        Then I should see "27" in "age" column in row "1" of "student.table" table
    Scenario: Phone search case
        When I browse to the "/"
        When I enter "7" into "input.phone" field
        Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
        Then I should see "Rose" in "lastName" column in row "4" of "student.table" table
        When I enter "12" into "input.phone" field
        Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
        Then I should see "Gordon" in "lastName" column in row "2" of "student.table" table
    Scenario: Age search
        When I browse to the "/"
        When I enter "1" into "input.age" field
        Then I should see "Bridges" and "Rose" in "lastName"