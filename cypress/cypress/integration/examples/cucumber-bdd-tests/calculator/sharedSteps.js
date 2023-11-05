import { Then, When } from "cypress-cucumber-preprocessor/steps";

Given("User is on the Simple Calculator page", function () {
  cy.visit("/");
});

When("User enters {string}", (number) => {
  cy.get('[name="num1"]').type(number);
});

When("User enters operator {string}", (operator) => {
  cy.get('[name="operator"]').type(operator);
});

When("User adds {string}", (number) => {
  cy.get('[name="num2"]').type(number);
});

When("User clicks calculate", () => {
  cy.get('[value="Calculate"]').click();
});

When("User presses {string} key", (key) => {
  cy.get('[name="num2"]').type(`{${key}}`);
});

Then("Result should be {string}", (result) => {
  cy.get("p").should("have.text", `Result: ${result}`);
});

Then(
  "num1 should show validation error {string} when it is empty and calculate button has been clicked",
  (errorMessage) => {
    cy.get('[name="num1"').then(($input) => {
      expect($input[0].validationMessage).to.eq(errorMessage);
    });
  }
);
