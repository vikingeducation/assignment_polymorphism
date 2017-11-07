lab = Lab.create title: 'Rocks lab', building: 'Geology', room_number: 'A110'

TeachingAssistant.create first_name: 'Velma',
                         last_name: 'Dinkly',
                         classification: 'Junior',
                         teach_duty: lab

course = Course.create title: 'Rocks for Jocks', capacity: 25

TeachingAssistant.create first_name: 'Fred',
                         last_name: 'Jones',
                         classification: 'Sophomore',
                         teach_duty: course