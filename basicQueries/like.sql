/*
LIKE

*/

--comodín %  Representa cero, uno o varios caracteres

martin% -> Todos las palabras que empiecen con martin
--NOT Like

WHERE ph.PhoneNumber NOT LIKE '415%'
Todos los números que no inician con 415

-- USO DE %%

WHERE LastName LIKE '%ssa%'
Todas las palabras que tenga incluyan ssa en alguna parte de la cadena

--carácter comodín “_” Representa un solo caracter
