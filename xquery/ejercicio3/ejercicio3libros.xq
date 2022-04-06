
(: a) doc("ejercicio_3_libros.xml")/bib/libro/titulo/data():)

(: b) for $x in doc("ejercicio_3_libros.xml")//libro
where $x/@year='2000'
return $x/titulo:)

(: c) for $x in doc("ejercicio_3_libros.xml")//libro
where $x/@year>=1995 and $x/@year<=2000
return $x/titulo:)

(: d) for $x in doc("ejercicio_3_libros.xml")//libro
where  $x/autor/apellido="Stevens"
return $x/titulo/data():)

(: e1) for $x in doc("ejercicio_3_libros.xml")//libro
where $x/editorial='Addison-Wesley'
return $x/titulo:)

(: e2) for $x in doc("ejercicio_3_libros.xml")//libro
let $y := $x/editorial
where $y='Addison-Wesley'
return $x/titulo:)

(: f) for $x in doc("ejercicio_3_libros.xml")//libro
where $x/autor[1]
order by $x/precio
return $x/titulo:)

(: h) for $x in doc("ejercicio_3_libros.xml")//libro
let $y :=($x/autor)
let $count :=count ($y)
return 
<registro>
<NAutores>{$count}</NAutores>
<titulo>{$x/titulo}</titulo>
<año>{$x/@año}</año>
</registro>
:)
for $x in doc("ejercicio_3_libros.xml")//libro
let $y :=($x/autor)
let $count :=count ($y)
return 
<resumen_bib>
<libro>
<titulo>{$x/titulo/data()}</titulo>
<anio>{$x/@year}</anio>
<num_autores>{$count}</num_autores>
</libro>
</resumen_bib>
