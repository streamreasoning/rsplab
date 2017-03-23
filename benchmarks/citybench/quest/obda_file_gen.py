from string import Template
from sys import argv

outer = argv[1]
inner = argv[2]
next = argv[4]

inner_file = open( inner )
inner_file_contnet = inner_file.read()

outer_file = open( outer )
outer_tmpl = Template( outer_file.read() )

if next=="true":
 next = "$MappingDeclaration"
else:
 next = ""

print next

outer_edited = outer_tmpl.substitute({"MappingDeclaration":inner_file_contnet, "next":next})


text_file = open(argv[3], "w")
text_file.write(outer_edited)
text_file.close()