# 📊 Análisis de Soporte TI con SQL

## 📌 Descripción del proyecto

Este proyecto consiste en el diseño y análisis de una base de datos de tickets de soporte técnico de una empresa ficticia.

El objetivo es utilizar SQL para consultar, relacionar y analizar información relacionada con empleados, departamentos, técnicos, categorías, equipos y tickets de soporte.

El proyecto forma parte de mi portfolio de Data Analyst y está enfocado en desarrollar habilidades prácticas de SQL y análisis de datos.

---

## 🎯 Objetivos

- Diseñar una base de datos relacional.
- Crear tablas y relaciones entre diferentes entidades.
- Insertar datos de prueba.
- Realizar consultas SQL para analizar los tickets de soporte.
- Utilizar `JOIN`, `GROUP BY`, `COUNT`, `ORDER BY`, `CASE` y subconsultas.
- Obtener indicadores y patrones a partir de los datos.
- Transformar datos operativos en información útil para la toma de decisiones.

---

## 🗄️ Estructura de la base de datos

La base de datos utilizada es:

`soporte_ti`

### Tablas

| Tabla | Descripción |
|---|---|
| `departamentos` | Departamentos de la empresa |
| `empleados` | Información de los empleados |
| `tecnicos` | Técnicos encargados del soporte |
| `categorias` | Categorías de los tickets |
| `equipos` | Equipos asignados a los empleados |
| `tickets` | Registro de incidencias de soporte |

---

## 🔗 Relaciones principales

- Un departamento puede tener múltiples empleados.
- Un empleado pertenece a un departamento.
- Un empleado puede tener equipos asignados.
- Un empleado puede generar múltiples tickets.
- Un técnico puede atender múltiples tickets.
- Cada ticket pertenece a una categoría.
- Cada ticket puede estar relacionado con un equipo.

---

## 📈 Análisis realizado

Se desarrollaron 30 consultas SQL que incluyen:

- Conteo total de tickets.
- Consulta de empleados.
- Filtrado de tickets por prioridad.
- Filtrado por estado.
- Ordenamiento de tickets.
- Uso de `INNER JOIN`.
- Cantidad de tickets por prioridad.
- Cantidad de tickets por estado.
- Cantidad de tickets por categoría.
- Cantidad de tickets por técnico.
- Categorías con mayor cantidad de tickets.
- Técnicos con mayor cantidad de tickets.
- Empleados con mayor cantidad de tickets.
- Tickets por departamento.
- Tickets por tipo de equipo.
- Análisis de rendimiento de técnicos.
- Resumen general del sistema.

---

## 📊 Resultados principales

El dataset utilizado contiene:

| Indicador | Resultado |
|---|---:|
| Empleados | 40 |
| Técnicos | 10 |
| Categorías | 10 |
| Equipos | 10 |
| Tickets | 30 |

### Tickets por prioridad

| Prioridad | Tickets |
|---|---:|
| Alta | 9 |
| Media | 9 |
| Baja | 9 |
| Crítica | 3 |

### Tickets por estado

| Estado | Tickets |
|---|---:|
| Resuelto | 12 |
| Cerrado | 9 |
| En progreso | 9 |

---

## 🔎 Insights

### 1. Distribución de prioridades

Los tickets de prioridad Alta, Media y Baja presentan la misma cantidad de registros, con 9 tickets cada uno.

Los tickets Críticos representan una menor proporción del total, con 3 registros.

### 2. Estado de los tickets

De los 30 tickets registrados, 12 se encuentran en estado `Resuelto`, mientras que 9 están `Cerrado` y otros 9 permanecen `En progreso`.

Esto permite identificar rápidamente el volumen de incidencias que todavía requieren seguimiento.

### 3. Distribución por técnicos

Los 10 técnicos tienen una distribución uniforme de carga en este dataset, con 3 tickets atendidos por técnico.

### 4. Distribución por categorías

Las 10 categorías presentan también una distribución uniforme de 3 tickets cada una.

Esto indica que el dataset fue construido de manera equilibrada para practicar diferentes tipos de consultas SQL.

---

## 🛠️ Tecnologías utilizadas

- MySQL
- SQL
- Visual Studio Code
- Git
- GitHub

---

## 📂 Archivos del proyecto

```text
01-soporte-ti/
│
├── 01_create_database.sql
├── 02_create_tables.sql
├── 03_insert_data.sql
├── 04_analysis.sql
└── README.md