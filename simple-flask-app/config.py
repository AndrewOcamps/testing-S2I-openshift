class Config(object):
  DEBUG = False
  TESTING = False
  MSG = 'Hello World \n'

class ProductionConfig(Config):
  pass

class DevelopmentConfig(Config):
  DEBUG = True

class TestingConfig(Config):
  TESTING = True
