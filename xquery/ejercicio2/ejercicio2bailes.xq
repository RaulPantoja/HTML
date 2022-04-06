(: a) doc("ejercicio_2_bailes.xml")/bailes/baile/nombre/data():)

(: b) doc("ejercicio_2_bailes.xml")/bailes/baile[sala="1"]/nombre:)

(: c) doc("ejercicio_2_bailes.xml")/bailes/baile[sala="2"][precio<"35"]:)

(: d) for $x in doc("ejercicio_2_bailes.xml")/bailes/baile
where $x/precio/@cuota="mensual"
return $x/profesor/data():)


  

for $x in doc ("ejercicio_2_bailes.xml")/bailes/baile[profesor="Jesús Lozano"]
return
<bailes_lozano>
  <baile>
  <nombre>{$x/nombre/data()}</nombre>
  <plazas>{$x/plazas/data()}</plazas>
  <duracion>De {$x/comienzo/data()} A {$x/fin/data()}</duracion>
 </baile>
</bailes_lozano>