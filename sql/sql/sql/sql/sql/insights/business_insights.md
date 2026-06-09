# ShopSmart Retail Sales Analysis — Business Insights Report

## Project Overview
- **Company:** ShopSmart (Fictional Retail Business)  
- **Period Analysed:** January 2024 — May 2024  
- **Tool Used:** SQL (SQLite)  
- **Analyst:** Raakesh

---

## Insight 1 — Revenue Performance

**Finding:**  
ShopSmart generated a total revenue of £1,178.82 across 5 months 
with 10 completed orders.

**So what?**  
Average order value sits around £117 — this is healthy for a 
mixed-category retailer. Focus should be on increasing order 
frequency rather than order size.

---

## Insight 2 — Top Performing Category

**Finding:**  
Electronics was the highest revenue-generating category, driven 
largely by Wireless Headphones and Smartwatch sales.

**So what?**  
Electronics contributes disproportionately to revenue. ShopSmart 
should prioritise electronics inventory, promotions, and new 
product additions in this category.

---

## Insight 3 — Star Product

**Finding:**  
Wireless Headphones ranked #1 in both total revenue and revenue 
share — appearing in multiple orders across different customers.

**So what?**  
This is ShopSmart's hero product. It should always be in stock, 
featured prominently, and considered for bundle deals with other 
electronics.

---

## Insight 4 — Sales Momentum

**Finding:**  
Running total analysis showed the biggest revenue jump occurred 
in January–February. Growth rate slowed consistently from March 
onwards with the smallest month-on-month increase in April–May.

**So what?**  
Sales momentum is declining after Q1. ShopSmart should investigate 
whether this is seasonal or structural — and consider promotions 
or new product launches in Q2 to reactivate growth.

---

## Insight 5 — Customer Loyalty

**Finding:**  
James Smith placed 2 orders — making him ShopSmart's only repeat 
customer in this period. 9 out of 10 customers ordered only once.

**So what?**  
Customer retention is a major opportunity. A loyalty programme, 
follow-up emails, or personalised recommendations could 
significantly increase repeat purchase rate.

---

## Insight 6 — Stock Risk

**Finding:**  
Several products including Air Fryer and Winter Jacket are below 
the 80-unit stock threshold.

**So what?**  
If demand picks up these products risk going out of stock. 
Procurement team should be alerted to reorder these items 
before Q3.

---

## Top 3 Recommendations

| Priority | Recommendation |
|---|---|
| High | Launch a customer loyalty programme to improve repeat purchase rate |
| Medium | Double down on Electronics — expand product range in this category |
| Medium | Investigate Q2 sales slowdown and plan targeted promotions |

---

## SQL Concepts Used

| Concept | Used In |
|---|---|
| CREATE TABLE & INSERT | Phases 1 & 2 |
| SELECT, WHERE, ORDER BY | Phase 3 |
| JOIN (INNER, LEFT) | Phases 3, 4, 5 |
| GROUP BY & HAVING | Phases 3 & 4 |
| Subqueries | Phase 4 |
| Window Functions | Phase 5 |
| RANK() & PARTITION BY | Phase 5 |
| Running Totals | Phase 5 |
