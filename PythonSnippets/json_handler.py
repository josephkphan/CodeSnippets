import json


def read_json(file_path):
    """
    :param file_path:
    :return: dictionary casted jason object
    """
    try:
        with open(file_path) as f:
            return json.load(f)
    except IOError as e:
        print 'could not read ' + file_path


def write_json(json_dict, file_path):
    """
    :param json_dict: dictionary to be written in json format
    :param file_path: path to write file i.e. './config.json'
    :return: None
    """
    out_file = open(file_path, "w")
    json.dump(json_dict, out_file, indent=4)
    out_file.close()


