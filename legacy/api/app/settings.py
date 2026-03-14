from .util import GoodDog as dog
from .util import heimdahl

DEV = False
VB = False

heimdahl(f'[ENV FETCH]', True, threat = 0)
HOST, IP, PORT, PASSWORD, USER, DB = dog.fetch(dog.where, 'HOST', 'IP', 'PORT', 'PASSWORD', 'DB_USER', 'DATABASE')

__all__ = ['DEV', 'VB', 'HOST', 'IP', 'PORT', 'PASSWORD', 'USER', 'DB'] 