Tag.destroy_all
Job.destroy_all
Applicant.destroy_all


g = Job.find_or_create_by!(title: 'garbage collector')
b = Job.find_or_create_by!(title: 'babysitter')
d = Job.find_or_create_by!(title: 'dogwalker')

s = Applicant.find_or_create_by!(name: 'scott')
a = Applicant.find_or_create_by!(name: 'anne')
sa = Applicant.find_or_create_by!(name: 'santa')

l = Tag.find_or_create_by!(name: 'lucrative', taggable_id: b.id, taggable_type: b.class.to_s)

c = Tag.find_or_create_by!(name: 'classy', taggable_id: b.id, taggable_type: b.class.to_s)

k = Tag.find_or_create_by!(name: 'kindness', taggable_id: sa.id, taggable_type: sa.class.to_s)

b.tags.create!(name: 'fancy')

a.tags << c
