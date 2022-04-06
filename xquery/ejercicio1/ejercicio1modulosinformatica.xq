(:a) doc("ejercicio_1_modulos_informatica.xml")/ies/modulos/modulo/nombre:)

(:b) doc("ejercicio_1_modulos_informatica.xml")/ies/modulos/modulo[ciclo="ASIR"]:)

(:c) doc("ejercicio_1_modulos_informatica.xml")/ies/modulos/modulo[curso="2"]:)

(:d) for $x in doc("ejercicio_1_modulos_informatica.xml")/ies/modulos/modulo[ciclo="ASIR"][curso="1"]order by $x/@nombre
return $x/nombre:)

(:e) for $x in doc("ejercicio_1_modulos_informatica.xml")/ies/modulos/modulo where horasSemanales>5
return $x/nombre:)

(:f) doc("ejercicio_1_modulos_informatica.xml")/ies/modulos/count(.//modulo[curso="1"][ciclo="ASIR"]) :)


(:g)  doc("ejercicio_1_modulos_informatica.xml")/ies/modulos/modulo[horasSemanales>3]/data():)

