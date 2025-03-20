from setuptools import setup

setup(
   name='guesssketch',
   version='1.0',
   description='A useful module',
   author='Celine Lee',
   author_email='cl923@cornell.edu',
   packages=['solver', 'guess_and_sketch', 'training'],
   install_requires=[
       "torch",
       "transformers",
       "peft",
       "accelerate",
   ],
)