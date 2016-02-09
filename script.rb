
a_1 = Article.first
p a_1

a_last = Article.last
p a_last

n_1 = Newspaper.first
p n_1

n_last = Newspaper.last
p n_last

m_1 = Magazine.first
p m_1

m_last = Magazine.last
p m_last

p a_1.articleable

p a_last.articleable

p n_1.articles

p m_last.articles

x = Magazine.first.articles.build(body:"Testing", title:"Test Title")
x.save

Newspaper.first.articles << Article.find(12)

Magazine.first.articles << Article.create(title: "X", body:"XYZ") 

n1 = Newspaper.first
n1.article_ids = [12,13]

n1.destroy

Magazine.first.articles << Article.create(title: "HI", body:"NEW")
Magazine.first.destroy