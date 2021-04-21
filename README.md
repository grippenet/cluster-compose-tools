Cluster Management
==================

Cluster management tools for GrippeNet.fr based on docker-compose

## Installation

Requirements:

- bash
- python >= 2.7
  
Repositories locations are provided by variables to put in conf.sh (an placeholder file is conf.sample)
Default conf use src/ location, you can use this path and create symlink to your real code location into src/

## Configuration

- copy conf.sample to 'conf' and edit it with your setting
- Create an directory to contains the built files (e.g 'env/')
- copy env.json.sample to env/env.json and edit it with your setting

conf file will contain the configuration used by the `build` command, and the env.json the variables used to build the environment files 
from the templates

In env.json, each key will become a template variable called by {{NAME}}, this syntax can also be used in the values of entries in the env.json itself
they will be substituted with the value of the corresponding key before to be used for the templates.
