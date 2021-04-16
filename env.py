# Very simple environment template parser
# Only substitute name variable to a predermined set of known values from env.json
import glob
import json

def parse(content, data): 
    for name, value in data.items():
        var = '{{' + name + '}}'
        content = content.replace(var, value)
    return content

def update_template(file, data):
    with open(file, 'r') as f:
        content = f.read()
        f.close()
    content = parse(content, data)
    return content 

def update_data(data):
    d = {}
    for name, value in data.items():
        d[name] = parse(value, data)
    return d        

with open('env.json','r') as fp:
    data = json.load(fp)

data = update_data(data)

for file in glob.glob('env/*.tpl'):
    target = file.replace('.tpl', '.env')
    content = update_template(file, data)
    with open(target, 'w+') as f:
        f.write(content)
        f.close()