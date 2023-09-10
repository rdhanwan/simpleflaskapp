# flaskapi-demo
Python simple hello world flask API

# Run Application in interactive bash
docker run -it --name mypythond1-demo -p 5000:5000 -v ${PWD}:/app python:3.11.5 bash

# Run below command into bash shell
pip install flask

cd app/

export FLASK_APP=mypython1.py 

export FLASK_DEBUG=1

flask run --host=0.0.0.0

# Build docker image steps
docker build -t mypython:simpleapp -f Dockerfile .

docker run -it --rm -p 5000:5000 mypython:simpleapp

# Access application in the browser
http://localhost:5000/