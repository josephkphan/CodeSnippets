import threading


class RunnableThread(threading.Thread):
    """
    Pass in a function into this class, and it will run it as a new thread
    """
    def __init__(self, runnable, *args):
        threading.Thread.__init__(self)
        self.runnable = runnable

    def run(self):
        self.runnable()

# To use, instantiate the class i.e.
# thread = RunnableTread(foo)
# thread.start()
