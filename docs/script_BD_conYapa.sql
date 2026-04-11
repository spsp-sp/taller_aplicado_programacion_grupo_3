-- ============================================================
--  Script MySQL - Base de datos ConYapa
-- ============================================================

SET FOREIGN_KEY_CHECKS = 0;

-- ------------------------------------------------------------
-- Tabla: Usuario
-- (padre de Cliente, Feriante y AdminMunicipal)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Usuario (
    id          INT          NOT NULL AUTO_INCREMENT,
    nombre      VARCHAR(100) NOT NULL,
    email       VARCHAR(150) NOT NULL UNIQUE,
    contrasena  VARCHAR(255) NOT NULL,
    rol         ENUM('cliente','feriante','admin') NOT NULL,
    PRIMARY KEY (id)
);

-- ------------------------------------------------------------
-- Cliente  (hereda de Usuario)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
    id  VARCHAR(36) NOT NULL,
    -- preferencias: List<Favoritos> se modela en ListaFavoritos
    PRIMARY KEY (id),
    CONSTRAINT fk_cliente_usuario
        FOREIGN KEY (id) REFERENCES Usuario(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ------------------------------------------------------------
-- Feriante  (hereda de Usuario)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Feriante (
    id           INT          NOT NULL AUTO_INCREMENT,
    nombrePuesto VARCHAR(150) NOT NULL,
    aprobado     TINYINT(1)   NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT fk_feriante_usuario
        FOREIGN KEY (id) REFERENCES Usuario(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ------------------------------------------------------------
-- AdminMunicipal  (hereda de Usuario)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS AdminMunicipal (
    id        INT          NOT NULL AUTO_INCREMENT,
    municipio VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_admin_usuario
        FOREIGN KEY (id) REFERENCES Usuario(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ------------------------------------------------------------
-- Categoria
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Categoria (
    id     INT          NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- ------------------------------------------------------------
-- Preferencia  (Usuario ↔ Categoria, muchos a muchos)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Preferencia (
    id           INT          NOT NULL AUTO_INCREMENT,
    usuario_id   VARCHAR(36)  NOT NULL,
    categoria_id INT          NOT NULL,
    descripcion  VARCHAR(255),
    PRIMARY KEY (id),
    CONSTRAINT fk_pref_usuario
        FOREIGN KEY (usuario_id)   REFERENCES Usuario(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_pref_categoria
        FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ------------------------------------------------------------
-- Feria
-- (relación Feriante ↔ Feria: muchos a muchos, se genera tabla intermedia FeriaFeriante)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Feria (
    id        INT            NOT NULL AUTO_INCREMENT,
    nombre    VARCHAR(150)   NOT NULL,
    comuna    VARCHAR(100)   NOT NULL,
    direccion VARCHAR(255)   NOT NULL,
    latitud   DECIMAL(10,7),
    longitud  DECIMAL(10,7),
    dia       VARCHAR(50),
    horario   VARCHAR(100),
    PRIMARY KEY (id)
);

-- Tabla intermedia: Feriante participa en Feria
CREATE TABLE IF NOT EXISTS FeriaFeriante (
    feria_id    INT         NOT NULL,
    feriante_id VARCHAR(36) NOT NULL,
    PRIMARY KEY (feria_id, feriante_id),
    CONSTRAINT fk_ff_feria
        FOREIGN KEY (feria_id)    REFERENCES Feria(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_ff_feriante
        FOREIGN KEY (feriante_id) REFERENCES Feriante(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ------------------------------------------------------------
-- Reseña  (Usuario 1 → 0..* Reseña, Reseña → Feria)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS Resenia (
    id            INT          NOT NULL AUTO_INCREMENT,
    usuario_id    VARCHAR(36)  NOT NULL,
    feria_id      INT          NOT NULL,
    calificacion  TINYINT      NOT NULL CHECK (calificacion BETWEEN 1 AND 5),
    precio        VARCHAR(50),
    variedad      VARCHAR(50),
    afluencia     VARCHAR(50),
    tipoPago      VARCHAR(50),
    comentario    TEXT,
    fechaCreacion DATE         NOT NULL DEFAULT (CURDATE()),
    activa        TINYINT(1)   NOT NULL DEFAULT 1,
    PRIMARY KEY (id),
    CONSTRAINT fk_resenia_usuario
        FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_resenia_feria
        FOREIGN KEY (feria_id)   REFERENCES Feria(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ------------------------------------------------------------
-- ListaFavoritos  (Cliente 1 → 0..* ListaFavoritos)
-- productos: List<String> → tabla de detalle
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS ListaFavoritos (
    id            INT          NOT NULL AUTO_INCREMENT,
    cliente_id    VARCHAR(36)  NOT NULL,
    fechaCreacion DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT fk_favoritos_cliente
        FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Detalle de productos dentro de una lista de favoritos
CREATE TABLE IF NOT EXISTS FavoritoProducto (
    id               INT         NOT NULL AUTO_INCREMENT,
    lista_favoritos  VARCHAR(36) NOT NULL,
    producto         VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_favprod_lista
        FOREIGN KEY (lista_favoritos) REFERENCES ListaFavoritos(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

SET FOREIGN_KEY_CHECKS = 1;