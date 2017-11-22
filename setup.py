#!/usr/bin/env python

from distutils.core import setup

setup(name='slackup',
      version='0.3',
      license='ISC',
      description='Wrapper for SlackClient',
      long_description=open('README.rst', 'r').read(),
      author='Christian Bryn',
      author_email='chr.bryn@gmail.com',
      url='https://github.com/epleterte/slackup',
      platform='Linux',
      py_modules=['slackup'],
      keywords=['slack']
     )