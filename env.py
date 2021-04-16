
import glob
import json

def update_template(file, data):
    with open(file, 'r') as f:
        content = f.read()
        f.close()
        for name, value in data.items():
            var = '{{' + name + '}}'
            content = content.replace(var, value)
    return content 

with open('env.json','r') as fp:
    data = json.load(fp)

for file in glob.glob('env/*.tpl'):
    target = file.replace('.tpl', '.env')
    content = update_template(file, data)
    with open(target, 'w+') as f:
        f.write(content)
        f.close()