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

    -- ============================================
-- EJERCICIO 15: CATEGORÍA CON MÁS TICKETS
-- ============================================

SELECT
    categorias.nombre_categoria AS categoria,
    COUNT(tickets.id_ticket) AS total_tickets
FROM categorias
INNER JOIN tickets
    ON categorias.id_categoria = tickets.id_categoria
GROUP BY categorias.nombre_categoria
ORDER BY total_tickets DESC
LIMIT 1;


-- ============================================
-- EJERCICIO 16: TÉCNICO CON MÁS TICKETS
-- ============================================

SELECT
    CONCAT(tecnicos.nombre_tecnico, ' ', tecnicos.apellido_tecnico) AS tecnico,
    COUNT(tickets.id_ticket) AS total_tickets
FROM tecnicos
INNER JOIN tickets
    ON tecnicos.id_tecnico = tickets.id_tecnico
GROUP BY
    tecnicos.nombre_tecnico,
    tecnicos.apellido_tecnico
ORDER BY total_tickets DESC
LIMIT 1;





    -- ============================================
-- EJERCICIO 17: TICKETS Y EQUIPOS
-- ============================================

SELECT
    tickets.id_ticket,
    tickets.asunto,
    equipos.nombre_equipo,
    equipos.tipo_equipo,
    equipos.marca,
    tickets.prioridad
FROM tickets
INNER JOIN equipos
    ON tickets.id_equipo = equipos.id_equipo;


-- ============================================
-- EJERCICIO 18: EMPLEADO + DEPARTAMENTO
-- ============================================

SELECT
    empleados.nombre_empleado AS nombre,
    empleados.apellido_empleado AS apellido,
    empleados.cargo_empleado AS cargo,
    departamentos.nombre_departamento AS departamento
FROM empleados
INNER JOIN departamentos
    ON empleados.id_departamento = departamentos.id_departamento;


-- ============================================
-- EJERCICIO 19: TÉCNICO + ESPECIALIDAD + TICKETS
-- ============================================

SELECT
    CONCAT(tecnicos.nombre_tecnico, ' ', tecnicos.apellido_tecnico) AS tecnico,
    tecnicos.especialidad_tecnico AS especialidad,
    COUNT(tickets.id_ticket) AS tickets_atendidos
FROM tickets
INNER JOIN tecnicos
    ON tickets.id_tecnico = tecnicos.id_tecnico
GROUP BY
    tecnicos.nombre_tecnico,
    tecnicos.apellido_tecnico,
    tecnicos.especialidad_tecnico
ORDER BY tickets_atendidos DESC;

-- ============================================
-- EJERCICIO 20: CATEGORÍA CON MÁS TICKETS
-- ============================================

SELECT
    categorias.nombre_categoria AS categoria,
    COUNT(tickets.id_ticket) AS total_tickets
FROM categorias
INNER JOIN tickets
    ON categorias.id_categoria = tickets.id_categoria
GROUP BY categorias.nombre_categoria
ORDER BY total_tickets DESC
LIMIT 1;


-- ============================================
-- EJERCICIO 21: TÉCNICO CON MÁS TICKETS
-- ============================================

SELECT
    CONCAT(tecnicos.nombre_tecnico, ' ', tecnicos.apellido_tecnico) AS tecnico,
    COUNT(tickets.id_ticket) AS total_tickets
FROM tecnicos
INNER JOIN tickets
    ON tecnicos.id_tecnico = tickets.id_tecnico
GROUP BY
    tecnicos.nombre_tecnico,
    tecnicos.apellido_tecnico
ORDER BY total_tickets DESC
LIMIT 1;


-- ============================================
-- EJERCICIO 22: PRIORIDAD MÁS FRECUENTE
-- ============================================

SELECT
    prioridad,
    COUNT(id_ticket) AS total_tickets
FROM tickets
GROUP BY prioridad
ORDER BY total_tickets DESC
LIMIT 1;


-- ============================================
-- EJERCICIO 23: ESTADO MÁS FRECUENTE
-- ============================================

