import pprint

pp = pprint.PrettyPrinter(indent=4)

ex_dict = {
    "a": 1,
    "b": {
        "x": -1,
        "y": -2,
        "z": -3
    },
    "c": 3
}

pp.pprint(ex_dict)
print ex_dict
