 
from setuptools import setup, find_packages

setup(
    name='BREEZE',
    version='0.1',
    description='Audio Player/Visualizer',
    author='AK1R4S4T0H',
    author_email='ak1r4s4t0h@proton.me',
    packages=find_packages(),
    install_requires=[
        # Add dependencies from requirements.txt
        *open('requirements.txt').read().splitlines(),
    ],
)
