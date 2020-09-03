# Dev Log

## 9/2/2020

Models:

Event
belongs_to :tutor

- Name
- Description
- Date
- Location/Link
- Total Spaces
- tutor_id

Tutor
has_many :events

- Name
- Speciality
- Phone Number
- Email
