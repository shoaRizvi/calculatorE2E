/// <reference types="Cypress"/>
import { Given, When, Then, Add } from "cypress-cucumber-preprocessor/steps";

Given("I successfully browse to the application", function () {
  cy.visit("/");
});

Then("I should see the title of the page {string}", (title) => {
  const h1 = cy.get("h1").should("have.text", title);
});