SELECT
    estado,
    COUNT(id_ticket) AS total_tickets
FROM tickets
GROUP BY estado
ORDER BY total_tickets DESC
LIMIT 1;


-- ============================================
-- EJERCICIO 24: EMPLEADO CON MÁS TICKETS
-- ============================================

SELECT
    CONCAT(empleados.nombre_empleado, ' ', empleados.apellido_empleado) AS empleado,
    COUNT(tickets.id_ticket) AS total_tickets
FROM empleados
INNER JOIN tickets
    ON empleados.id_empleado = tickets.id_empleado
GROUP BY
    empleados.nombre_empleado,
    empleados.apellido_empleado
ORDER BY total_tickets DESC
LIMIT 1;


-- ============================================
-- EJERCICIO 25: TICKETS POR DEPARTAMENTO
-- ============================================

SELECT
    departamentos.nombre_departamento AS departamento,
    COUNT(tickets.id_ticket) AS total_tickets
FROM empleados
INNER JOIN departamentos
    ON departamentos.id_departamento = empleados.id_departamento
INNER JOIN tickets
    ON empleados.id_empleado = tickets.id_empleado
GROUP BY departamentos.nombre_departamento
ORDER BY total_tickets DESC;


-- ============================================
-- EJERCICIO 26: DEPARTAMENTO CON MÁS TICKETS
-- ============================================

SELECT
    departamentos.nombre_departamento AS departamento,
    COUNT(tickets.id_ticket) AS total_tickets
FROM empleados
INNER JOIN departamentos
    ON departamentos.id_departamento = empleados.id_departamento
INNER JOIN tickets
    ON empleados.id_empleado = tickets.id_empleado
GROUP BY departamentos.nombre_departamento
ORDER BY total_tickets DESC
LIMIT 1;


-- ============================================
-- EJERCICIO 27: TICKETS POR TÉCNICO Y CATEGORÍA
-- ============================================

SELECT
    CONCAT(tecnicos.nombre_tecnico, ' ', tecnicos.apellido_tecnico) AS tecnico,
    categorias.nombre_categoria AS categoria,
    COUNT(tickets.id_ticket) AS total_tickets
FROM tickets
INNER JOIN tecnicos
    ON tickets.id_tecnico = tecnicos.id_tecnico
INNER JOIN categorias
    ON tickets.id_categoria = categorias.id_categoria
GROUP BY
    tecnico,
    categoria;


-- ============================================
-- EJERCICIO 28: TICKETS POR TIPO DE EQUIPO
-- ============================================

SELECT
    equipos.tipo_equipo,
    COUNT(tickets.id_ticket) AS total_tickets
FROM tickets
INNER JOIN equipos
    ON tickets.id_equipo = equipos.id_equipo
GROUP BY equipos.tipo_equipo
ORDER BY total_tickets DESC;


-- ============================================
-- EJERCICIO 29: RENDIMIENTO DE TÉCNICOS
-- ============================================

SELECT
    CONCAT(tecnicos.nombre_tecnico, ' ', tecnicos.apellido_tecnico) AS tecnico,
    tecnicos.especialidad_tecnico AS especialidad,
    COUNT(tickets.id_ticket) AS tickets_atendidos
FROM tickets
INNER JOIN tecnicos
    ON tickets.id_tecnico = tecnicos.id_tecnico
GROUP BY
    tecnico,
    especialidad
ORDER BY tickets_atendidos DESC;


-- ============================================
-- EJERCICIO 30: RESUMEN GENERAL DEL SISTEMA
-- ============================================

SELECT
    (SELECT COUNT(*) FROM empleados) AS total_empleados,
    (SELECT COUNT(*) FROM tecnicos) AS total_tecnicos,
    (SELECT COUNT(*) FROM categorias) AS total_categorias,
    (SELECT COUNT(*) FROM equipos) AS total_equipos,
    (SELECT COUNT(*) FROM tickets) AS total_tickets;