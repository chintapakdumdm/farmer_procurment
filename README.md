# Kisan Setu backend

## Local setup

1. Copy `.env.example` to `.env` and set a real Django secret and MySQL password.
2. Run `setup_farmer.sql` in MySQL. If you choose another database password, use the same value in `.env`.
3. Activate the Python environment and run `python manage.py migrate`.
4. Run `python manage.py createsuperuser` to create procurement-centre staff access.
5. Start the API with `python manage.py runserver`.

## Frontend connection

Use `http://127.0.0.1:8000/api/` as the API base URL. For authenticated calls, send the token returned by register or login:

`Authorization: Token <token>`

### Main farmer endpoints

- `POST auth/register/` — username, password, phone, first_name, village, district
- `POST auth/login/` — identifier (phone or username), password
- `GET/PATCH auth/profile/`
- `GET centres/` and `GET slots/?centre_id=<id>`
- `POST book-slot/` — slot_id, crop_name, quantity_kg
- `GET my-bookings/`
- `GET queue-status/?booking_id=<id>`
- `POST bookings/<id>/cancel/`

Procurement updates and notification delivery are restricted to staff accounts.
