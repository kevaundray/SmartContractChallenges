# How To Install The Neo Environment On Mac

## Pre-requisites:

- Docker ( https://www.docker.com/community-edition )
- HomeBrew ( ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" )
- Git ( brew install git )

## Step 1: Install private net

  - docker pull cityofzion/neo-privatenet

## Step 2: Install python3.6 

  - brew install python *or* https://www.python.org/downloads/
  
  - As of 17th April 2018, python3.6 is the latest
  
## Step 3: Install neo-python sdk via git
 - mkdir neosc && cd neosc 

 - git clone https://github.com/CityOfZion/neo-python.git
 
 - cd neo-python
 
 - python3.6 -m venv venv
 
 - source venv/bin/activate
 
 - pip install -e .
 
*If you have two versions of python then "pip install -e ." may not work. Try "pip3 install -e ."*

## Step 3: Install neo-python via pip

 - mkdir neosc && cd neosc 

 - python3.6 -m venv venv 
 - source venv/bin/activate
 - pip install neo-python
 
 *If you have two versions of python then "pip install -e ." may not work. Try "pip3 install -e ."*