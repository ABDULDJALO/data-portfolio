insert into departamentos ( nombre_departamento) values
('Recursos Humanos'),
('Tecnología de la Información'),
('Finanzas'),
('Marketing'),
('Ventas'),
('Operaciones'),
('Atención al Cliente'),
('Logística'),
('Investigación y Desarrollo'),
('Legal'),
('Administración'),
('Producción'),
('Calidad'),
('Seguridad'),
('Compras'),
('Mantenimiento'),
('Planificación Estratégica'),
('Relaciones Públicas'),
('Desarrollo de Negocios'),
('Gestión de Proyectos');

insert into empleados (nombre_empleado, apellido_empleado, email_empleado, telefono_empleado, cargo_empleado, id_departamento) values 
('Carlos', 'Rodríguez', 'carlos.rodriguez@empresa.com', '8095551001', 'Analista Financiero', 3),
('María', 'Gómez', 'maria.gomez@empresa.com', '8095551002', 'Analista de RRHH', 2),
('José', 'Martínez', 'jose.martinez@empresa.com', '8095551003', 'Especialista de Marketing', 4),
('Laura', 'Hernández', 'laura.hernandez@empresa.com', '8095551004', 'Gerente de Ventas', 5),
('Andrés', 'Pérez', 'andres.perez@empresa.com', '8095551005', 'Analista de Operaciones', 6),
('Sofía', 'Ramírez', 'sofia.ramirez@empresa.com', '8095551006', 'Ejecutiva de Atención al Cliente', 7),
('Daniel', 'Torres', 'daniel.torres@empresa.com', '8095551007', 'Coordinador de Logística', 8),
('Valentina', 'Castillo', 'valentina.castillo@empresa.com', '8095551008', 'Ingeniera de I+D', 9),
('Miguel', 'Santos', 'miguel.santos@empresa.com', '8095551009', 'Abogado Corporativo', 10),
('Camila', 'Morales', 'camila.morales@empresa.com', '8095551010', 'Administradora', 11),
('Ricardo', 'Fernández', 'ricardo.fernandez@empresa.com', '8095551011', 'Supervisor de Producción', 12),
('Gabriela', 'Díaz', 'gabriela.diaz@empresa.com', '8095551012', 'Analista de Calidad', 13),
('Alejandro', 'Vargas', 'alejandro.vargas@empresa.com', '8095551013', 'Especialista de Seguridad', 14),
('Natalia', 'Jiménez', 'natalia.jimenez@empresa.com', '8095551014', 'Analista de Compras', 15),
('Fernando', 'Mendoza', 'fernando.mendoza@empresa.com', '8095551015', 'Técnico de Mantenimiento', 16),
('Paula', 'Rojas', 'paula.rojas@empresa.com', '8095551016', 'Planificadora Estratégica', 17),
('Diego', 'Navarro', 'diego.navarro@empresa.com', '8095551017', 'Relaciones Públicas', 18),
('Isabella', 'Cruz', 'isabella.cruz@empresa.com', '8095551018', 'Desarrolladora de Negocios', 19),
('Sebastián', 'Ortiz', 'sebastian.ortiz@empresa.com', '8095551019', 'Gestor de Proyectos', 20),
('Abdul', 'Djalo', 'abdul.djalo@empresa.com', '8095551020', 'Analista de Datos', 1),
('Adriana', 'García', 'adriana.garcia@empresa.com', '8095551021', 'Analista de Recursos Humanos', 2),
('Luis', 'Ramírez', 'luis.ramirez@empresa.com', '8095551022', 'Contador', 3),
('Carolina', 'Martínez', 'carolina.martinez@empresa.com', '8095551023', 'Especialista de Marketing', 4),
('Javier', 'Gómez', 'javier.gomez@empresa.com', '8095551024', 'Ejecutivo de Ventas', 5),
('Daniela', 'Pérez', 'daniela.perez@empresa.com', '8095551025', 'Analista de Operaciones', 6),
('Manuel', 'Hernández', 'manuel.hernandez@empresa.com', '8095551026', 'Servicio al Cliente', 7),
('Patricia', 'Torres', 'patricia.torres@empresa.com', '8095551027', 'Coordinadora de Logística', 8),
('Gabriel', 'Castillo', 'gabriel.castillo@empresa.com', '8095551028', 'Investigador', 9),
('Elena', 'Santos', 'elena.santos@empresa.com', '8095551029', 'Asesora Legal', 10),
('Roberto', 'Morales', 'roberto.morales@empresa.com', '8095551030', 'Administrador', 11),
('Lucía', 'Fernández', 'lucia.fernandez@empresa.com', '8095551031', 'Supervisora de Producción', 12),
('Mateo', 'Díaz', 'mateo.diaz@empresa.com', '8095551032', 'Inspector de Calidad', 13),
('Claudia', 'Vargas', 'claudia.vargas@empresa.com', '8095551033', 'Analista de Seguridad', 14),
('Héctor', 'Jiménez', 'hector.jimenez@empresa.com', '8095551034', 'Comprador', 15),
('Mariana', 'Mendoza', 'mariana.mendoza@empresa.com', '8095551035', 'Coordinadora de Mantenimiento', 16),
('Óscar', 'Rojas', 'oscar.rojas@empresa.com', '8095551036', 'Analista de Planificación', 17),
('Valeria', 'Navarro', 'valeria.navarro@empresa.com', '8095551037', 'Especialista de Relaciones Públicas', 18),
('Cristian', 'Cruz', 'cristian.cruz@empresa.com', '8095551038', 'Ejecutivo de Negocios', 19),
('Ana', 'Ortiz', 'ana.ortiz@empresa.com', '8095551039', 'Coordinadora de Proyectos', 20),
('Santiago', 'Duarte', 'santiago.duarte@empresa.com', '8095551040', 'Analista de Sistemas', 1);

