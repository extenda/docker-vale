Feature: Rules

  Scenario: Extenda Retail related terms
    When I test "ExtendaTerm"
    Then the output should contain exactly:
      """
      fixtures/ExtendaTerm/test.md:3:1:Extenda.ExtendaTerm:Consider using 'Business Unit(s)' instead of 'Store'.
      fixtures/ExtendaTerm/test.md:4:1:Extenda.ExtendaTerm:Consider using 'Business Unit Group(s)' instead of 'Chain'.
      """

  # Scenario: NEW FIXTURE
  # When I test "NAME OF FIXTURE"
  # Then the output should contain exactly:
  #   """
  #   fixtures/NAME OF FIXTURE WITHOUT SPACE/test.md:LINE:CHARACTER:ERROR MESSAGE
  #   """
