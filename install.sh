#!/bin/bash
#!/bin/zsh

venv_name="BREEZE"

if [ -d "$venv_name" ]; then
    . "$venv_name/bin/activate" || { echo "Failed to activate virtual environment."; exit 1; }
else
    echo "Virtual environment not found. Creating a new one."
    python3 -m venv "$venv_name" || { echo "Failed to create virtual environment."; exit 1; }
    . "$venv_name/bin/activate" || { echo "Failed to activate virtual environment."; exit 1; }
fi

pip install -r requirements.txt || { echo "Failed to install dependencies."; exit 1; }

python setup.py install || { echo "Failed to install your package."; exit 1; }

chmod +x BREEZE.py || { echo "Failed to make BREEZE.py executable."; exit 1; }

echo 'export PATH="$PATH:$(pwd)"' >> ~/.bashrc
source ~/.bashrc

echo 'export PATH="$PATH:$(pwd)"' >> ~/.zshrc
source ~/.zshrc

echo "Installation completed. You can now run BREEZE.py."
