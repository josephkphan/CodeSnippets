import os


# run this script as ' ENV_VAR=my_environmental_variable python env_variable.py '
try:
    variable_name = os.environ['ENV_VAR']
except KeyError as e:       # KeyError is the error when environmental variables aren't set
    variable_name = 'Not Set!'

print variable_name
