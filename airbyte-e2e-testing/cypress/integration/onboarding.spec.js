describe("Onboarding actions", () => {
  it("Skip onboardding", () => {
    cy.visit("/");
    cy.url().should("include", `${Cypress.config().baseUrl}/preferences`);

    cy.fillEmail("test-email-onboarding@test-onboarding-domain.com");
    cy.get("input[name=securityUpdates]").parent().click();

    cy.submit();

    cy.url().should("equal", `${Cypress.config().baseUrl}/`);
  });
});