insert into tecnicos (nombre_tecnico, apellido_tecnico, telefono_tecnico, especialidad_tecnico) values
('Juan', 'Pérez', '8095552001', 'Redes'),
('María', 'González', '8095552002', 'Soporte Técnico'),
('Carlos', 'Rodríguez', '8095552003', 'Seguridad Informática'),
('Ana', 'Martínez', '8095552004', 'Desarrollo de Software'),
('Luis', 'Hernández', '8095552005', 'Bases de Datos'),
('Sofía', 'López', '8095552006', 'Administración de Sistemas'),
('Javier', 'García', '8095552007', 'Virtualización'),
('Valentina', 'Ramírez', '8095552008', 'Cloud Computing'),
('Diego', 'Torres', '8095552009', 'Soporte de Hardware'),
('Isabella', 'Díaz', '8095552010', 'Redes y Telecomunicaciones');

insert into categorias (nombre_categoria, descripcion_categoria) values
('Hardware', 'Componentes físicos de los sistemas informáticos.'),
('Software', 'Programas y aplicaciones utilizadas en los sistemas informáticos.'),
('Redes', 'Conexiones y comunicación entre dispositivos y sistemas.'),
('Seguridad', 'Protección de datos y sistemas contra amenazas y ataques.'),
('Bases de Datos', 'Sistemas de almacenamiento y gestión de información.'),
('Soporte Técnico', 'Asistencia y resolución de problemas técnicos.'),
('Desarrollo de Software', 'Creación y mantenimiento de aplicaciones y programas.'),
('Administración de Sistemas', 'Gestión y configuración de sistemas operativos y servidores.'),
('Virtualización', 'Creación de entornos virtuales para optimizar recursos.'),
('Cloud Computing', 'Servicios y almacenamiento en la nube para acceso remoto.');

insert into equipos (nombre_equipo, tipo_equipo, marca, id_empleado) values
('Laptop Dell XPS 13', 'Laptop', 'Dell', 1),
('Monitor Samsung 27"', 'Monitor', 'Samsung', 2),
('Impresora HP LaserJet Pro', 'Impresora', 'HP', 3),
('Router TP-Link Archer C7', 'Router', 'TP-Link', 4),
('Servidor Dell PowerEdge T40', 'Servidor', 'Dell', 5),
('Teclado Logitech K120', 'Teclado', 'Logitech', 6),
('Mouse Microsoft Wireless Mobile Mouse 3500', 'Mouse', 'Microsoft', 7),
('Proyector Epson PowerLite X39+', 'Proyector', 'Epson', 8),
('Cámara Web Logitech C920 HD Pro', 'Cámara Web', 'Logitech', 9),
('Auriculares Bose QuietComfort 35 II', 'Auriculares', 'Bose', 10);

INSERT INTO tickets (
    id_empleado,
    id_tecnico,
    id_categoria,
    id_equipo,
    fecha_hora,
    prioridad,
    asunto,
    descripcion,
    estado
)
VALUES
(1, 1, 1, 1, '2024-06-01 10:00:00', 'Alta',
 'Laptop no enciende',
 'El equipo no responde al intentar encenderlo.',
 'Resuelto'),

(2, 2, 2, 2, '2024-06-02 11:30:00', 'Media',
 'Problema con aplicación',
 'La aplicación presenta errores al iniciar.',
 'Cerrado'),

(3, 3, 3, 3, '2024-06-03 14:15:00', 'Baja',
 'Sin conexión a Internet',
 'El usuario no puede acceder a Internet.',
 'Resuelto'),

(4, 4, 4, 4, '2024-06-04 09:45:00', 'Crítica',
 'Posible incidente de seguridad',
 'Se detectó actividad sospechosa en el equipo.',
 'En progreso'),

(5, 5, 5, 5, '2024-06-05 13:20:00', 'Media',
 'Error en base de datos',
 'El sistema presenta errores al consultar información.',
 'Resuelto'),

