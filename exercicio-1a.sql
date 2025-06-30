Exercício 1:  
a) Faça uma consulta que retorne a lista de filmes e suas categorias correspondentes. 
db.biblioteca.find(
  { categories: { $exists: true, $ne: [] } },
  { title: 1, categories: 1, _id: 0 }
).pretty()

