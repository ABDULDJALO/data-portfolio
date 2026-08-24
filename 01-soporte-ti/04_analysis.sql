USE soporte_ti;

-- ============================================
-- EJERCICIO 1: TOTAL DE TICKETS
-- ============================================

SELECT COUNT(*) AS total_tickets
FROM tickets;


-- ============================================
-- EJERCICIO 2: MOSTRAR EMPLEADOS
-- ============================================

SELECT
    nombre_empleado,
    apellido_empleado,
    email_empleado
FROM empleados;


-- ============================================
-- EJERCICIO 3: TICKETS DE PRIORIDAD ALTA
-- ============================================

SELECT *
FROM tickets
WHERE prioridad = 'Alta';


-- ============================================
-- EJERCICIO 4: TICKETS DE PRIORIDAD CRÍTICA
-- ============================================

SELECT *
FROM tickets
WHERE prioridad = 'Crítica';


-- ============================================
-- EJERCICIO 5: TICKETS RESUELTOS
-- ============================================

SELECT *
FROM tickets
WHERE estado = 'Resuelto';


-- ============================================
-- EJERCICIO 6: EMPLEADOS DE TECNOLOGÍA DE LA INFORMACIÓN
-- ============================================

SELECT
    empleados.nombre_empleado,
    empleados.apellido_empleado,
    empleados.email_empleado,
    departamentos.nombre_departamento
FROM empleados
INNER JOIN departamentos
    ON empleados.id_departamento = departamentos.id_departamento
WHERE departamentos.nombre_departamento = 'Tecnología de la Información';


-- ============================================
-- EJERCICIO 7: TICKETS MÁS RECIENTES
-- ============================================

SELECT *
FROM tickets
ORDER BY fecha_hora DESC;


-- ============================================
-- EJERCICIO 8: TICKETS ORDENADOS POR PRIORIDAD
-- ============================================

SELECT *
FROM tickets
ORDER BY
    CASE prioridad
        WHEN 'Crítica' THEN 1
        WHEN 'Alta' THEN 2
        WHEN 'Media' THEN 3
        WHEN 'Baja' THEN 4
    END;


-- ============================================
-- EJERCICIO 9: PRIMEROS 5 EMPLEADOS POR APELLIDO
-- ============================================

SELECT *
FROM empleados
ORDER BY apellido_empleado ASC
LIMIT 5;


-- ============================================
-- EJERCICIO 10: 5 TICKETS MÁS RECIENTES
-- ============================================

SELECT *
FROM tickets
ORDER BY fecha_hora DESC
LIMIT 5;


-- ============================================
-- EJERCICIO 11: CANTIDAD DE TICKETS POR PRIORIDAD
-- ============================================

SELECT
    prioridad,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY prioridad;


-- ============================================
-- EJERCICIO 12: CANTIDAD DE TICKETS POR ESTADO
-- ============================================

SELECT
    estado,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY estado;


-- ============================================
-- EJERCICIO 13: CANTIDAD DE TICKETS POR CATEGORÍA
-- ============================================

SELECT
    nombre_categoria,
    COUNT(id_ticket) AS total_tickets
FROM tickets
INNER JOIN categorias
    ON tickets.id_categoria = categorias.id_categoria
GROUP BY nombre_categoria;


-- ============================================
-- EJERCICIO 14: CANTIDAD DE TICKETS POR TÉCNICO
-- ============================================

SELECT
    CONCAT(nombre_tecnico, ' ', apellido_tecnico) AS tecnico,
    COUNT(id_ticket) AS total_tickets
FROM tickets
INNER JOIN tecnicos
    ON tickets.id_tecnico = tecnicos.id_tecnico
GROUP BY
    nombre_tecnico,
    apellido_tecnico; 