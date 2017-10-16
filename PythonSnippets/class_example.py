
class TestClass:
    """
    This is an example class
    """

    def __init__(self):
        """
        Constructor
        """
        # Defining Host 1
        self.text = 'hello world'   # class member

    def foo(self):
        print self.text

    @staticmethod
    def foo2():
        print 'Static Methods cannot have class members..'
        print'Also can be called without object instantiated'


my_object = TestClass()
my_object.foo()

TestClass.foo2()
