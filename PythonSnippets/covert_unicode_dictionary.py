import collections


def convert(data):
    """
    This takes a unicode dictionary as a parameter i.e. {u'key': u'value'},
    This functional will encode it back to a normal looking dictionary (utf-8) and return the dictionary
    """
    if isinstance(data, basestring):
        return str(data.encode('utf-8'))
    elif isinstance(data, collections.Mapping):
        return dict(map(convert, data.iteritems()))
    elif isinstance(data, collections.Iterable):
        return type(data)(map(convert, data))
    else:
        return data
