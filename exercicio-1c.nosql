c) Faça uma consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de duração (120min). Ordene a lista pelo numero de filmes que cada ator participou. 
db.biblioteca.aggregate([
  { $match: { pageCount: { $gt: 120 } } },         
  { $unwind: "$authors" },                         
  { 
    $group: { 
      _id: "$authors",                             
      totalLivros: { $sum: 1 }                     
    } 
  },
  { $sort: { totalLivros: -1 } }                   
]).pretty()

