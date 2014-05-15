User.create(name: 'ivan', email: 'ivan@dbc.com', password: '1234')
User.create(name: 'darren', email: 'darren@dbc.com', password: '1234')

Survey.create(name: 'DBC Icebreakers', user_id: User.first.id)
Survey.create(name: 'DBC Feelings', user_id: User.last.id)

Question.create(prompt: 'What is your quirk?', survey_id: Survey.first.id)
Question.create(prompt: 'If you really knew me, you would know what?', survey_id: Survey.last.id)

Option.create(name: 'I like farting', question_id: Question.first.id)
Option.create(name: 'I am double-jointed', question_id: Question.first.id)
Option.create(name: 'I like Ivan', question_id: Question.last.id)
Option.create(name: 'I like sandwiches', question_id: Question.last.id)

Response.create(option_id: Option.first.id, user_id: User.last.id)
Response.create(option_id: Option.first.id, user_id: User.last.id)
Response.create(option_id: Option.last.id, user_id: User.first.id)
Response.create(option_id: Option.last.id, user_id: User.first.id)