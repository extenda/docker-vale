Feature: Rules

  Scenario: Extenda Retail related terms
    When I test "ExtendaTerm"
    Then the output should contain exactly:
      """
      test.md:3:110:Extenda.ExtendaTerm:Don't use language (such as 'able-bodied') that defines people by their disability.
      test.md:5:24:Extenda.ExtendaTerm:Don't use language (such as 'crippled') that defines people by their disability.
      """