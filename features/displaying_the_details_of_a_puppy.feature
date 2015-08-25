Feature: Displaying the details of a puppy

  Background:
    Given I am looking at the available puppies

  Scenario: Learning more about a puppy I am interested in
    When I want to learn more information about "Sparky"
    Then I will be able to see "Sparky"s details

  Scenario: Seeing the name and breed of my puppy
    When I want to learn more information about "Sparky"
    Then I know that he is a type of "Austrailian Cattle Dog (Blue Heeler)"
    And I know that he is a "Male"

  Scenario: Learning more about the life of my puppy
    When I want to learn more information about "Spud"
    Then I can see that my puppy "is playful and friendly and would make a great addition to your family"

  Scenario: Looking into the eyes of my puppy one last time
    When  I want to learn more information about "Ruby Sue"
    Then I can look into the eyes of my puppy before I make my decision

  Scenario: Knowing what my puppy will set me back
    When I want to learn more information about "Tipsy"
    Then I know that the adoption fee is "$42.00"








