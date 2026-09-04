RaceDay System - API Endpoint Plan

Section B - API Endpoint Plan

HTTP Method | Route | Description | Role Required | Request Body | Expected Response
POST | /api/auth/register | Register a new user account. | Public | name, email, password, role | 201 Created - user account created; 400 Bad Request if validation fails.
POST | /api/auth/login | Authenticate a user and return an access token. | Public | email, password | 200 OK - token and user details; 401 Unauthorized for invalid credentials.
GET | /api/profile | Get the logged-in user's profile. | Authenticated User | None | 200 OK - profile details; 401 Unauthorized if not logged in.
PUT | /api/profile | Update the logged-in user's profile. | Authenticated User | Profile fields to update | 200 OK - updated profile; 400 Bad Request if validation fails.
GET | /api/events | Get a list of available RaceDay events. | Public | Optional filters | 200 OK - list of events.
GET | /api/events/{id} | Get details for a specific event. | Public | None | 200 OK - event details; 404 Not Found if event does not exist.
POST | /api/events | Create a new RaceDay event. | Admin | event details | 201 Created - event created; 400 Bad Request if validation fails.
PUT | /api/events/{id} | Update an existing event. | Admin | Updated event details | 200 OK - event updated; 404 Not Found if event does not exist.
DELETE | /api/events/{id} | Delete an existing event. | Admin | None | 204 No Content; 404 Not Found if event does not exist.
GET | /api/categories | Get all event categories. | Public | None | 200 OK - list of categories.
POST | /api/categories | Create a new event category. | Admin | category name/details | 201 Created - category created; 400 Bad Request if invalid.
PUT | /api/categories/{id} | Update an event category. | Admin | Updated category details | 200 OK - category updated; 404 Not Found if category does not exist.
DELETE | /api/categories/{id} | Delete an event category. | Admin | None | 204 No Content; 404 Not Found if category does not exist.
POST | /api/events/{id}/enrol | Enrol the logged-in user in an event. | Authenticated User | None or participant details | 201 Created - enrolment created; 400 Bad Request if already enrolled; 404 Not Found if event does not exist.
GET | /api/events/{id}/enrolments | View all enrolments for an event. | Admin | None | 200 OK - list of event enrolments.
GET | /api/enrolments | View the logged-in user's event enrolments. | Authenticated User | None | 200 OK - list of user's enrolments.
DELETE | /api/events/{id}/enrol | Cancel the logged-in user's enrolment in an event. | Authenticated User | None | 204 No Content; 404 Not Found if enrolment does not exist.
GET | /api/results | Get RaceDay results. | Public | Optional event/filter parameters | 200 OK - list of results.
GET | /api/events/{id}/results | Get results for a specific event. | Public | None | 200 OK - event results; 404 Not Found if event does not exist.
POST | /api/events/{id}/results | Record results for an event. | Admin | result details | 201 Created - result recorded; 400 Bad Request if invalid.
PUT | /api/results/{id} | Update an existing result. | Admin | Updated result details | 200 OK - result updated; 404 Not Found if result does not exist.
DELETE | /api/results/{id} | Delete an existing result. | Admin | None | 204 No Content; 404 Not Found if result does not exist.

Notes:
- The implemented API in Part 2 should closely match this plan.
- Authentication endpoints are public; protected endpoints require the appropriate authenticated role.
- The endpoint names and request/response structures can be adjusted to match the final database schema, provided any deliberate differences are explained in the README.
