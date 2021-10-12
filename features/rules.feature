Feature: Rules

  Scenario: Extenda Retail related terms
    When I test "ExtendaTerm"
    Then the output should contain exactly:
      """
      test.md:3:1:Extenda.ExtendaTerm:Consider using 'Business Unit(s)' instead of 'Store'.
      test.md:4:1:Extenda.ExtendaTerm:Consider using 'Business Unit Group(s)' instead of 'Chain'.
      """

  Scenario: Vale.Terms definitions
  When I test "Vale.Terms"
  Then the output should contain exactly:
    """
    test.md:3:1:Microsoft.Acronyms:'DAFB' has no definition.
    """
