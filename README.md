# PastingPlace - Backend

Written with ruby on rails 5.2

```
bundle install
rake db:create
rake db:migrate
rake db:seed
rake start -p 4000
```

Paste Json Format Example
```
{"id":1,"content":"Item12345","created_at":"2018-06-17T11:43:16.000Z","updated_at":"2018-06-17T11:43:16.000Z"}
```
| Field        | Function           | 
| ------------- |:-------------:|
| id      | Paste id number |
| content     | Html content of paste      | 
| created_at | Time paste was created      | 

API Endpoints 
| Endpoint     | Method |  Function           | 
| ------------- | --------------- | :-------------:|
| /api/v1/pastes/recent | GET | View the last 5 pastes created. Returnas an array of Pastes |
| /api/v1/pastes/ | POST | Creates a new paste. Requires a paste JSON file with content |
| /api/v1/pastes/:id | GET | Retrieves a paste with the specified id. Returns a paste JSON object |
| /api/v1/photos | POST | Uploads a photo to the server. The server will return a json with a variable 'location' containing location of the image.  |