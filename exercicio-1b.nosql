b) Faça uma consulta que retorne a lista de todos os atores com o número filmes que cada ator participou. Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram. 
db.biblioteca.aggregate([
  { $match: { pageCount: { $gt: 120 } } }, // livros com mais de 120 páginas
  { $unwind: "$authors" },
  { 
    $group: { 
      _id: "$authors", 
      totalLivros: { $sum: 1 } 
    } 
  },
  { $sort: { totalLivros: -1 } }
]).pretty()

