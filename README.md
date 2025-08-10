# Python Dev Environment Auto-Setup

This script automatically sets up a Python virtual environment in the current folder, installs common data science packages, creates a blank Jupyter notebook if it doesn't exist, and opens the project in VS Code — all in one go.

## 🚀 Features
- Creates a `venv` virtual environment in the current directory
- Installs:
  - `jupyter`
  - `ipykernel`
  - `numpy`
  - `pandas`
  - `matplotlib`
  - `scikit-learn`
- Automatically creates an empty `playground.ipynb` notebook if it’s missing
- Saves installed packages to `requirements.txt`
- Opens the project in VS Code at the end

## 🛠 Usage

### 1. Clone the repository
```bash
git clone https://github.com/Tushar-Aich/python_script.git
cd python_script
chmod +x python_env.sh
./python_env.sh
```
#### You can also create an alias at the .bashrc file and run it with just a simple command.
