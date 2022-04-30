echo [$(date)]: "START"
export VERSION=3.9
echo [$(date)]: "creating environment with python ${VERSION}"
conda create --prefix ./env python=${VERSION} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install requirements"
pip install -r requirements.txt
echo [$(date)]: "initialize git repository"
git init
# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/