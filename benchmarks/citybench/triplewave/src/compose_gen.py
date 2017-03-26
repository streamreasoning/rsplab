from string import Template
from sys import argv
import ConfigParser
import glob
import uuid
import os.path

comp_elem_tmpl = Template((open('./compose-tw.yaml.tmpl')).read())
prop_template = Template((open('./properties.tmpl')).read())

comp='./compose/'
experiments='./experiments/'
tmpl='./compose-templates/'


def gen_prop(s, m):
  res = prop_template.substitute(m)
  text_file = open(experiments+s+".properties", "w")
  text_file.write(res)
  text_file.close()
#end

def gen_comp_elem(s, m):
  res = comp_elem_tmpl.substitute(m)
  text_file = open(tmpl+s+".yml.tmpl", "w")
  text_file.write(res)
  text_file.close()
#end

def gen_comp(q, streams):
  with open(comp+q+".yml", "w") as compose_file:
    compose_file.write(open("./cadvisor.yml.tmpl", "r").read())
    for s in streams:
      stream = open(tmpl+s+".yml.tmpl", "r").read()
      compose_file.write(stream)
  compose_file.close()

#end

traffic="Traffic"
pollution="Pollution"
parking="Parking"
host="triplewave1.westeurope.cloudapp.azure.com:8080/openrdf-sesame/repositories"
base_url="http://cbquest.westeurope.cloudapp.azure.com:8080/openrdf-sesame/repositories"
base_port=4000
base_ws_port=4040


mappings = {}
queries = {}


if not os.path.exists(experiments):
    os.makedirs(experiments)
if not os.path.exists(comp):
    os.makedirs(comp)
if not os.path.exists(tmpl):
    os.makedirs(tmpl)


for fname in glob.glob('./query-streams/*.txt'):
  l=fname.split("/")
  q=l[len(l)-1].split(".")[0];
  queries[q]=[]
  with open(fname) as input_file:
    for i, s in enumerate(input_file):
      s = s.strip()

      if not (s in mappings):
        stype = pollution if  pollution in s else s
        stype = parking if  parking in s else stype
        stype = traffic if  traffic in s else stype
      
        scale_factor = s.split("_")[1] if "_" in s else 1

        compose = {
              "stream_name":s.lower(),
              "stream":s,
              "stream_type":stype,
              "uuid":str(uuid.uuid4()),
              "ws_port":base_ws_port,
              "port":base_port
        }

        properties = { "stream":s,"stream_type":stype,
                "host":host, "port":base_port,
                "ws_loc":"primus", "ws_port":base_ws_port, 
                "base_url":base_url, "scale_factor":scale_factor}
        
        base_port +=1
        base_ws_port +=1

        mappings[s] = {"compose":compose, "properties":properties}
      
      l = queries[q] 
      l.append(s)
        

for m in mappings:
    #print mappings[m]
    gen_prop(m, mappings[m]['properties'])  
    gen_comp_elem(m, mappings[m]['compose'])

for qq in queries:
    gen_comp(qq, queries[qq])



