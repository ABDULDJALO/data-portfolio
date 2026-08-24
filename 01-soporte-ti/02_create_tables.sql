USE soporte_ti;

--CREANDO TABLA PARA DEPARTAMENTOS
CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nombre_departamento VARCHAR(100) NOT NULL
);

--CREANDO TABLA PARA EMPLEADOS
CREATE TABLE empleados ( 
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre_empleado VARCHAR(100) NOT NULL,
    apellido_empleado VARCHAR(100) NOT NULL,
    email_empleado VARCHAR(100) NOT NULL UNIQUE,
    telefono_empleado VARCHAR(15),
    cargo_empleado VARCHAR(100),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

--CREANDO TABLA PARA EQUIPOS
CREATE TABLE equipos (
    id_equipo INT PRIMARY KEY AUTO_INCREMENT,
    nombre_equipo VARCHAR(100) NOT NULL,
    tipo_equipo VARCHAR(100),
    marca VARCHAR(100),
    id_empleado INT,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

--CREANDO TABLA PARA TICKETS 
CREATE TABLE tickets(
    id INT PRIMARY KEY AUTO_INCREMENT,
    empleado_id INT NOT NULL,
    tecnico_id INT NOT NULL,
    categoria_id INT NOT NULL,
    equipo_id INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    prioridad VARCHAR(20) NOT NULL,
    asunto VARCHAR(150) NOT NULL,
    descripcion TEXT,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (empleado_id) REFERENCES empleados(id_empleado),
    FOREIGN KEY (tecnico_id) REFERENCES tecnicos(id_tecnico),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id_categoria),
    FOREIGN KEY (equipo_id) REFERENCES equipos(id_equipo)
);

--CREANDO TABLA PARA TECNICOS
CREATE TABLE tecnicos (
    id_tecnico INT PRIMARY KEY AUTO_INCREMENT,
    nombre_tecnico VARCHAR(100) NOT NULL,
    apellido_tecnico VARCHAR(100) NOT NULL,
    telefono_tecnico VARCHAR(15),
    especialidad_tecnico VARCHAR(100)
);

--CREANDO TABLA PARA CATEGORIAS
CREATE TABLE categorias (  
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion_categoria VARCHAR(255)
);