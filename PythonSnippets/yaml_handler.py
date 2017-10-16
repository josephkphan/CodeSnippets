import yaml


def read_yaml(file_path):
    """
    :param file_path: path leading to yaml file i.e. './digest.yml'
    :return: dictionary casted yaml object
    """
    yaml_dict = {}
    try:
        for key, value in yaml.load(open(file_path)).iteritems():
            yaml_dict[key] = value
    except Exception as e:
        print('Error opening Yaml File: ', e)

    return yaml_dict


def write_yaml(file_path, yaml_dict):
    """
    :param file_path: Path to Yaml File i.e. './digest.yml'
    :param yaml_dict: Dictionary to be written as a Yaml File
    :return: None
    """
    with open(file_path, 'w') as outfile:
        yaml.dump(yaml_dict, outfile, default_flow_style=False)