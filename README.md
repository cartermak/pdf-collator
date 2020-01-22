# pdf-collator
Python 3 program to collate and reorder double-sided documents scanned through a single-sided document feeder. 

## Usage: Linux

The shell script `setup.sh` checks/installs Python 3, pip, and python3-venv for Debian/Ubuntu systems.

Included is a virtual environment with the necessary `PyPDF2` package included. To use, first enter the virtual environment:

```bash
source pypdf-env/bin/activate
```

Usage for the actual program is as follows:

```
python3 collate_PDFs.py <first-file>.pdf <second-file>.pdf <output-file>.pdf
```

*(Remove the angle brackets.)*

To exit the virtual environment:

```bash
deactivate
```

## Usage: Windows

With Python and Pip installed, use the following CMD command to install pypdf2:

```cmd
pip install pypdf2
```

Then, run the program using:

```cmd
py collate_PDFs.py <first-file>.pdf <second-file>.pdf <output-file>.pdf
```