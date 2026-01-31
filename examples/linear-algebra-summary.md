# סיכום מקיף - אלגברה לינארית
## Linear Algebra Complete Summary

> סיכום כולל של משפטים, זהויות, נוסחאות וכללי חשבון
>
> תוכן המסמך מבוסס על 26 קבצי PDF של הקורס

---

## תוכן עניינים
1. [שדות ומטריצות](#שדות-ומטריצות)
2. [פעולות על מטריצות](#פעולות-על-מטריצות)
3. [מערכות משוואות ליניאריות](#מערכות-משוואות-ליניאריות)
4. [דרגה](#דרגה)
5. [מרחבים וקטוריים](#מרחבים-וקטוריים)
6. [בסיסים ומימדים](#בסיסים-ומימדים)
7. [דטרמיננטות](#דטרמיננטות)
8. [העתקות ליניאריות](#העתקות-ליניאריות)
9. [גרעין ותמונה](#גרעין-ותמונה)
10. [איזומורפיזם](#איזומורפיזם)
11. [מטריצות מייצגות](#מטריצות-מייצגות)
12. [מטריצות מעבר](#מטריצות-מעבר)
13. [דמיון מטריצות](#דמיון-מטריצות)
14. [ערכים עצמיים ווקטורים עצמיים](#ערכים-עצמיים-ווקטורים-עצמיים)
15. [לכסון](#לכסון)
16. [מכפלה פנימית](#מכפלה-פנימית)
17. [אורתוגונליות והיטלים](#אורתוגונליות-והיטלים)
18. [גרהם-שמידט](#גרהם-שמידט)
19. [משלימים אורתוגונליים](#משלימים-אורתוגונליים)

---

# שדות ומטריצות

## הגדרות בסיסיות

### שדה (Field)
שדה $F$ הוא קבוצה עם שתי פעולות (חיבור וכפל) המקיימות:

**אקסיומות החיבור:**
- $(A1)$ סגירות: $\forall a,b \in F: a+b \in F$
- $(A2)$ קומוטטיביות: $\forall a,b \in F: a+b = b+a$
- $(A3)$ אסוציאטיביות: $\forall a,b,c \in F: (a+b)+c = a+(b+c)$
- $(A4)$ איבר ניטרלי: $\exists 0 \in F: \forall a \in F: a+0 = a$
- $(A5)$ איבר הופכי: $\forall a \in F: \exists (-a) \in F: a+(-a) = 0$

**אקסיומות הכפל:**
- $(M1)$ סגירות: $\forall a,b \in F: ab \in F$
- $(M2)$ קומוטטיביות: $\forall a,b \in F: ab = ba$
- $(M3)$ אסוציאטיביות: $\forall a,b,c \in F: (ab)c = a(bc)$
- $(M4)$ איבר ניטרלי: $\exists 1 \in F: \forall a \in F: a \cdot 1 = a$
- $(M5)$ איבר הופכי: $\forall a \neq 0 \in F: \exists a^{-1} \in F: a \cdot a^{-1} = 1$

**דיסטריבוטיביות:**
- $(M6)$ $\forall a,b,c \in F: (a+b)c = ac+bc$ וגם $a(b+c) = ab+ac$

### מטריצה
**מטריצה** $A_{m \times n}$ היא מערך מלבני של מספרים:

$$A = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\ a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1} & a_{m2} & \cdots & a_{mn} \end{pmatrix}$$

כאשר $a_{ij} \in F$ עבור כל $1 \leq i \leq m, 1 \leq j \leq n$

- $i$ - אינדקס השורה
- $j$ - אינדקס העמודה

**סימון:** קבוצת כל המטריצות מגודל $m \times n$ מעל שדה $F$:
$$\mathbb{M}_{m \times n}(F) \quad \text{or} \quad \mathbb{R}^{m \times n}$$

### שוויון מטריצות
שתי מטריצות $A,B$ שוות אם ורק אם:
$$A = B \iff \begin{cases} \text{same dimensions} \\ a_{ij} = b_{ij} \text{ for all } i,j \end{cases}$$

---

# פעולות על מטריצות

## חיבור מטריצות

עבור $A, B \in \mathbb{R}^{m \times n}$:
$$(A + B)_{ij} = a_{ij} + b_{ij}$$

**תכונות:**
- סגירות: $A + B \in \mathbb{R}^{m \times n}$
- קומוטטיביות: $A + B = B + A$
- אסוציאטיביות: $(A+B)+C = A+(B+C)$
- איבר אפס: $A + O = A$
- איבר הופכי: $A + (-A) = O$

## כפל בסקלר

עבור $\alpha \in \mathbb{R}$ ו-$A \in \mathbb{R}^{m \times n}$:
$$(\alpha A)_{ij} = \alpha \cdot a_{ij}$$

**תכונות:**
- $(\alpha + \beta)A = \alpha A + \beta A$
- $\alpha(A + B) = \alpha A + \alpha B$
- $(\alpha\beta)A = \alpha(\beta A)$
- $1 \cdot A = A$

## כפל מטריצות

### מכפלת שורה בעמודה
אם $A_{1 \times k} = (a_1, a_2, \ldots, a_k)$ ו-$B_{k \times 1} = \begin{pmatrix} b_1 \\ b_2 \\ \vdots \\ b_k \end{pmatrix}$:

$$A \cdot B = \sum_{t=1}^{k} a_t b_t$$

### כפל כללי
אם $A \in \mathbb{R}^{m \times k}$ ו-$B \in \mathbb{R}^{k \times n}$, אז $AB \in \mathbb{R}^{m \times n}$:

$$(AB)_{ij} = \sum_{t=1}^{k} a_{it}b_{tj} = A_i \cdot B_j$$

כאשר:
- $A_i$ - השורה ה-$i$ של $A$
- $B_j$ - העמודה ה-$j$ של $B$

### תכונות כפל מטריצות

✅ **תכונות שמתקיימות:**
1. **אסוציאטיביות**: $(AB)C = A(BC)$
2. **דיסטריבוטיביות**: $A(B+C) = AB+AC$ וגם $(A+B)C = AC+BC$
3. **כפל בסקלר**: $(\alpha A)B = \alpha(AB) = A(\alpha B)$
4. **מטריצת יחידה**: $AI_n = A$ וגם $I_mA = A$
5. **מטריצת אפס**: $AO = O$ וגם $OA = O$

❌ **לא מתקיים:**
- **אין קומוטטיביות**: בדרך כלל $AB \neq BA$
- **$AB = O$ לא מבטיח** $A = O$ או $B = O$

## טרנספוזה (Transpose)

### הגדרה
$$(A^T)_{ij} = A_{ji}$$

אם $A \in \mathbb{R}^{m \times n}$ אז $A^T \in \mathbb{R}^{n \times m}$

### תכונות טרנספוזה
1. $(A^T)^T = A$
2. $(A+B)^T = A^T + B^T$
3. $(\alpha A)^T = \alpha A^T$
4. $(AB)^T = B^T A^T$ ⚠️ **סדר הופכי!**

### מטריצה סימטרית
מטריצה $A$ היא **סימטרית** אם:
$$A = A^T \iff a_{ij} = a_{ji}$$

---

## מטריצות מיוחדות

### מטריצת היחידה
$$I_n = \begin{pmatrix} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 1 \end{pmatrix}$$

**תכונה:** $AI_n = I_nA = A$ (כאשר הגדלים תואמים)

### מטריצה אלכסונית (Diagonal)
$$D = \begin{pmatrix} d_1 & 0 & \cdots & 0 \\ 0 & d_2 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & d_n \end{pmatrix}$$

**תכונה:** $a_{ij} = 0$ כאשר $i \neq j$

### מטריצה עליונה משולשת (Upper Triangular)
$$U = \begin{pmatrix} u_{11} & u_{12} & \cdots & u_{1n} \\ 0 & u_{22} & \cdots & u_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & u_{nn} \end{pmatrix}$$

**תכונה:** $a_{ij} = 0$ כאשר $i > j$

### מטריצה תחתונה משולשת (Lower Triangular)
$$L = \begin{pmatrix} l_{11} & 0 & \cdots & 0 \\ l_{21} & l_{22} & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ l_{n1} & l_{n2} & \cdots & l_{nn} \end{pmatrix}$$

**תכונה:** $a_{ij} = 0$ כאשר $i < j$

---

# מערכות משוואות ליניאריות

## הגדרות

### משוואה ליניארית
$$a_1x_1 + a_2x_2 + \cdots + a_nx_n = b$$

כאשר $a_1, a_2, \ldots, a_n, b \in \mathbb{R}$

### מערכת משוואות ליניאריות (מל"ל)
$$\begin{cases}
a_{11}x_1 + a_{12}x_2 + \cdots + a_{1n}x_n = b_1 \\
a_{21}x_1 + a_{22}x_2 + \cdots + a_{2n}x_n = b_2 \\
\vdots \\
a_{m1}x_1 + a_{m2}x_2 + \cdots + a_{mn}x_n = b_m
\end{cases}$$

### צורה מטריצית
$$A\vec{x} = \vec{b}$$

כאשר:
- $A = (a_{ij}) \in \mathbb{R}^{m \times n}$ - **מטריצת המקדמים**
- $\vec{x} = \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix}$ - **וקטור הנעלמים**
- $\vec{b} = \begin{pmatrix} b_1 \\ \vdots \\ b_m \end{pmatrix}$ - **וקטור המקדמים החופשיים**

### מטריצה מורחבת
$$(A|b) = \begin{pmatrix} a_{11} & \cdots & a_{1n} & | & b_1 \\ \vdots & \ddots & \vdots & | & \vdots \\ a_{m1} & \cdots & a_{mn} & | & b_m \end{pmatrix}$$

## פעולות שורה יסודיות

1. **החלפת שורות**: $R_i \leftrightarrow R_j$
2. **הכפלת שורה בסקלר לא-אפס**: $R_i \to \alpha R_i$ (כאשר $\alpha \neq 0$)
3. **הוספת כפולה של שורה אחרת**: $R_j \to R_j + \alpha R_i$

### שקילות שורות
מטריצות $A$ ו-$B$ **שקולות בשורות** $(A \sim B)$ אם ניתן להעביר את $A$ ל-$B$ באמצעות מספר סופי של פעולות שורה יסודיות.

**תכונה חשובה:** אם $A \sim B$, אז למערכות $A\vec{x} = \vec{b}$ ו-$B\vec{x} = \vec{b}$ יש אותם פתרונות.

## צורה קנונית (Row Echelon Form - REF)

מטריצה בצורה קנונית מקיימת:
1. כל שורה לא-אפס מתחילה ב-1 (**פיבוט**)
2. הפיבוט של שורה $i+1$ נמצא ימינה מהפיבוט של שורה $i$
3. כל שורות האפס נמצאות בתחתית

## צורה קנונית מצומצמת (Reduced Row Echelon Form - RREF)

בנוסף לתנאי REF:
4. כל פיבוט הוא האיבר היחיד שאינו אפס בעמודתו

## סוגי מערכות

### מערכת עקבית (הטרוגנית)
$$A\vec{x} = \vec{b} \text{ where } \vec{b} \neq \vec{0}$$

### מערכת הומוגנית
$$A\vec{x} = \vec{0}$$

**תכונות מערכת הומוגנית:**
1. $\vec{x} = \vec{0}$ תמיד פתרון (**הפתרון הטריוויאלי**)
2. אם $\vec{v}_1, \vec{v}_2$ פתרונות, אז $\vec{v}_1 + \vec{v}_2$ גם פתרון
3. אם $\vec{v}$ פתרון ו-$k \in \mathbb{R}$, אז $k\vec{v}$ גם פתרון

### פתרון כללי
הפתרון הכללי של $A\vec{x} = \vec{b}$ הוא:
$$\vec{x} = \vec{x}_p + \vec{x}_h$$

כאשר:
- $\vec{x}_p$ - פתרון פרטי של $A\vec{x} = \vec{b}$
- $\vec{x}_h$ - הפתרון הכללי של $A\vec{x} = \vec{0}$ (ההומוגנית)

---

# דרגה

## הגדרה

**דרגה של מטריצה** $A$ (מסומנת $\text{rank}(A)$):
$$\text{rank}(A) = \text{number of non-zero rows in REF of } A$$

## תכונות דרגה

1. $\text{rank}(A) \leq \min(m,n)$ עבור $A \in \mathbb{R}^{m \times n}$
2. $\text{rank}(A) = \text{rank}(A^T)$
3. $\text{rank}(AB) \leq \min(\text{rank}(A), \text{rank}(B))$
4. אם $A \sim B$ (שקולות שורות) אז $\text{rank}(A) = \text{rank}(B)$

## קריטריונים לקיום פתרון

עבור מערכת $A\vec{x} = \vec{b}$ כאשר $A \in \mathbb{R}^{m \times n}$:

### פתרון יחיד
$$\text{rank}(A) = \text{rank}(A|b) = n$$

### אינסוף פתרונות
$$\text{rank}(A) = \text{rank}(A|b) < n$$

### אין פתרון
$$\text{rank}(A) < \text{rank}(A|b)$$

## טבלת קיום פתרונות

| מצב | תנאי |
|-----|------|
| פתרון יחיד | $\text{rank}(A) = \text{rank}(A\|b) = n$ |
| אינסוף פתרונות | $\text{rank}(A) = \text{rank}(A\|b) < n$ |
| אין פתרון | $\text{rank}(A) < \text{rank}(A\|b)$ |

### למערכת הומוגנית
- **פתרון טריוויאלי בלבד**: $\text{rank}(A) = n$
- **אינסוף פתרונות**: $\text{rank}(A) < n$

---

# מרחבים וקטוריים

## הגדרה

קבוצה $V$ מעל שדה $\mathbb{R}$ עם פעולות חיבור וכפל בסקלר היא **מרחב וקטורי** אם מקיימת:

### אקסיומות החיבור
- **A0** - סגירות: $\forall u,v \in V: u+v \in V$
- **A1** - אסוציאטיביות: $\forall u,v,w \in V: (u+v)+w = u+(v+w)$
- **A2** - קיום איבר אפס: $\exists 0 \in V: \forall v \in V: v+0=v$
- **A3** - קיום הופכי: $\forall v \in V: \exists (-v) \in V: v+(-v)=0$
- **A4** - קומוטטיביות: $\forall v,u \in V: v+u=u+v$

### אקסיומות הכפל בסקלר
- **M0** - סגירות: $\forall k \in \mathbb{R}, \forall v \in V: kv \in V$
- **M1** - דיסטריבוטיביות: $\forall k \in \mathbb{R}, \forall u,v \in V: k(u+v)=ku+kv$
- **M2** - דיסטריבוטיביות: $\forall k,m \in \mathbb{R}, \forall v \in V: (k+m)v=kv+mv$
- **M3** - אסוציאטיביות: $\forall k,m \in \mathbb{R}, \forall v \in V: (km)v=k(mv)$
- **M4** - קיום יחידה: $\forall v \in V: 1 \cdot v=v$

## דוגמאות למרחבים וקטוריים

1. **$\mathbb{R}^n$** - וקטורים ב-$n$ ממדים
2. **$\mathbb{M}_{m \times n}(\mathbb{R})$** - מטריצות מגודל $m \times n$
3. **$\mathbb{R}[x]$** - פולינומים עם מקדמים ממשיים
4. **$\mathbb{R}_n[x]$** - פולינומים עד דרגה $n$
5. **$C[a,b]$** - פונקציות רציפות על $[a,b]$

## תת-מרחב (Subspace)

קבוצה $W \subseteq V$ היא **תת-מרחב** של $V$ אם:

$$W \text{ subspace of } V \iff \begin{cases}
\vec{0} \in W \\
\forall w_1, w_2 \in W: w_1 + w_2 \in W \\
\forall \alpha \in \mathbb{R}, \forall w \in W: \alpha w \in W
\end{cases}$$

### משפט - מבחן תת-מרחב
$W$ הוא תת-מרחב של $V$ אם ורק אם:
$$\forall \alpha, \beta \in \mathbb{R}, \forall w_1, w_2 \in W: \alpha w_1 + \beta w_2 \in W$$

## פעולות על תת-מרחבים

### חיתוך
$$U \cap W = \{v \mid v \in U \text{ and } v \in W\}$$
**תכונה:** $U \cap W$ הוא תת-מרחב של $V$

### איחוד
$$U \cup W = \{v \mid v \in U \text{ or } v \in W\}$$
**⚠️ לא בהכרח תת-מרחב!**

### סכום
$$U + W = \{u + w \mid u \in U, w \in W\}$$
**תכונה:** $U + W$ הוא תת-מרחב של $V$

### סכום ישר
$$V = U \oplus W \iff \begin{cases}
V = U + W \\
U \cap W = \{\vec{0}\}
\end{cases}$$

---

# בסיסים ומימדים

## מרחב פורש (Span)

עבור קבוצה $S = \{v_1, \ldots, v_n\} \subseteq V$:

$$\text{Span}(S) = \{\alpha_1 v_1 + \cdots + \alpha_n v_n \mid \alpha_i \in \mathbb{R}\}$$

**תכונות:**
1. $S \subseteq \text{Span}(S)$
2. $\text{Span}(\text{Span}(S)) = \text{Span}(S)$
3. אם $S \subseteq T$, אז $\text{Span}(S) \subseteq \text{Span}(T)$
4. $\text{Span}(S)$ הוא תת-מרחב של $V$

## תלות ליניארית

וקטורים $v_1, \ldots, v_n \in V$ הם:

### בלתי תלויים ליניארית (Linearly Independent)
$$\alpha_1 v_1 + \cdots + \alpha_n v_n = \vec{0} \implies \alpha_1 = \cdots = \alpha_n = 0$$

### תלויים ליניארית (Linearly Dependent)
$$\exists \alpha_1, \ldots, \alpha_n \in \mathbb{R} \text{ (not all zero)}: \alpha_1 v_1 + \cdots + \alpha_n v_n = \vec{0}$$

**משפט:** $v_1, \ldots, v_n$ תלויים ליניארית אם ורק אם קיים $v_i$ שניתן להביע כצירוף ליניארי של האחרים.

## בסיס (Basis)

קבוצה $B = \{v_1, \ldots, v_n\} \subseteq V$ היא **בסיס** של $V$ אם:

$$B \text{ is a basis of } V \iff \begin{cases}
B \text{ linearly independent} \\
V = \text{Span}(B)
\end{cases}$$

### משפט - ייחודיות הצגה
אם $B$ בסיס של $V$, אז כל וקטור $v \in V$ ניתן להציג **באופן יחיד** כצירוף ליניארי של איברי $B$:
$$v = \alpha_1 v_1 + \cdots + \alpha_n v_n$$

## מימד (Dimension)

אם $V$ בעל בסיס בעל $n$ איברים:
$$\dim(V) = n$$

### משפט - גודל בסיס
כל בסיס של אותו מרחב וקטורי $V$ בעל אותו מספר איברים.

## בסיסים סטנדרטיים

- **$\mathbb{R}^n$**: $\{e_1, e_2, \ldots, e_n\}$ כאשר $e_i = (0,\ldots,0,1,0,\ldots,0)$ (1 במקום ה-$i$)
  - $\dim(\mathbb{R}^n) = n$

- **$\mathbb{M}_{m \times n}(\mathbb{R})$**: מטריצות עם 1 בכל מקום
  - $\dim(\mathbb{M}_{m \times n}) = mn$

- **$\mathbb{R}_n[x]$**: $\{1, x, x^2, \ldots, x^n\}$
  - $\dim(\mathbb{R}_n[x]) = n+1$

## משפטים חשובים

### משפט - הרחבת בסיס
כל קבוצה בלתי תלויה ליניארית ב-$V$ ניתן להרחיב לבסיס של $V$.

### משפט - צמצום מערכת פורשת
מכל קבוצה הפורשת את $V$ ניתן לבחור בסיס של $V$.

### משפט הממדים
אם $U, W$ תת-מרחבים של $V$:
$$\dim(U + W) = \dim(U) + \dim(W) - \dim(U \cap W)$$

### משפט
אם $U \subseteq V$ ו-$\dim(U) = \dim(V)$, אז $U = V$.

---

# מרחבי עמודות ושורות

## הגדרות

עבור מטריצה $A \in \mathbb{R}^{m \times n}$:

### מרחב השורות (Row Space)
$$\text{Row}(A) = \text{Span}\{R_1, R_2, \ldots, R_m\}$$

כאשר $R_i$ היא השורה ה-$i$ של $A$ (כוקטור)

### מרחב העמודות (Column Space)
$$\text{Col}(A) = \text{Span}\{C_1, C_2, \ldots, C_n\}$$

כאשר $C_j$ היא העמודה ה-$j$ של $A$ (כוקטור)

### מרחב האפס (Null Space / Kernel)
$$N(A) = \{\vec{x} \in \mathbb{R}^n \mid A\vec{x} = \vec{0}\}$$

## משפטים חשובים

### משפט 1 - שקילות שורות
$$A \sim B \implies \text{Row}(A) = \text{Row}(B)$$

### משפט 2 - דרגה
$$\text{rank}(A) = \dim(\text{Row}(A)) = \dim(\text{Col}(A))$$

### משפט 3 - טרנספוזה
$$\text{rank}(A) = \text{rank}(A^T)$$

### משפט 4 - משפט הדרגה (Rank-Nullity Theorem)
עבור $A \in \mathbb{R}^{m \times n}$:
$$\text{rank}(A) + \dim(N(A)) = n$$

או בסימונים אחרים:
$$\text{rank}(A) + \text{nullity}(A) = n$$

### משפט 5
$$\text{rank}(AB) \leq \min(\text{rank}(A), \text{rank}(B))$$

## קשר לפתרון מערכות

למערכת $A\vec{x} = \vec{b}$ יש פתרון אם ורק אם:
$$\vec{b} \in \text{Col}(A)$$

---

# מטריצות הפיכות

## הגדרה

מטריצה ריבועית $A \in \mathbb{R}^{n \times n}$ היא **הפיכה** אם קיימת מטריצה $B$ כך ש:
$$AB = BA = I_n$$

המטריצה $B$ מסומנת $A^{-1}$ ונקראת **ההופכית של $A$**.

## תכונות הופכיות

1. $(AB)^{-1} = B^{-1}A^{-1}$ ⚠️ **סדר הופכי!**
2. $(A^T)^{-1} = (A^{-1})^T$
3. $(A^{-1})^{-1} = A$
4. $(\alpha A)^{-1} = \frac{1}{\alpha}A^{-1}$ עבור $\alpha \neq 0$

## תנאים שקולים להפיכות

עבור $A \in \mathbb{R}^{n \times n}$, התנאים הבאים **שקולים**:

1. $A$ הפיכה
2. $\det(A) \neq 0$
3. $\text{rank}(A) = n$
4. $\text{Row}(A) = \mathbb{R}^n$
5. $\text{Col}(A) = \mathbb{R}^n$
6. $N(A) = \{\vec{0}\}$
7. שורות $A$ בלתי תלויות ליניארית
8. עמודות $A$ בלתי תלויות ליניארית
9. למערכת $A\vec{x} = \vec{0}$ יש רק הפתרון הטריוויאלי
10. למערכת $A\vec{x} = \vec{b}$ יש פתרון יחיד לכל $\vec{b}$

## חישוב הופכית

### שיטת המטריצה המורחבת
ליצור $(A|I_n)$ ולבצע פעולות שורה עד קבלת $(I_n|A^{-1})$

### נוסחה עבור מטריצה $2 \times 2$
$$A = \begin{pmatrix} a & b \\ c & d \end{pmatrix} \implies A^{-1} = \frac{1}{ad-bc}\begin{pmatrix} d & -b \\ -c & a \end{pmatrix}$$

**תנאי:** $\det(A) = ad - bc \neq 0$

---

# דטרמיננטות

## הגדרה

עבור $A \in \mathbb{R}^{n \times n}$, הדטרמיננטה היא סקלר $\det(A)$ או $|A|$.

### חישוב לפי גודל

**$n=1$:**
$$|a| = a$$

**$n=2$:**
$$\begin{vmatrix} a & b \\ c & d \end{vmatrix} = ad - bc$$

**$n=3$:**
$$\begin{vmatrix} a & b & c \\ d & e & f \\ g & h & i \end{vmatrix} = a\begin{vmatrix} e & f \\ h & i \end{vmatrix} - b\begin{vmatrix} d & f \\ g & i \end{vmatrix} + c\begin{vmatrix} d & e \\ g & h \end{vmatrix}$$

## פיתוח לפי שורה/עמודה

### מינור (Minor)
$M_{ij}$ = דטרמיננטה של המטריצה שמתקבלת ממחיקת שורה $i$ ועמודה $j$

### קופקטור (Cofactor)
$$C_{ij} = (-1)^{i+j}M_{ij}$$

### פיתוח לפי שורה $i$
$$|A| = \sum_{j=1}^{n} a_{ij}C_{ij} = \sum_{j=1}^{n} (-1)^{i+j} a_{ij} M_{ij}$$

### פיתוח לפי עמודה $j$
$$|A| = \sum_{i=1}^{n} a_{ij}C_{ij} = \sum_{i=1}^{n} (-1)^{i+j} a_{ij} M_{ij}$$

## תכונות דטרמיננטה

### כללי חישוב בסיסיים

1. **מטריצת יחידה**: $|I_n| = 1$
2. **מטריצה משולשת**: $|A| = a_{11} \cdot a_{22} \cdots a_{nn}$ (מכפלת האלכסון)
3. **מטריצה אלכסונית**: $|D| = d_1 \cdot d_2 \cdots d_n$

### השפעת פעולות שורה

1. **החלפת שורות**: $|B| = -|A|$
2. **כפל שורה ב-$\alpha$**: $|B| = \alpha|A|$
3. **הוספת כפולת שורה לשורה אחרת**: $|B| = |A|$ (ללא שינוי)

### תכונות כלליות

1. $|A^T| = |A|$
2. $|AB| = |A| \cdot |B|$
3. $|A^{-1}| = \frac{1}{|A|}$ (אם $A$ הפיכה)
4. $|\alpha A| = \alpha^n|A|$ עבור $A \in \mathbb{R}^{n \times n}$
5. $|A| = 0 \iff A$ לא הפיכה
6. $|A| \neq 0 \iff A$ הפיכה

---

# העתקות ליניאריות

## הגדרה

טרנספורמציה $T: V \to W$ היא **העתקה ליניארית** (ה"ל) אם:

$$T \text{ linear} \iff \begin{cases}
\forall v_1, v_2 \in V: T(v_1 + v_2) = T(v_1) + T(v_2) \\
\forall v \in V, \forall \alpha \in \mathbb{R}: T(\alpha v) = \alpha T(v)
\end{cases}$$

**או בצורה מאוחדת:**
$$\forall \alpha, \beta \in \mathbb{R}, \forall v_1, v_2 \in V: T(\alpha v_1 + \beta v_2) = \alpha T(v_1) + \beta T(v_2)$$

## תכונות בסיסיות

1. $T(\vec{0}_V) = \vec{0}_W$
2. $T(-v) = -T(v)$
3. $T(\alpha_1 v_1 + \cdots + \alpha_n v_n) = \alpha_1 T(v_1) + \cdots + \alpha_n T(v_n)$

## ייצוג מטריצי

כל ה"ל $T: \mathbb{R}^n \to \mathbb{R}^m$ ניתן לייצג כ:
$$T(\vec{x}) = A\vec{x}$$

כאשר $A \in \mathbb{R}^{m \times n}$ היא **המטריצה המייצגת** של $T$.

## דוגמאות להעתקות ליניאריות

### הטלה (Projection)
על ציר ה-$x$: $P(x,y) = (x, 0)$

### שיקוף (Reflection)
ביחס לציר ה-$x$: $R(x,y) = (x, -y)$

ביחס לציר ה-$y$: $R(x,y) = (-x, y)$

### סיבוב (Rotation)
סיבוב בזווית $\theta$ נגד כיוון השעון:
$$R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}$$

### הרחבה/כיווץ (Scaling)
$$S(x,y) = (kx, ky)$$

---

# גרעין ותמונה

## הגדרות

עבור $T: V \to W$ העתקה ליניארית:

### גרעין (Kernel)
$$\text{Ker}(T) = \{v \in V \mid T(v) = \vec{0}_W\} \subseteq V$$

**תכונה:** $\text{Ker}(T)$ הוא תת-מרחב של $V$

### תמונה (Image / Range)
$$\text{Im}(T) = \{T(v) \mid v \in V\} = \{w \in W \mid \exists v \in V: T(v) = w\} \subseteq W$$

**תכונה:** $\text{Im}(T)$ הוא תת-מרחב של $W$

## משפט הדרגה (Rank-Nullity Theorem)

$$\dim(\text{Ker}(T)) + \dim(\text{Im}(T)) = \dim(V)$$

או:
$$\text{nullity}(T) + \text{rank}(T) = \dim(V)$$

## קשר למטריצות

עבור $T_A: \mathbb{R}^n \to \mathbb{R}^m$ המוגדרת ע"י $T_A(\vec{x}) = A\vec{x}$:

$$\text{Ker}(T_A) = N(A) = \{\vec{x} \in \mathbb{R}^n \mid A\vec{x} = \vec{0}\}$$

$$\text{Im}(T_A) = \text{Col}(A) = \text{Span}\{\text{columns of } A\}$$

## תכונות

### $T$ חד-חד ערכית (Injective)
$$T \text{ injective} \iff \text{Ker}(T) = \{\vec{0}\}$$

### $T$ על (Surjective)
$$T \text{ surjective} \iff \text{Im}(T) = W$$

---

# איזומורפיזם

## הגדרות

### טרנספורמציה הפיכה
$T: V \to W$ היא **הפיכה** אם קיימת $T^{-1}: W \to V$ כך ש:
$$T^{-1} \circ T = I_V \quad \text{and} \quad T \circ T^{-1} = I_W$$

### איזומורפיזם
טרנספורמציה ליניארית הפיכה נקראת **איזומורפיזם**.

אם קיים איזומורפיזם בין $V$ ל-$W$, אומרים ש-$V$ ו-$W$ **איזומורפיים** ומסמנים:
$$V \cong W$$

## תנאים שקולים לאיזומורפיזם

עבור $T: V \to W$ העתקה ליניארית, התנאים הבאים **שקולים**:

1. $T$ איזומורפיזם
2. $T$ חד-חד ערכית **וגם** $T$ על
3. $\text{Ker}(T) = \{\vec{0}\}$ **וגם** $\text{Im}(T) = W$
4. $\dim(V) = \dim(W)$ **וגם** $\text{Ker}(T) = \{\vec{0}\}$
5. $\dim(V) = \dim(W)$ **וגם** $\text{Im}(T) = W$

## משפט
אם $\dim(V) = \dim(W) = n < \infty$, אז:
$$V \cong W$$

כלומר, כל מרחבים וקטוריים בעלי אותו מימד (סופי) הם איזומורפיים.

## תכונות

1. אם $T: V \to W$ איזומורפיזם, אז $T^{-1}: W \to V$ גם איזומורפיזם
2. אם $T$ איזומורפיזם ו-$\{v_1, \ldots, v_n\}$ בסיס של $V$, אז $\{T(v_1), \ldots, T(v_n)\}$ בסיס של $W$
3. איזומורפיזם שומר על מבנה ליניארי

---

# מטריצות מייצגות

## הגדרה

עבור $T: V \to W$ העתקה ליניארית, ובהינתן בסיסים:
- $B = \{v_1, \ldots, v_n\}$ של $V$
- $C = \{w_1, \ldots, w_m\}$ של $W$

**המטריצה המייצגת** של $T$ ביחס לבסיסים $B$ ו-$C$ היא:

$$[T]_C^B = \begin{pmatrix} [T(v_1)]_C & [T(v_2)]_C & \cdots & [T(v_n)]_C \end{pmatrix} \in \mathbb{R}^{m \times n}$$

כאשר $[T(v_i)]_C$ הוא **וקטור הקואורדינטות** של $T(v_i)$ ביחס לבסיס $C$.

## וקטור קואורדינטות

אם $v = a_1v_1 + \cdots + a_nv_n$ (ביחס לבסיס $B$), אז:
$$[v]_B = \begin{pmatrix} a_1 \\ a_2 \\ \vdots \\ a_n \end{pmatrix}$$

## משפט - יחס בין $T$ למטריצה

$$[T(v)]_C = [T]_C^B [v]_B$$

זהו הקשר המרכזי המחבר בין ההעתקה הליניארית לבין המטריצה המייצגת שלה.

## תכונות

### לינאריות
$$[S + T]_C^B = [S]_C^B + [T]_C^B$$
$$[\lambda T]_C^B = \lambda [T]_C^B$$

### הרכבת העתקות
עבור $S: V \to W$ ו-$T: W \to U$ עם בסיסים $B, C, D$:
$$[T \circ S]_D^B = [T]_D^C [S]_C^B$$

### דרגה
$$\text{rank}([T]_C^B) = \dim(\text{Im}(T))$$

---

# מטריצות מעבר

## הגדרה

עבור שני בסיסים $B = \{v_1, \ldots, v_n\}$ ו-$C = \{u_1, \ldots, u_n\}$ של אותו מרחב $V$:

**מטריצת המעבר** מ-$B$ ל-$C$ היא:
$$P_{B \to C} = [I_V]_C^B = \begin{pmatrix} [v_1]_C & [v_2]_C & \cdots & [v_n]_C \end{pmatrix}$$

כאשר $I_V: V \to V$ היא פונקציית הזהות.

## משפט - שינוי קואורדינטות

$$[v]_C = P_{B \to C} [v]_B$$

## תכונות מטריצת מעבר

1. **הפיכות**: מטריצת מעבר תמיד הפיכה
2. **הופכית**: $(P_{B \to C})^{-1} = P_{C \to B}$
3. **הרכבה**: $P_{C \to B} \cdot P_{B \to C} = I_n$

## שינוי בסיס של מטריצה מייצגת

אם $A = [T]_B^B$ (מטריצה ביחס לבסיס $B$), אז:
$$[T]_C^C = P_{C \to B} \cdot [T]_B^B \cdot P_{B \to C}$$

או בסימון קצר:
$$[T]_C^C = P^{-1} [T]_B^B P$$

כאשר $P = P_{B \to C}$

---

# דמיון מטריצות

## הגדרה

מטריצות $A, B \in \mathbb{R}^{n \times n}$ הן **דומות** אם קיימת מטריצה הפיכה $P$ כך ש:
$$B = P^{-1}AP$$

**סימון:** $A \sim B$

## משמעות
$A$ ו-$B$ דומות אם הן מייצגות את אותה העתקה ליניארית $T$ ביחס לבסיסים שונים.

## תכונות משומרות בדמיון

אם $A \sim B$, אז:

1. **דטרמיננטה**: $\det(A) = \det(B)$
2. **עקבה (Trace)**: $\text{tr}(A) = \text{tr}(B)$
3. **דרגה**: $\text{rank}(A) = \text{rank}(B)$
4. **פולינום אופייני**: $P_A(\lambda) = P_B(\lambda)$
5. **ערכים עצמיים**: אותם ערכים עצמיים (כולל כפליות)
6. **הפיכות**: $A$ הפיכה $\iff$ $B$ הפיכה

## עקבה (Trace)

$$\text{tr}(A) = \sum_{i=1}^n a_{ii}$$

**תכונות:**
1. $\text{tr}(A + B) = \text{tr}(A) + \text{tr}(B)$
2. $\text{tr}(\alpha A) = \alpha \text{tr}(A)$
3. $\text{tr}(AB) = \text{tr}(BA)$
4. $\text{tr}(A^T) = \text{tr}(A)$

---

# ערכים עצמיים ווקטורים עצמיים

## הגדרות

עבור $A \in \mathbb{R}^{n \times n}$:

### ערך עצמי (Eigenvalue)
$\lambda \in \mathbb{R}$ הוא **ערך עצמי** של $A$ אם קיים וקטור $\vec{v} \neq \vec{0}$ כך ש:
$$A\vec{v} = \lambda \vec{v}$$

### וקטור עצמי (Eigenvector)
$\vec{v} \neq \vec{0}$ הוא **וקטור עצמי** המתאים לערך העצמי $\lambda$ אם:
$$A\vec{v} = \lambda \vec{v}$$

### מרחב עצמי (Eigenspace)
$$V_\lambda = \{\vec{v} \in \mathbb{R}^n \mid A\vec{v} = \lambda \vec{v}\} = \text{Ker}(A - \lambda I)$$

**תכונה:** $V_\lambda$ הוא תת-מרחב של $\mathbb{R}^n$

## מציאת ערכים עצמיים

### פולינום אופייני (Characteristic Polynomial)
$$P_A(\lambda) = \det(A - \lambda I)$$

### משפט
$\lambda$ הוא ערך עצמי של $A$ אם ורק אם:
$$\det(A - \lambda I) = 0$$

כלומר, הערכים העצמיים הם שורשי הפולינום האופייני.

## כפליות

### כפליות אלגברית (Algebraic Multiplicity)
מספר הפעמים ש-$\lambda$ מופיע כשורש של $P_A(\lambda)$

**סימון:** $\text{alg-mult}(\lambda)$

### כפליות גיאומטרית (Geometric Multiplicity)
$$\text{geo-mult}(\lambda) = \dim(V_\lambda) = \dim(\text{Ker}(A - \lambda I))$$

### משפט - קשר בין כפליות
$$1 \leq \text{geo-mult}(\lambda) \leq \text{alg-mult}(\lambda)$$

## תכונות ערכים עצמיים

### משפט 1
אם $v_1, \ldots, v_k$ הם וקטורים עצמיים עם ערכים עצמיים **שונים** $\lambda_1, \ldots, \lambda_k$, אז $v_1, \ldots, v_k$ **בלתי תלויים ליניארית**.

### משפט 2 - קשר לדטרמיננטה ועקבה
עבור מטריצה $A \in \mathbb{R}^{n \times n}$ עם ערכים עצמיים $\lambda_1, \ldots, \lambda_n$:

$$\det(A) = \lambda_1 \cdot \lambda_2 \cdots \lambda_n$$

$$\text{tr}(A) = \lambda_1 + \lambda_2 + \cdots + \lambda_n$$

### משפט 3 - ערכים עצמיים של מטריצות דומות
אם $A \sim B$, אז ל-$A$ ו-$B$ אותם ערכים עצמיים (כולל כפליות).

---

# לכסון

## הגדרה

מטריצה $A \in \mathbb{R}^{n \times n}$ היא **לכסינה** (Diagonalizable) אם קיימת מטריצה הפיכה $P$ ומטריצה אלכסונית $D$ כך ש:
$$A = PDP^{-1}$$

או באופן שקול:
$$P^{-1}AP = D$$

## משפט - תנאי ללכסון

$A$ לכסינה אם ורק אם קיים בסיס של $\mathbb{R}^n$ המורכב מוקטורים עצמיים של $A$.

## קריטריונים ללכסון

### קריטריון 1 - ערכים עצמיים שונים
אם ל-$A \in \mathbb{R}^{n \times n}$ יש $n$ ערכים עצמיים **שונים**, אז $A$ לכסינה.

### קריטריון 2 - סכום כפליות גיאומטריות
$A$ לכסינה אם ורק אם:
$$\sum_{\lambda} \text{geo-mult}(\lambda) = n$$

### קריטריון 3 - שוויון כפליות
$A$ לכסינה אם ורק אם לכל ערך עצמי $\lambda$:
$$\text{geo-mult}(\lambda) = \text{alg-mult}(\lambda)$$

## אלגוריתם לכסון

1. **מצא את הפולינום האופייני**: $P_A(\lambda) = \det(A - \lambda I)$
2. **מצא את שורשי הפולינום**: אלו הערכים העצמיים $\lambda_1, \ldots, \lambda_k$
3. **עבור כל ערך עצמי $\lambda_i$**:
   - פתור $(A - \lambda_i I)\vec{x} = \vec{0}$
   - מצא בסיס של $V_{\lambda_i}$ (מרחב עצמי)
4. **בדוק לכסינות**: אם סכום ממדי המרחבים העצמיים = $n$, אז $A$ לכסינה
5. **בנה מטריצות**:
   - $P$ = מטריצה שעמודותיה הן הוקטורים העצמיים
   - $D$ = מטריצה אלכסונית עם הערכים העצמיים המתאימים

## דוגמה
אם $A$ עם ערכים עצמיים $\lambda_1 = 2$ (כפל 2) ו-$\lambda_2 = 5$ (כפל 1):
$$D = \begin{pmatrix} 2 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 5 \end{pmatrix}$$

## משפט Cayley-Hamilton
כל מטריצה $A$ מקיימת את הפולינום האופייני שלה:
$$P_A(A) = 0$$

---

# מכפלה פנימית

## הגדרה

**מכפלה פנימית** על מרחב וקטורי $V$ היא פונקציה $\langle \cdot, \cdot \rangle: V \times V \to \mathbb{R}$ המקיימת:

1. **סימטריה**: $\langle u, v \rangle = \langle v, u \rangle$
2. **חיוביות מוגדרת**:
   - $\langle v, v \rangle \geq 0$
   - $\langle v, v \rangle = 0 \iff v = \vec{0}$
3. **ליניאריות בארגומנט הראשון**:
   $$\langle \alpha u + \beta v, w \rangle = \alpha \langle u, w \rangle + \beta \langle v, w \rangle$$

## דוגמאות למכפלות פנימיות

### מכפלה סטנדרטית ב-$\mathbb{R}^n$
$$\langle \vec{u}, \vec{v} \rangle = u_1v_1 + u_2v_2 + \cdots + u_nv_n = \vec{u}^T\vec{v}$$

### מכפלה משוקללת
$$\langle \vec{u}, \vec{v} \rangle_M = \vec{u}^T M \vec{v}$$
כאשר $M$ מטריצה סימטרית חיובית מוגדרת

### מכפלה פנימית בפולינומים
$$\langle p, q \rangle = \int_a^b p(x)q(x)dx$$

### מכפלה פנימית במטריצות
$$\langle A, B \rangle = \text{tr}(A^T B)$$

## נוסחאות מרכזיות

### נורמה (Norm)
$$\|v\| = \sqrt{\langle v, v \rangle}$$

**תכונות:**
1. $\|v\| \geq 0$ וגם $\|v\| = 0 \iff v = \vec{0}$
2. $\|\alpha v\| = |\alpha| \|v\|$
3. **אי-שוויון משולש**: $\|u + v\| \leq \|u\| + \|v\|$

### מרחק (Distance)
$$d(u, v) = \|u - v\|$$

### זווית בין וקטורים
$$\cos \theta = \frac{\langle u, v \rangle}{\|u\| \cdot \|v\|}$$

## אי-שוויונים חשובים

### אי-שוויון Cauchy-Schwarz
$$|\langle u, v \rangle| \leq \|u\| \cdot \|v\|$$

שוויון מתקיים אם ורק אם $u$ ו-$v$ תלויים ליניארית.

### אי-שוויון המשולש
$$\|u + v\| \leq \|u\| + \|v\|$$

---

# אורתוגונליות והיטלים

## אורתוגונליות

### וקטורים אורתוגונליים
$$u \perp v \iff \langle u, v \rangle = 0$$

### קבוצה אורתוגונלית
$\{v_1, \ldots, v_k\}$ היא **אורתוגונלית** אם:
$$\langle v_i, v_j \rangle = 0 \text{ for all } i \neq j$$

### קבוצה אורתונורמלית
$\{v_1, \ldots, v_k\}$ היא **אורתונורמלית** (ONB) אם:
$$\langle v_i, v_j \rangle = \begin{cases} 1, & i = j \\ 0, & i \neq j \end{cases} = \delta_{ij}$$

## משפטים

### משפט 1
כל קבוצה אורתוגונלית של וקטורים לא-אפס היא **בלתי תלויה ליניארית**.

### משפט 2 - משפט פיתגורס
אם $u \perp v$, אז:
$$\|u + v\|^2 = \|u\|^2 + \|v\|^2$$

## היטל (Projection)

### היטל על וקטור
ההיטל של $v$ על $u$ הוא:
$$\text{proj}_u(v) = \frac{\langle u, v \rangle}{\langle u, u \rangle} u = \frac{\langle u, v \rangle}{\|u\|^2} u$$

**תכונה:** $v - \text{proj}_u(v) \perp u$

### היטל על תת-מרחב
עבור $U = \text{Span}\{u_1, \ldots, u_k\}$ כאשר $\{u_1, \ldots, u_k\}$ אורתוגונלית:
$$\text{proj}_U(v) = \sum_{i=1}^{k} \frac{\langle u_i, v \rangle}{\langle u_i, u_i \rangle} u_i$$

אם הקבוצה אורתונורמלית:
$$\text{proj}_U(v) = \sum_{i=1}^{k} \langle u_i, v \rangle u_i$$

### פירוק אורתוגונלי
כל וקטור $v$ ניתן לפרק כ:
$$v = \text{proj}_U(v) + (v - \text{proj}_U(v))$$

כאשר $\text{proj}_U(v) \in U$ ו-$(v - \text{proj}_U(v)) \perp U$

---

# גרהם-שמידט

## תהליך Gram-Schmidt

בהינתן קבוצה בלתי תלויה ליניארית $\{v_1, \ldots, v_k\}$, ניתן לבנות קבוצה אורתוגונלית $\{u_1, \ldots, u_k\}$:

$$u_1 = v_1$$

$$u_2 = v_2 - \frac{\langle u_1, v_2 \rangle}{\langle u_1, u_1 \rangle} u_1$$

$$u_3 = v_3 - \frac{\langle u_1, v_3 \rangle}{\langle u_1, u_1 \rangle} u_1 - \frac{\langle u_2, v_3 \rangle}{\langle u_2, u_2 \rangle} u_2$$

$$\vdots$$

$$u_k = v_k - \sum_{i=1}^{k-1} \frac{\langle u_i, v_k \rangle}{\langle u_i, u_i \rangle} u_i$$

**או באופן כללי:**
$$u_j = v_j - \text{proj}_{\text{Span}\{u_1,\ldots,u_{j-1}\}}(v_j)$$

## נרמול

לאחר קבלת הקבוצה האורתוגונלית $\{u_1, \ldots, u_k\}$, ניתן לקבל קבוצה אורתונורמלית:
$$e_i = \frac{u_i}{\|u_i\|}$$

## תכונות

1. $\text{Span}\{u_1, \ldots, u_k\} = \text{Span}\{v_1, \ldots, v_k\}$
2. $\{u_1, \ldots, u_k\}$ אורתוגונלית
3. $\{e_1, \ldots, e_k\}$ אורתונורמלית

---

# משלימים אורתוגונליים

## הגדרה

עבור תת-מרחב $W \subseteq V$:

$$W^\perp = \{v \in V \mid \langle v, w \rangle = 0 \text{ for all } w \in W\}$$

$W^\perp$ נקרא **המשלים האורתוגונלי** של $W$.

## משפטים

### משפט 1
$W^\perp$ הוא תת-מרחב של $V$.

### משפט 2 - סכום ישר אורתוגונלי
$$V = W \oplus W^\perp$$

כלומר, כל $v \in V$ ניתן לכתוב באופן יחיד כ:
$$v = w + w^\perp$$
כאשר $w \in W$ ו-$w^\perp \in W^\perp$

### משפט 3 - מימדים
$$\dim(W) + \dim(W^\perp) = \dim(V)$$

### משפט 4
$$(W^\perp)^\perp = W$$

## קשר למטריצות

עבור מטריצה $A \in \mathbb{R}^{m \times n}$:

$$(\text{Row}(A))^\perp = N(A)$$

$$(\text{Col}(A))^\perp = N(A^T)$$

### משפט - ארבעת המרחבים
עבור $A \in \mathbb{R}^{m \times n}$:

1. $\text{Row}(A) \subseteq \mathbb{R}^n$ עם $\dim(\text{Row}(A)) = r$
2. $N(A) \subseteq \mathbb{R}^n$ עם $\dim(N(A)) = n - r$
3. $\text{Col}(A) \subseteq \mathbb{R}^m$ עם $\dim(\text{Col}(A)) = r$
4. $N(A^T) \subseteq \mathbb{R}^m$ עם $\dim(N(A^T)) = m - r$

כאשר $r = \text{rank}(A)$

**קשרי אורתוגונליות:**
- $\text{Row}(A) \perp N(A)$
- $\text{Col}(A) \perp N(A^T)$

---

# נוסחאות וזהויות חשובות - רשימת מראה מהיר

## מטריצות
- $(A^T)^T = A$
- $(A+B)^T = A^T + B^T$
- $(AB)^T = B^T A^T$
- $(A^{-1})^T = (A^T)^{-1}$
- $(AB)^{-1} = B^{-1}A^{-1}$

## דטרמיננטות
- $|AB| = |A| \cdot |B|$
- $|A^T| = |A|$
- $|A^{-1}| = \frac{1}{|A|}$
- $|\alpha A| = \alpha^n|A|$ עבור $A \in \mathbb{R}^{n \times n}$

## דרגה
- $\text{rank}(A) = \text{rank}(A^T)$
- $\text{rank}(A) + \dim(N(A)) = n$ (עבור $A \in \mathbb{R}^{m \times n}$)
- $\text{rank}(AB) \leq \min(\text{rank}(A), \text{rank}(B))$

## העתקות ליניאריות
- $\dim(\text{Ker}(T)) + \dim(\text{Im}(T)) = \dim(V)$
- $\text{Ker}(T_A) = N(A)$
- $\text{Im}(T_A) = \text{Col}(A)$

## מטריצות מייצגות
- $[T(v)]_C = [T]_C^B [v]_B$
- $[T \circ S]_D^B = [T]_D^C [S]_C^B$
- $[T]_C^C = P^{-1} [T]_B^B P$ כאשר $P = P_{B \to C}$

## ערכים עצמיים
- $\det(A) = \prod \lambda_i$
- $\text{tr}(A) = \sum \lambda_i$
- $P_A(\lambda) = \det(A - \lambda I)$

## מכפלה פנימית
- $\|v\| = \sqrt{\langle v, v \rangle}$
- $\cos \theta = \frac{\langle u, v \rangle}{\|u\| \cdot \|v\|}$
- $|\langle u, v \rangle| \leq \|u\| \cdot \|v\|$ (Cauchy-Schwarz)

## היטלים
- $\text{proj}_u(v) = \frac{\langle u, v \rangle}{\|u\|^2} u$
- $\text{proj}_U(v) = \sum_{i=1}^{k} \langle v, e_i \rangle e_i$ (ONB)

## משלימים אורתוגונליים
- $V = W \oplus W^\perp$
- $\dim(W) + \dim(W^\perp) = \dim(V)$
- $(\text{Row}(A))^\perp = N(A)$

---

## סיום

מסמך זה מכיל סיכום מקיף של כל הקורס באלגברה לינארית, כולל כל המשפטים, הזהויות, הנוסחאות וכללי החשבון החשובים.

**תאריך עריכה:** יוצר אוטומטית מ-26 קבצי PDF של הקורס

