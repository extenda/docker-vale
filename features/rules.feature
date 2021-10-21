Feature: Rules

  Scenario: Extenda Retail Business Unit terms
    When I test "BusinessUnits"
    Then the output should contain exactly:
    """
    fixtures/BusinessUnits/test.md:4:1:Extenda.BusinessUnits:Consider using 'Business Unit(s)' instead of 'Store'.
    fixtures/BusinessUnits/test.md:5:1:Extenda.BusinessUnits:Consider using 'Business Unit(s)' instead of 'Shop'.
    fixtures/BusinessUnits/test.md:6:1:Extenda.BusinessUnits:Consider using 'Business Unit(s)' instead of 'Supermarket'.
    fixtures/BusinessUnits/test.md:9:1:Extenda.BusinessUnits:Consider using 'Business Unit Group(s)' instead of 'Store group'.
    fixtures/BusinessUnits/test.md:10:1:Extenda.BusinessUnits:Consider using 'Business Unit Group(s)' instead of 'Shop group'.
    fixtures/BusinessUnits/test.md:11:1:Extenda.BusinessUnits:Consider using 'Business Unit Group(s)' instead of 'Chain'.
    fixtures/BusinessUnits/test.md:14:1:Extenda.BusinessUnits:Consider using 'Business Unit(s)' instead of 'Stores'.
    fixtures/BusinessUnits/test.md:15:1:Extenda.BusinessUnits:Consider using 'Business Unit(s)' instead of 'Shops'.
    fixtures/BusinessUnits/test.md:16:1:Extenda.BusinessUnits:Consider using 'Business Unit(s)' instead of 'Supermarkets'.
    fixtures/BusinessUnits/test.md:19:1:Extenda.BusinessUnits:Consider using 'Business Unit Group(s)' instead of 'Store groups'.
    fixtures/BusinessUnits/test.md:20:1:Extenda.BusinessUnits:Consider using 'Business Unit Group(s)' instead of 'Shop groups'.
    fixtures/BusinessUnits/test.md:21:1:Extenda.BusinessUnits:Consider using 'Business Unit Group(s)' instead of 'Chains'.
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
