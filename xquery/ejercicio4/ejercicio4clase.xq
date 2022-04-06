(: a) 
for $x in doc("ejercicio_4_clase.xml")//clase
let $y :=($x/alumnos/alumno)
let $count :=count($y)
return $count
:)


for $x in doc("ejercicio_4_clase.xml")//clase
let $y :=($x/asignaturas/asignatura)
let $count :=count($y)
return $count


(: c) 
for $x in doc("ejercicio_4_clase.xml")//clase
return $x/alumnos/alumno/apenom 
:)
(: e)
for $x in doc("ejercicio_4_clase.xml")//clase
where   $x/clase/notas/nota/@alum="n43483437"
return 
<alumno cod="n43483437">
<modulo>
<nombre_modulo></nombre_modulo>
<nota>{$x/notas/nota/@calificacion}</nota>
</modulo>
</alumno>
:)





