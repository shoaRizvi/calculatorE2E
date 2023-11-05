const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: "http://127.0.0.1:5000",
    specPattern: "**/*.feature",
    chromeWebSecurity: false,
    setupNodeEvents(on, config) {
      const cucumber = require("cypress-cucumber-preprocessor").default;
      const browserify = require("@cypress/browserify-preprocessor");
      const options = {
        ...browserify.defaultOptions,
      };
      on("file:preprocessor", cucumber(options));
    },
  },
});
