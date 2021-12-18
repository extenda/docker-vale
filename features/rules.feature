Feature: Rules

  Scenario: Extenda Retail Business Unit terms
    When I test "BusinessUnits"
    Then the output should contain exactly:
    """
    fixtures/BusinessUnits/test.md:3:1:Extenda.BusinessUnits:Consider using `Business Unit(s)` instead of `A store`.
    fixtures/BusinessUnits/test.md:6:1:Extenda.BusinessUnits:Consider using `Business Unit(s)` instead of `The supermarket`.
    fixtures/BusinessUnits/test.md:6:21:Extenda.BusinessUnits:Consider using `Business Unit(s)` instead of `a shop`.
    fixtures/BusinessUnits/test.md:9:1:Extenda.BusinessUnits:Consider using `Business Unit Group(s)` instead of `A chain`.
    fixtures/BusinessUnits/test.md:9:13:Extenda.BusinessUnits:Consider using `Business Unit Group(s)` instead of `the chain`.
    """

  Scenario: Extenda Retail Business Unit terms
    When I test "Terms"
    Then the output should contain exactly:
    """
    fixtures/Terms/test.md:4:1:Extenda.Terms:Consider using 'Supplier(s)' instead of 'Vendor'.
    fixtures/Terms/test.md:5:1:Extenda.Terms:Consider using 'Product(s)' instead of 'Article'.
    fixtures/Terms/test.md:8:1:Extenda.Terms:Consider using 'Supplier(s)' instead of 'Vendors'.
    fixtures/Terms/test.md:9:1:Extenda.Terms:Consider using 'Product(s)' instead of 'Articles'.
    """

  # Scenario: NEW FIXTURE
  # When I test "NAME OF FIXTURE"
  # Then the output should contain exactly:
  #   """
  #   fixtures/NAME OF FIXTURE WITHOUT SPACE/test.md:LINE:CHARACTER:ERROR MESSAGE
  #   """
