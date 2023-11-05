# Calculator E2E Test using Cucumber & Cypress

## How to run the test
First, run the server and then Cypress

### Server

- install all requirements: `pip install -r requirements.txt`
- Run the server app.py using `python3 ./app.py` (You can create virtual env)

### Cypress
- `cd cypress` and `yarn install`
- `yarn test:run`

### Description
- A separate Cypress folder has been added with Cucumber package. Inside Cypress, the integration folder has the feature & step files.
- The baseURL has been added in cypress.config.js