(6, 6, 6, 6, '2024-06-06 15:10:00', 'Baja',
 'Problema con teclado',
 'Algunas teclas no funcionan correctamente.',
 'Cerrado'),

(7, 7, 7, 7, '2024-06-07 08:30:00', 'Alta',
 'Error en aplicación interna',
 'La aplicación utilizada por el departamento presenta errores.',
 'En progreso'),

(8, 8, 8, 8, '2024-06-08 12:50:00', 'Media',
 'Problema con servidor',
 'Se reporta lentitud al acceder a un servicio interno.',
 'Resuelto'),

(9, 9, 9, 9, '2024-06-09 16:40:00', 'Baja',
 'Cámara web no funciona',
 'La cámara no es detectada por las aplicaciones.',
 'Cerrado'),

(10, 10, 10, 10, '2024-06-10 11:15:00', 'Alta',
 'Problema con servicio en la nube',
 'No se puede acceder a un recurso almacenado en la nube.',
 'En progreso'),

(11, 1, 1, 1, '2024-06-11 10:00:00', 'Alta',
 'Equipo lento',
 'El equipo presenta bajo rendimiento durante las actividades.',
 'Resuelto'),

(12, 2, 2, 2, '2024-06-12 11:30:00', 'Media',
 'Aplicación no responde',
 'La aplicación deja de responder durante su uso.',
 'Cerrado'),

(13, 3, 3, 3, '2024-06-13 14:15:00', 'Baja',
 'Conexión intermitente',
 'La conexión de red se pierde constantemente.',
 'Resuelto'),

(14, 4, 4, 4, '2024-06-14 09:45:00', 'Alta',
 'Alerta de seguridad',
 'El antivirus detectó una actividad sospechosa.',
 'En progreso'),

(15, 5, 5, 5, '2024-06-15 13:20:00', 'Media',
 'Consulta SQL con errores',
 'Una consulta está generando errores en el sistema.',
 'Resuelto'),

(16, 6, 6, 6, '2024-06-16 15:10:00', 'Baja',
 'Teclado defectuoso',
 'Varias teclas presentan problemas de funcionamiento.',
 'Cerrado'),

(17, 7, 7, 7, '2024-06-17 08:30:00', 'Alta',
 'Sistema no inicia',
 'La aplicación principal no puede iniciar correctamente.',
 'En progreso'),

(18, 8, 8, 8, '2024-06-18 12:50:00', 'Media',
 'Servidor lento',
 'El acceso al servidor presenta tiempos de respuesta elevados.',
 'Resuelto'),

(19, 9, 9, 9, '2024-06-19 16:40:00', 'Baja',
 'Problema con cámara',
 'La cámara presenta problemas durante las videollamadas.',
 'Cerrado'),

(20, 10, 10, 10, '2024-06-20 11:15:00', 'Alta',
 'Error en servicio cloud',
 'El usuario no puede acceder a un recurso de la nube.',
 'En progreso'),

(21, 1, 1, 1, '2024-06-21 10:00:00', 'Alta',
 'Laptop sobrecalentada',
 'El equipo presenta temperaturas elevadas durante su uso.',
 'Resuelto'),

(22, 2, 2, 2, '2024-06-22 11:30:00', 'Media',
 'Error de software',
 'El programa presenta errores inesperados.',
 'Cerrado'),

(23, 3, 3, 3, '2024-06-23 14:15:00', 'Baja',
 'Red desconectada',
 'El equipo perdió la conexión con la red corporativa.',
 'Resuelto'),

(24, 4, 4, 4, '2024-06-24 09:45:00', 'Alta',
 'Equipo comprometido',
 'Se detectó comportamiento anormal en el equipo.',
 'En progreso'),

(25, 5, 5, 5, '2024-06-25 13:20:00', 'Media',
 'Error de consulta',
 'Una consulta de base de datos no devuelve los resultados esperados.',
 'Resuelto'),

(26, 6, 6, 6, '2024-06-26 15:10:00', 'Baja',
 'Mouse no funciona',
 'El dispositivo dejó de responder.',
 'Cerrado'),

(27, 7, 7, 7, '2024-06-27 08:30:00', 'Alta',
 'Error de aplicación',
 'La aplicación principal no permite iniciar sesión.',
 'En progreso'),

(28, 8, 8, 8, '2024-06-28 12:50:00', 'Media',
 'Servicio interno lento',
 'El servicio presenta tiempos de respuesta elevados.',
 'Resuelto'),

(29, 9, 9, 9, '2024-06-29 16:40:00', 'Baja',
 'Problema de cámara web',
 'La cámara no funciona correctamente.',
 'Cerrado'),

(30, 10, 10, 10, '2024-06-30 11:15:00', 'Alta',
 'Acceso a servicio cloud',
 'El usuario no puede acceder al servicio en la nube.',
 'En progreso');
 




