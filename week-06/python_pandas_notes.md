# Python & Pandas märkmed

## Nädalas 6: Python andmeanalüüs

Python on universiaal-programmeerimiskeel, Pandas on andmeanalüüsi teek.

### Peamised teemad
- Pandas DataFrame
- Andmete laadimine (CSV, Excel)
- Filtreerimine ja sorteerimine
- Gruppeerimise ja agregaatsete funktsioonid
- Visualiseerimine (Matplotlib, Seaborn)

### Näide
```python
import pandas as pd

df = pd.read_csv('data.csv')
df.groupby('category')['amount'].sum()
```

### Kasulinkud
- [Pandas Documentation](https://pandas.pydata.org/)
- [Python Visualisation](https://matplotlib.org/)
