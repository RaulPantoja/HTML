"Ejemplo con HTML",
<ul>
{
  for $x in doc("books.xml")/bookstore/book/title order by $x 
  return <li>{data($x)}</li>
}
</ul>,
for $x in doc ("books.xml")/bookstore/book 
return if ($x/@category="web")
then <web>{$x/title/text()}</web>
else <noweb>{$x/title/text()}</noweb>