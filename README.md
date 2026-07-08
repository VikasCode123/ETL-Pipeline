## 📥 Step 1: Download Dataset from Kaggle

```python
import os
import zipfile
from kaggle.api.kaggle_api_extended import KaggleApi

# Initialize and authenticate the Kaggle API
api = KaggleApi()
api.authenticate()

# Kaggle dataset slug
dataset_slug = "vikas605/sales-profit"

print("Downloading dataset archive...")

# Download the dataset as a ZIP archive
api.dataset_download_files(
    dataset_slug,
    path=".",
    unzip=False
)

# Name of the downloaded ZIP file
zip-filename = "sales-profit.zip"

print(f"Extracting {zip_filename}...")

# Extract the ZIP archive
with zipfile.ZipFile(zip_filename, "r") as zip_ref:
    zip_ref.extractall(".")

print("✅ Success! Dataset downloaded and extracted successfully.")


Downloading dataset archive...

Dataset URL: https://www.kaggle.com/datasets/vikas605/sales-profit
Extracting sales-profit.zip...
✨ Success! The zip file was downloaded and extracted. 'sales_profit.csv' is ready!
print("📄 sales_profit.csv is ready for the ETL pipeline.")
```
## 📥 Step 2: Import Libraries load data set

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import warnings
warnings.filterwarnings('ignore')

import pandas as pd
import os
print(os.listdir())

import pandas as pd
df = pd.read_csv("sales_profit.csv", encoding="latin1")
df.head()


df = df.rename(columns={'Order ID':'order_ID', 'City':'city'})

df.shape

df.columns = df.columns.str.lower()

df.columns

df.head(5)

```python




























