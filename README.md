# 📊 Análisis de Soporte TI con SQL

## 📌 Descripción del proyecto

Este proyecto consiste en el diseño y análisis de una base de datos relacional para gestionar tickets de soporte técnico de una empresa ficticia.

El objetivo es utilizar SQL para consultar, relacionar y analizar información relacionada con empleados, departamentos, técnicos, categorías, equipos y tickets de soporte.

El proyecto forma parte de mi portfolio de Data Analyst y está enfocado en desarrollar habilidades prácticas de SQL, análisis de datos y generación de información útil a partir de datos operativos.

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
| `tecnicos` | Técnicos encargados de atender los tickets |
| `categorias` | Categorías utilizadas para clasificar los tickets |
| `equipos` | Equipos asignados a empleados |
| `tickets` | Registro de incidencias de soporte |

### Volumen de datos

| Entidad | Registros |
|---|---:|
| Departamentos | 20 |
| Empleados | 40 |
| Técnicos | 10 |
| Categorías | 10 |
| Equipos | 10 |
| Tickets | 30 |

---

## 🔗 Relaciones principales

- Un departamento puede tener múltiples empleados.
- Cada empleado pertenece a un departamento.
- Un empleado puede tener equipos asignados.
- Un empleado puede generar múltiples tickets.
- Un técnico puede atender múltiples tickets.
- Cada ticket pertenece a una categoría.
- Un ticket puede estar relacionado con un equipo.

Las relaciones se implementan mediante claves primarias y claves foráneas entre las tablas.

---

## 📈 Análisis realizado

Se desarrollaron 30 consultas SQL para practicar diferentes técnicas de consulta y análisis.

### Consultas básicas

- Conteo total de tickets.
- Consulta de empleados y sus datos de contacto.
- Filtrado de tickets por prioridad.
- Filtrado de tickets por estado.
- Ordenamiento de tickets por fecha.
- Ordenamiento personalizado de prioridades.
- Selección de los primeros registros según diferentes criterios.

### Agregaciones

- Cantidad de tickets por prioridad.
- Cantidad de tickets por estado.
- Cantidad de tickets por categoría.
- Cantidad de tickets por técnico.
- Categoría con mayor cantidad de tickets.
- Técnico con mayor cantidad de tickets.
- Prioridad más frecuente.
- Estado más frecuente.
- Empleado con mayor cantidad de tickets.

### JOIN y análisis relacional

- Empleados pertenecientes al departamento de Tecnología de la Información.
- Tickets relacionados con equipos.
- Empleados y sus departamentos.
- Técnicos, especialidades y cantidad de tickets atendidos.
- Tickets agrupados por departamento.
- Departamento o departamentos con mayor cantidad de tickets.
- Tickets agrupados por técnico y categoría.
- Tickets agrupados por tipo de equipo.

### Análisis de rendimiento y resumen

- Comparación de tickets atendidos por técnico.
- Resumen general del sistema mediante subconsultas.

---

## 📊 Resultados principales

### Tickets por prioridad

| Prioridad | Tickets |
|---|---:|
| Alta | 11 |
| Media | 9 |
| Baja | 9 |
| Crítica | 1 |
| **Total** | **30** |

### Tickets por estado

| Estado | Tickets |
|---|---:|
| Resuelto | 12 |
| Cerrado | 9 |
| En progreso | 9 |
| **Total** | **30** |

### Tickets por técnico

Los 10 técnicos registran una distribución uniforme en este dataset:

| Indicador | Resultado |
|---|---:|
| Técnicos | 10 |
| Tickets por técnico | 3 |
| Total de tickets | 30 |

### Tickets por categoría

Las 10 categorías presentan igualmente una distribución uniforme:

| Indicador | Resultado |
|---|---:|
| Categorías | 10 |
| Tickets por categoría | 3 |
| Total de tickets | 30 |

### Tickets por departamento

Los departamentos 2 al 11 tienen 2 tickets cada uno, mientras que los departamentos 1 y 12 al 20 tienen 1 ticket cada uno.

Por lo tanto, existe un empate entre los departamentos con mayor cantidad de tickets, con 2 tickets cada uno.

---

## 🔎 Insights

### 1. Distribución de prioridades

La prioridad Alta es la más frecuente, con 11 de los 30 tickets.

Las prioridades Media y Baja tienen 9 tickets cada una.

Solo hay 1 ticket de prioridad Crítica.

### 2. Estado de los tickets

De los 30 tickets registrados:

- 12 están en estado `Resuelto`.
- 9 están en estado `Cerrado`.
- 9 están en estado `En progreso`.

Los tickets en estado `En progreso` representan incidencias que todavía requieren seguimiento.

### 3. Distribución por técnicos

Los 10 técnicos tienen exactamente 3 tickets atendidos cada uno.

Esto representa una distribución uniforme de la carga de trabajo dentro del dataset.

### 4. Distribución por categorías

Cada una de las 10 categorías tiene exactamente 3 tickets.

Esto permite practicar agrupaciones y comparaciones entre categorías sin que una categoría domine el conjunto de datos.

### 5. Distribución por departamentos

Los departamentos 2 al 11 tienen 2 tickets cada uno, mientras que los departamentos 1 Y 12 al 20 tienen 1 ticket cada uno.

Por lo tanto, existe un empate entre los departamentos con mayor cantidad de tickets, con 2 tickets cada uno.

---

## ⚠️ Limitaciones del dataset

Este proyecto utiliza un dataset ficticio diseñado principalmente para practicar SQL.

Por esta razón:

- La cantidad de tickets está limitada a 30 registros.
- La distribución entre técnicos y categorías es uniforme.
- No se incluyen tiempos de resolución ni fechas de cierre.
- No existen métricas de satisfacción del usuario.
- No se pueden realizar análisis históricos o tendencias significativas debido al período reducido de datos.
- Los resultados sirven como práctica técnica y no representan el comportamiento de un sistema real de soporte.

Estas limitaciones son importantes al interpretar los resultados y diferenciar entre características del dataset e insights de negocio.

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
```

### Descripción de los archivos

- `01_create_database.sql` → Creación de la base de datos.
- `02_create_tables.sql` → Creación de tablas y relaciones.
- `03_insert_data.sql` → Inserción de los datos de prueba.
- `04_analysis.sql` → Consultas y análisis SQL.
- `README.md` → Documentación del proyecto.

---

## 🧠 Habilidades desarrolladas

- Diseño de bases de datos relacionales.
- Manejo de tablas y relaciones.
- Consultas SQL.
- Filtrado y ordenamiento de datos.
- Funciones de agregación.
- `GROUP BY`.
- `JOIN`.
- `CASE`.
- Subconsultas.
- Análisis exploratorio de datos.
- Interpretación de resultados.
- Documentación de proyectos para portfolio.

---

## 🚀 Próximos pasos

Como continuación del portfolio, el siguiente proyecto estará orientado a trabajar con datos más cercanos a un escenario empresarial real, incorporando análisis con Excel y posteriormente herramientas de Business Intelligence.

El objetivo es continuar desarrollando habilidades de análisis de datos y construir proyectos que permitan demostrar conocimientos técnicos y capacidad para obtener información útil a partir de datos.
