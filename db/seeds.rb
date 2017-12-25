g = Job.find_or_create_by!(title: 'garbage collector')
b = Job.find_or_create_by!(title: 'babysitter')
d = Job.find_or_create_by!(title: 'dogwalker')

s = Applicant.find_or_create_by!(name: 'scott')
a = Applicant.find_or_create_by!(name: 'anne')
sa = Applicant.find_or_create_by!(name: 'santa')

Tag.find_or_create_by!(name: 'lucrative', taggable_id: b.id, taggable_type: b.class.to_s)

b.tags.create!(name: 'fancy')
