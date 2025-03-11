# Final Analysis: Irish Animals Dataset (SAS)

This report summarizes key findings from my SAS analysis of the **Irish Animals dataset**. The dataset contains **10 different animal species** and includes details such as **population size, body size, weight, and lifespan**.

---

## Data Overview
- **Total Species Analyzed**: 10
- **No missing values** detected in any variable.
- **Key attributes**: Population, Size (cm), Weight (kg), Lifespan (years).

---

## Population Analysis
### **Most Populated Animals**
| Rank | Animal               | Population  |
|------|----------------------|------------|
| 1    | **Irish Pygmy Shrew** | 5,500,000  |
| 2    | **Irish Red Fox**     | 185,000    |
| 3    | **Irish Badger**      | 95,000     |
| 4    | **Irish Hare**        | 92,000     |
| 5    | **Irish Otter**       | 13,500     |

➡️ **The Irish Pygmy Shrew dominates in numbers**, while the **Irish Otter has the lowest population among the top five.**

### ** Least Populated Animals**
| Rank | Animal               | Population  |
|------|----------------------|------------|
| 1    | **Golden Eagle**      | 20         |
| 2    | **Peregrine Falcon**  | 450        |
| 3    | **Pine Marten**       | 2,800      |
| 4    | **Whooper Swan**      | 3,100      |
| 5    | **Red Deer**          | 12,500     |

➡️ **The Golden Eagle is the rarest animal**, with only **20 recorded individuals**.

---

## Size and Weight Analysis
### ** Largest Animals (by Maximum Size)**
| Rank | Animal           | Max Size (cm) |
|------|-----------------|---------------|
| 1    | **Whooper Swan** | 175           |
| 2    | **Red Deer**     | 165           |
| 3    | **Golden Eagle** | 105           |
| 4    | **Irish Otter**  | 98            |
| 5    | **Irish Red Fox**| 92            |

➡️ **The Whooper Swan is the largest animal**, while the **Golden Eagle is the largest bird.**

### ** Smallest Animals (by Minimum Size)**
| Rank | Animal               | Min Size (cm) |
|------|----------------------|---------------|
| 1    | **Irish Pygmy Shrew** | 4.2           |
| 2    | **Peregrine Falcon**  | 36            |
| 3    | **Irish Red Fox**     | 48            |
| 4    | **Irish Hare**        | 52            |
| 5    | **Pine Marten**       | 53            |

➡️ **The Irish Pygmy Shrew is the smallest, measuring just 4.2 cm.**

### **Heaviest Animals (by Max Weight)**
| Rank | Animal      | Max Weight (kg) |
|------|------------|----------------|
| 1    | **Red Deer**  | 205            |
| 2    | **Whooper Swan** | 13            |
| 3    | **Irish Badger** | 13.5          |
| 4    | **Irish Otter**  | 11.5          |
| 5    | **Golden Eagle** | 6.8           |

➡️ **The Red Deer is the heaviest animal, weighing up to 205 kg!**

### **Lightest Animals**
| Rank | Animal               | Max Weight (kg) |
|------|----------------------|----------------|
| 1    | **Irish Pygmy Shrew** | 0.0065        |
| 2    | **Peregrine Falcon**  | 1.6           |
| 3    | **Pine Marten**       | 2.8           |
| 4    | **Irish Hare**        | 4.5           |
| 5    | **Irish Red Fox**     | 6.8           |

➡️ **The Irish Pygmy Shrew is extremely lightweight at just 0.0065 kg (6.5 grams)!**

---

## Lifespan Analysis
### **Longest-Living Animals**
| Rank | Animal             | Max Lifespan (Years) |
|------|--------------------|----------------------|
| 1    | **Golden Eagle**   | 32                   |
| 2    | **Whooper Swan**   | 22                   |
| 3    | **Red Deer**       | 16                   |
| 4    | **Peregrine Falcon** | 16               |
| 5    | **Pine Marten**    | 11                   |

➡️ **Golden Eagles have the longest lifespan, reaching up to 32 years.**

### **Shortest-Living Animals**
| Rank | Animal               | Max Lifespan (Years) |
|------|----------------------|----------------------|
| 1    | **Irish Pygmy Shrew** | 1.6                 |
| 2    | **Irish Red Fox**     | 5                   |
| 3    | **Irish Hare**        | 6                   |
| 4    | **Irish Badger**      | 8                   |
| 5    | **Irish Otter**       | 13                  |

➡️ **The Irish Pygmy Shrew has the shortest lifespan, living just 1.6 years.**

---

## Correlation Between Size and Weight
- **Pearson correlation coefficient: `0.56559`**
- **p-value: `0.0884`**

➡️ **There is a moderate positive correlation** between an animal’s **maximum size and weight**, meaning larger animals tend to weigh more. However, the **p-value suggests this relationship is not statistically strong**.

---

## Conclusion
- **The Irish Pygmy Shrew dominates in population but has the shortest lifespan.**
- **Golden Eagles live the longest, up to 32 years.**
- **The Whooper Swan and Red Deer are the largest animals**, while the **Pygmy Shrew is the smallest.**
- **The Red Deer is the heaviest animal, while the Pygmy Shrew is the lightest.**
- **Size and weight are moderately correlated, but not statistically significant.**
