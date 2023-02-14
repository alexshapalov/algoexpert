import pandas as pd
import matplotlib.pyplot as plt

titanic_data = pd.read_csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")
titanic_data = titanic_data[titanic_data['Age'].notnull()]
titanic_data['Fare'] = titanic_data['Fare'].fillna(titanic_data['Fare'].mean())
titanic_data = titanic_data.drop_duplicates()

plt.scatter(titanic_data['Age'], titanic_data['Fare'])
plt.show()
