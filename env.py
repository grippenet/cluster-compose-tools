# Very simple environment template parser
# Only substitute name variable to a predermined set of known values from env.json
import glob
import json
import re
import sys
from os.path import basename
from os import getenv

var_pattern = re.compile('{{([^}]+)}}')
name_pattern = re.compile('[a-z]+[-_a-z0-9]+', re.IGNORECASE)

def parse(content, data, debug=False): 
    r = var_pattern.findall(content)
    for name in r:
        if not name_pattern.match(name):
            raise Exception("Variable '%s' is not a good variable name" % (name))
        if not name in data:
            raise Exception("Variable '%s' is not known" % (name))
        value = data[name]
        var = '{{' + name + '}}'
        if debug:
            print("%s : '%s' %s"  % (name, content, value,))
        content = content.replace(var, value)
        if debug:
            print(" => "+ content+ "\n")
        
    return content

def update_template(file, data):
    with open(file, 'r') as f:
        content = f.read()
        f.close()
    try:
        content = parse(content, data)
    except Exception as e:
        print("Error in %s %s" % (file, e))
    return content 

def update_data(data):
    """
        Update data to find variables inside
    """
    to_update = [] # Find entries needed to be updated
    for name, value in data.items():
        if var_pattern.search(value):
            to_update.append(name)
    for name in to_update:
        data[name] = parse(data[name], data)
    return data        

target_dir = 'env'

if getenv('ENV_DIR') != "":
    target_dir = getenv('ENV_DIR')

if len(sys.argv) > 1:
    target_dir = sys.argv[1]

with open(target_dir + '/env.json','r') as fp:
    data = json.load(fp)
    fp.close()

# Can use {{ENV_DIR}} to relate to current environment dir
data['ENV_DIR'] = target_dir

data = update_data(data)

with open(target_dir + '/env.build.json', 'w') as fp:
    json.dump(data, fp)
    fp.close()

print("Building env from %s" % (target_dir))
count = 0
for file in glob.glob('templates/*.tpl'):
    target = target_dir+  '/' + basename(file)
    target = target.replace('.tpl', '.env')
    content = update_template(file, data)
    with open(target, 'w+') as f:
        f.write(content)
        f.close()
    count += 1
print("%d files generated" % (count, ))