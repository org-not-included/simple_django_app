# Create virtual environment, if needed
if [ ! -d ".venv/" ]; then
    echo "Installing virutalenv..."
    python3 -m pip install virtualenv
    echo "Creating .venv/..."
    python3 -m virtualenv .venv/
fi

# Activate virtual environment, if one isn't active
if [ -z "$VIRTUAL_ENV" ]; then
    echo "Activating Virtual Environment..."
    . .venv/bin/activate
else
    echo -e "Deactivating Virtual Environment: $VIRTUAL_ENV/"
    deactivate
    echo "Activating Virtual Environment..."
    . .venv/bin/activate
fi

# Install PyPi packages (python requirements)
pip3 install Django

# Initialize Django project
django-admin startproject simple_app .

# Initialize DB storage
python3 manage.py migrate

# Start server
python3 manage.py runserver
