# API Checklist — краткая версия

## GET /orders
- [ ] 200 OK
- [ ] 401 Unauthorized
- [ ] 403 Forbidden
- [ ] 503 Service Unavailable

## POST /orders
- [ ] 201 Created
- [ ] 400 Bad Request
- [ ] 422 Unprocessable Entity
- [ ] 409 Conflict
- [ ] 404 Not Found

## GET /orders/{id}
- [ ] 200 OK
- [ ] 404 Not Found
- [ ] 403 Forbidden

## PUT /orders/{id}
- [ ] 200 OK
- [ ] 412 Precondition Failed
- [ ] 404 Not Found

## DELETE /orders/{id}
- [ ] 204 No Content
- [ ] 403 Forbidden
- [ ] 404 Not Found

## Общие
- [ ] 429 Too Many Requests
- [ ] 405 Method Not Allowed
- [ ] 415 Unsupported Media Type