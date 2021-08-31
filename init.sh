#create virtual env
deactivate
rm -rf venv
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip

#install flask and its requirements
pip install -r app/requirements.txt

# Run basic flask app
export FLASK_APP=app/app.py
flask run


# Docker
cd app
docker build -t flask-basic .
docker run -p 5000:5000 flask-basic
