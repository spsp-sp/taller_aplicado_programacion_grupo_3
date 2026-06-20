

CREATE EXTENSION IF NOT EXISTS pgcrypto;

BEGIN;

-- 1. COMUNAS 

INSERT INTO comunas (nombre, region)
SELECT 'Alhué', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Alhué');

INSERT INTO comunas (nombre, region)
SELECT 'Buin', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Buin');

INSERT INTO comunas (nombre, region)
SELECT 'Cerrillos', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Cerrillos');

INSERT INTO comunas (nombre, region)
SELECT 'Cerro Navia', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Cerro Navia');

INSERT INTO comunas (nombre, region)
SELECT 'Colina', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Colina');

INSERT INTO comunas (nombre, region)
SELECT 'Conchalí', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Conchalí');

INSERT INTO comunas (nombre, region)
SELECT 'Curacaví', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Curacaví');

INSERT INTO comunas (nombre, region)
SELECT 'El Bosque', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'El Bosque');

INSERT INTO comunas (nombre, region)
SELECT 'El Monte', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'El Monte');

INSERT INTO comunas (nombre, region)
SELECT 'Estación Central', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Estación Central');

INSERT INTO comunas (nombre, region)
SELECT 'Huechuraba', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Huechuraba');

INSERT INTO comunas (nombre, region)
SELECT 'Independencia', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Independencia');

INSERT INTO comunas (nombre, region)
SELECT 'Isla De Maipo', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Isla De Maipo');

INSERT INTO comunas (nombre, region)
SELECT 'La Cisterna', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'La Cisterna');

INSERT INTO comunas (nombre, region)
SELECT 'La Florida', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'La Florida');

INSERT INTO comunas (nombre, region)
SELECT 'La Granja', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'La Granja');

INSERT INTO comunas (nombre, region)
SELECT 'La Pintana', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'La Pintana');

INSERT INTO comunas (nombre, region)
SELECT 'La Reina', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'La Reina');

INSERT INTO comunas (nombre, region)
SELECT 'Lampa', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Lampa');

INSERT INTO comunas (nombre, region)
SELECT 'Las Condes', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Las Condes');

INSERT INTO comunas (nombre, region)
SELECT 'Lo Barnechea', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Lo Barnechea');

INSERT INTO comunas (nombre, region)
SELECT 'Lo Espejo', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Lo Espejo');

INSERT INTO comunas (nombre, region)
SELECT 'Lo Prado', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Lo Prado');

INSERT INTO comunas (nombre, region)
SELECT 'Macul', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Macul');

INSERT INTO comunas (nombre, region)
SELECT 'Maipu', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Maipu');

INSERT INTO comunas (nombre, region)
SELECT 'Maria Pinto', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Maria Pinto');

INSERT INTO comunas (nombre, region)
SELECT 'Melipilla', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Melipilla');

INSERT INTO comunas (nombre, region)
SELECT 'Padre Hurtado', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Padre Hurtado');

INSERT INTO comunas (nombre, region)
SELECT 'Paine', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Paine');

INSERT INTO comunas (nombre, region)
SELECT 'Pedro Aguirre Cerda', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Pedro Aguirre Cerda');

INSERT INTO comunas (nombre, region)
SELECT 'Peñaflor', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Peñaflor');

INSERT INTO comunas (nombre, region)
SELECT 'Peñalolen', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Peñalolen');

INSERT INTO comunas (nombre, region)
SELECT 'Providencia', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Providencia');

INSERT INTO comunas (nombre, region)
SELECT 'Pudahuel', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Pudahuel');

INSERT INTO comunas (nombre, region)
SELECT 'Puente Alto', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Puente Alto');

INSERT INTO comunas (nombre, region)
SELECT 'Quilicura', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Quilicura');

INSERT INTO comunas (nombre, region)
SELECT 'Quinta Normal', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Quinta Normal');

INSERT INTO comunas (nombre, region)
SELECT 'Recoleta', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Recoleta');

INSERT INTO comunas (nombre, region)
SELECT 'Renca', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Renca');

INSERT INTO comunas (nombre, region)
SELECT 'San Bernardo', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'San Bernardo');

INSERT INTO comunas (nombre, region)
SELECT 'San Joaquín', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'San Joaquín');

INSERT INTO comunas (nombre, region)
SELECT 'San José De Maipo', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'San José De Maipo');

INSERT INTO comunas (nombre, region)
SELECT 'San Miguel', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'San Miguel');

INSERT INTO comunas (nombre, region)
SELECT 'San Ramón', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'San Ramón');

INSERT INTO comunas (nombre, region)
SELECT 'Santiago', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Santiago');

INSERT INTO comunas (nombre, region)
SELECT 'Talagante', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Talagante');

INSERT INTO comunas (nombre, region)
SELECT 'Tiltil', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Tiltil');

INSERT INTO comunas (nombre, region)
SELECT 'Vitacura', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Vitacura');

INSERT INTO comunas (nombre, region)
SELECT 'Ñuñoa', 'Metropolitana de Santiago'
WHERE NOT EXISTS (SELECT 1 FROM comunas WHERE nombre = 'Ñuñoa');


-- 2. USUARIOS (13)

INSERT INTO usuarios (email, nombre, password, rol, activo, "createdAt", "updatedAt")
SELECT email, nombre, crypt(pwd, gen_salt('bf',10)), rol::enum_usuarios_rol, true, NOW(), NOW()
FROM (VALUES
  ('admin@ferias.cl',          'Admin Sistema',   'admin123',   'admin'),
  ('carlos.munoz@mail.com',    'Carlos Muñoz',    'feria123',   'feriante'),
  ('rosa.sepulveda@mail.com',  'Rosa Sepúlveda',  'feria123',   'feriante'),
  ('jorge.fuentes@mail.com',   'Jorge Fuentes',   'feria123',   'feriante'),
  ('patricia.soto@mail.com',   'Patricia Soto',   'feria123',   'feriante'),
  ('luis.contreras@mail.com',  'Luis Contreras',  'feria123',   'feriante'),
  ('maria.gonzalez@mail.com',  'María González',  'feria123',   'feriante'),
  ('hector.araya@mail.com',    'Héctor Araya',    'feria123',   'feriante'),
  ('veronica.tapia@mail.com',  'Verónica Tapia',  'feria123',   'feriante'),
  ('manuel.rojas@mail.com',    'Manuel Rojas',    'feria123',   'feriante'),
  ('claudia.vega@mail.com',    'Claudia Vega',    'feria123',   'feriante'),
  ('andres.pizarro@mail.com',  'Andrés Pizarro',  'cliente123', 'cliente'),
  ('sofia.herrera@mail.com',   'Sofía Herrera',   'cliente123', 'cliente')
) AS v(email, nombre, pwd, rol)
WHERE NOT EXISTS (SELECT 1 FROM usuarios u WHERE u.email = v.email);


-- 3. FERIANTES (10, Puente Alto)

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Puesto Don Carlos', 'Frutas', 'Frutas de temporada: manzanas, peras, naranjas, uvas, duraznos y sandías directas del productor', '+56912345001', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'carlos.munoz@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Verduras Doña Rosa', 'Verduras y hortalizas', 'Papas, cebollas, ajos, zapallos, tomates, lechugas, zanahorias y betarragas frescas', '+56912345002', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'rosa.sepulveda@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Pescadería Don Jorge', 'Pescados frescos', 'Pescado fresco del día: reineta, sierra, merluza, corvina y jurel directo de la caleta', '+56912345003', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'jorge.fuentes@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Legumbres Don Luis', 'Legumbres a granel', 'Porotos, lentejas, garbanzos, arvejas y habas secas a granel, directo del campo', '+56912345004', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'patricia.soto@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Especias Doña Patty', 'Especias y condimentos', 'Merkén, ají color, orégano, comino, pimienta, laurel y mezclas de especias chilenas a granel', '+56912345005', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'luis.contreras@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Frutos Secos María', 'Frutos secos y semillas', 'Nueces, almendras, maní tostado, castañas, pasas, ciruelas secas y semillas de chía y linaza', '+56912345006', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'maria.gonzalez@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Conservas Don Héctor', 'Conservas y encurtidos', 'Aceitunas, pepinillos, alcaparras, ají en vinagre y conservas de tomate artesanales', '+56912345007', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'hector.araya@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Miel Doña Vero', 'Apicultura y prod. naturales', 'Miel pura de ulmo, quillay y multiflora, propóleo en gotas, polen y cera de abeja', '+56912345008', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'veronica.tapia@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Abarrotes Manuel', 'Abarrotes secos', 'Arroz, fideos, harina, azúcar, sal, aceite y productos de almacén a precios de feria', '+56912345009', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'manuel.rojas@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);

INSERT INTO feriantes ("usuarioId", "comunaId", nombre, rubro, descripcion, telefono, estado, activo, "createdAt", "updatedAt")
SELECT u.id, c.id, 'Hierbas Claudia', 'Hierbas medicinales y té', 'Boldo, manzanilla, menta, cedrón, rosa mosqueta, matico y mezclas de hierbas medicinales', '+56912345010', 'aprobado'::enum_feriantes_estado, true, NOW(), NOW()
FROM usuarios u, comunas c
WHERE u.email = 'claudia.vega@mail.com' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM feriantes f WHERE f."usuarioId" = u.id);


-- 4. FERIAS 

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT '19 De Agosto', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Alhué'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = '19 De Agosto' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT '5 De Abril', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Alhué'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = '5 De Abril' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Maitenes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Alhué'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Maitenes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Valdivia De Paine', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Valdivia De Paine' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Calle Garcia Maipo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Calle Garcia Maipo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Calle Lo Espejo Alto Jahuel', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Calle Lo Espejo Alto Jahuel' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Errazuriz', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Errazuriz' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Copahues', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Copahues' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Jose Miguel Carrera Alto Jahuel', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Jose Miguel Carrera Alto Jahuel' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Coordinadora', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Coordinadora' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Lo Salinas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Lo Salinas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Gabriela', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Gabriela' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Linderos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Buin'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Linderos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Mexico', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Mexico' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Modelo Aeropuerto', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Modelo Aeropuerto' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Buzeta', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Buzeta' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Modelo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Modelo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Mirador', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Mirador' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lagos Palacios', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lagos Palacios' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Salomon Sack', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Salomon Sack' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Martin', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerrillos'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Martin' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Loyola', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Loyola' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cauquenes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cauquenes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Capilla', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Capilla' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Vinita', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Vinita' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Sara Gajardo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Sara Gajardo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mapocho', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mapocho' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mar De Chile', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mar De Chile' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Salvador Gutierrez', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Salvador Gutierrez' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Montijo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Montijo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Roosevelt', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Cerro Navia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Roosevelt' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Esmeralda', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Colina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Esmeralda' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Fermin Vergara', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Colina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Fermin Vergara' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Francisco Flores Del Campo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Colina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Francisco Flores Del Campo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Labarca', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Colina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Labarca' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Roque Esteban Scarpa', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Colina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Roque Esteban Scarpa' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 4 Conchali', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 4 Conchali' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 1', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 1' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 4 Independencia', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 4 Independencia' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 2 Conchali', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 2 Conchali' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Baron De Juras Reales', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Baron De Juras Reales' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cardenal Caro N° 1', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cardenal Caro N° 1' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Acacios', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Acacios' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Nahuelbuta', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Nahuelbuta' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Teniente Ponce', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Conchalí'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Teniente Ponce' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cerrillos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Curacaví'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cerrillos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Javiera Carrera', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Curacaví'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Javiera Carrera' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Presbitero Moraga', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Curacaví'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Presbitero Moraga' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Covarrubias', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Covarrubias' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Camino Del Inca', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Camino Del Inca' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Capitan Avalos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Capitan Avalos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Elena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Elena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Temuco', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Temuco' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Parcelas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Parcelas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Carolinos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Carolinos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lagos De Chile', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lagos De Chile' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Laura', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Laura' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Borgoño', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Borgoño' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Arturo Prat', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Arturo Prat' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Sauce', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Sauce' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Vecinal', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Vecinal' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Victor Plaza Mayorga', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Bosque'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Victor Plaza Mayorga' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Modelo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Monte'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Modelo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa O''Higgins', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Monte'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa O''Higgins' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Los Alamos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Monte'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Los Alamos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Mercadito Campesino', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Monte'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Mercadito Campesino' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Trebol', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Monte'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Trebol' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Plaza Los Porotos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Monte'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Plaza Los Porotos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Club Socios', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'El Monte'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Club Socios' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Nogales', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Nogales' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Curacavi', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Curacavi' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cristo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cristo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santiago', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santiago' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Amengual', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Amengual' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Quemchi', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Quemchi' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Rivas Vicuna', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Rivas Vicuna' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Jose', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Jose' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Petronila', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Petronila' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Teresa', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Teresa' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Taitao', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Estación Central'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Taitao' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Salvador Allende', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Huechuraba'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Salvador Allende' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Aguirre Luco', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Huechuraba'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Aguirre Luco' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Pablo Neruda', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Huechuraba'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Pablo Neruda' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Colon', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Independencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Colon' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cronista Gongora', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Independencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cronista Gongora' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Pino', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Independencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Pino' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Enrique Soro', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Independencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Enrique Soro' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mirador Viejo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Independencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mirador Viejo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Maruri', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Independencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Maruri' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Antonio De Naltahua', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Antonio De Naltahua' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Población Cancha De Carreras', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Población Cancha De Carreras' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Llaveria', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Llaveria' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Lirios', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Lirios' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Naranjos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Naranjos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Sol Naciente', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Sol Naciente' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Ramon', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Cisterna'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Ramon' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Brisas Del Maipo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Cisterna'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Brisas Del Maipo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lo Ovalle', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Cisterna'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lo Ovalle' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Goycolea', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Cisterna'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Goycolea' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ballesteros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Cisterna'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ballesteros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lucerna', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Cisterna'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lucerna' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Arturo Prat', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Cisterna'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Arturo Prat' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Ohiggins', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Ohiggins' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Avda. Parque', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Avda. Parque' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Copihues', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Copihues' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Ohiggins, Avenida 1', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Ohiggins, Avenida 1' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Calama', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Calama' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa O''Higgins-Calle B Nº. 1', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa O''Higgins-Calle B Nº. 1' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Chaiten', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Chaiten' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Manuel Rodriguez', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Manuel Rodriguez' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Bellavista', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Bellavista' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Fraternidad', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Fraternidad' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Union', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Union' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Union', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Union' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Jorge Cisternas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Jorge Cisternas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'María Elena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'María Elena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa O''Higgins', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa O''Higgins' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Sanchez Fontecilla', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Florida'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Sanchez Fontecilla' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Tacora', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Tacora' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Tome', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Tome' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Poeta Neruda', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Poeta Neruda' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Malaquias Concha', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Malaquias Concha' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Manco Capac', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Manco Capac' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Buses', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Buses' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Joao Gulart', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Joao Gulart' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Industrias', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Industrias' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Serena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Serena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mañio', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mañio' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Coronel', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Coronel' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Claudia', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Claudia' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Yungay', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Granja'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Yungay' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Salvador Dali', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Salvador Dali' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT '21 De Mayo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = '21 De Mayo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Castillo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Castillo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Conciertos - El Bosque', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Conciertos - El Bosque' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'John Kennedy', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'John Kennedy' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Juanita', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Juanita' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'J Ramirez', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'J Ramirez' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Parcelas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Parcelas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Aguilas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Aguilas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Ombu', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Ombu' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Rafael', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Rafael' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Magdalena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Magdalena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Vicente Llanos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Vicente Llanos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santo Tomas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santo Tomas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Bosque', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Pintana'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Bosque' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ecoferia', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Reina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ecoferia' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Tobalaba', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Reina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Tobalaba' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Agrupacion De Chacareros La Reina', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Reina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Agrupacion De Chacareros La Reina' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'De Chacareros De La Reina', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Reina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'De Chacareros De La Reina' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Quinchamali', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'La Reina'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Quinchamali' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Centro', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lampa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Centro' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Poblacion Ines Bustos I', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lampa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Poblacion Ines Bustos I' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Viña Del Mar', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lampa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Viña Del Mar' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mercado Chacareros De Manquehue', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Las Condes'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mercado Chacareros De Manquehue' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Presidente Riesco', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Las Condes'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Presidente Riesco' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Dominicos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Las Condes'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Dominicos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Patricia', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Las Condes'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Patricia' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Avda. Lo Barnechea', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Avda. Lo Barnechea' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lo Barnechea', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lo Barnechea' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Quincheros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Quincheros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Ermita', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Ermita' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Pie Andino', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Pie Andino' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Olga', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Olga' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cooperacion', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cooperacion' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lo Espejo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lo Espejo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Jupiter', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Jupiter' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Habana', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Habana' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Monterrey', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Monterrey' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Pablo Neruda', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Pablo Neruda' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Fernandez Albano Poniente', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Fernandez Albano Poniente' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Jose Maria Caro', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Jose Maria Caro' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Adriana', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Espejo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Adriana' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Gabriela Mistral', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Prado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Gabriela Mistral' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Kennedy', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Prado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Kennedy' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 1 Las Torres', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Prado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 1 Las Torres' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Neptuno', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Prado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Neptuno' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ibis', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Prado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ibis' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Marta', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lo Prado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Marta' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ramon Cruz', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ramon Cruz' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Modelo Quilin', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Modelo Quilin' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Carolina', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Carolina' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Juan Pinto Duran', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Juan Pinto Duran' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Codornices', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Codornices' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa La Catolica', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa La Catolica' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Tres Antonios', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Tres Antonios' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Julia', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Julia' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Santa Elena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Macul'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Santa Elena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT '3 Poniente', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = '3 Poniente' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Descanso', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Descanso' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Parcelas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Parcelas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ciudad Satelite', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ciudad Satelite' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Modelo Maipu', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Modelo Maipu' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Valle Esperanza', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Valle Esperanza' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ferrocarril', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ferrocarril' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Esquina Blanca', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Esquina Blanca' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Conquistador', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Conquistador' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Gruta', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Gruta' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Heroes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Heroes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Padre Hurtado', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Padre Hurtado' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Valle Esperanza/Inca De Oro', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Valle Esperanza/Inca De Oro' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Borgoño', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Borgoño' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Reforma', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Reforma' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Abrazo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Abrazo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Judea', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Judea' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Luis', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Luis' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lumen', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lumen' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Guayaquil', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Guayaquil' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT '4 Alamos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maipu'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = '4 Alamos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Maria Pinto', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Maria Pinto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Maria Pinto' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Avenida Chile', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Avenida Chile' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Culipran', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Culipran' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Codigua', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Codigua' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Manuel Rodriguez', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Manuel Rodriguez' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Merced', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Merced' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Bollenar Agricultores', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Bollenar Agricultores' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Los Toros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Los Toros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Pomaire', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Melipilla'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Pomaire' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Grecia Modelo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Grecia Modelo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Duble Almeyda', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Duble Almeyda' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Emilia Tellez', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Emilia Tellez' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Maria Celeste', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Maria Celeste' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Guillermo Mann', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Guillermo Mann' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Alerces', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Alerces' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Aromos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Aromos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Matta Oriente', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Matta Oriente' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ortuzar', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ortuzar' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Eugenio', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Ñuñoa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Eugenio' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Juan Wesley', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Juan Wesley' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Rosa De Chena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Rosa De Chena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Explanada', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Explanada' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Silos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Silos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cristal Chile', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cristal Chile' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Chacareros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Paine'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Chacareros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Calle Buin', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Paine'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Calle Buin' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Altos De Cantillana', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Paine'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Altos De Cantillana' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Plaza', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Paine'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Plaza' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Fraternal', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Fraternal' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Centro America', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Centro America' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Joaquin', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Joaquin' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Enrique Matte/Ismael Valdes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Enrique Matte/Ismael Valdes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Marina', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Marina' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT '30 De Octubre', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = '30 De Octubre' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Davila', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Davila' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Villa Sur', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Villa Sur' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Malloco', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñaflor'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Malloco' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Praderas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñaflor'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Praderas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Nueva Peñaflor', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñaflor'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Nueva Peñaflor' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Copa', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñaflor'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Copa' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Castillo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñaflor'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Castillo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Palena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Palena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'José Arrieta', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'José Arrieta' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Torres', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Torres' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Presidentes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Presidentes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Departamental', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Departamental' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Parral', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Parral' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Mares', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Mares' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ictinos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ictinos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Juan Pablo Ii', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Juan Pablo Ii' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Perdices', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Perdices' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Molineros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Molineros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Modulos De San Luis', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Peñalolen'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Modulos De San Luis' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Isabel', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Providencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Isabel' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Concilios', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Providencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Concilios' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Maria', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Providencia'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Maria' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ciudad De Los Valles', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ciudad De Los Valles' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Travesia 2', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Travesia 2' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Centenario', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Centenario' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Simon Bolivar', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Simon Bolivar' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Santa Corina', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Santa Corina' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Estero', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Estero' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Morros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Morros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Anillo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Anillo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Estrella Sur', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Estrella Sur' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Serrano', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Serrano' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Teniente Cruz', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Teniente Cruz' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Victoria', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Pudahuel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Victoria' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Chacareros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Chacareros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Grande', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Grande' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Licanray', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Licanray' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Casas Viejas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Casas Viejas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Nogales', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Nogales' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ulises', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ulises' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Bajos De Mena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Bajos De Mena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Esfuerzo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Esfuerzo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Luis Matte N° 3', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Luis Matte N° 3' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Marta Brunet', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Marta Brunet' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Luis Matte N° 2', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Luis Matte N° 2' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Luis Matte Río Las Leñas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Luis Matte Río Las Leñas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Luis Matte Troncal', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Puente Alto'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Luis Matte Troncal' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cruzat', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cruzat' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Estadio Trasandino', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Estadio Trasandino' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Parcelas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Parcelas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Torres', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Torres' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Pedro Riveros', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Pedro Riveros' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Tres Montes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Tres Montes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lo Marcoleta', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lo Marcoleta' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lo Marcoleta 1', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lo Marcoleta 1' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Hermanos Carrera', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Hermanos Carrera' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Kilimanjaro', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Kilimanjaro' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Bernardo O''Higgins', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Bernardo O''Higgins' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Enrique', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Enrique' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Violetas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quilicura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Violetas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Alberdi N° 2', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Alberdi N° 2' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 3 Alberdi', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 3 Alberdi' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Alsino', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Alsino' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 1 La Plata', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 1 La Plata' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 2 Transito', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 2 Transito' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Edison', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Edison' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Eduardo Charme', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Eduardo Charme' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Francisco Javier', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Francisco Javier' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 1 Jose Besa', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 1 Jose Besa' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 2 Quinta Normal, Jose Tobias', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 2 Quinta Normal, Jose Tobias' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 1 Lope De Ulloa', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 1 Lope De Ulloa' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 3 Los Sauces', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 3 Los Sauces' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Marcelo Fitte', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Marcelo Fitte' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mercurio', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mercurio' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Gumercindo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Gumercindo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Victorino Laynez', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Quinta Normal'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Victorino Laynez' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Einstein', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Einstein' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Guanaco', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Guanaco' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Serena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Serena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Einstein Poniente', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Einstein Poniente' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Chacabuco Grande', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Chacabuco Grande' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Raquel', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Raquel' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'N° 9 Heroes De La Concepcion', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'N° 9 Heroes De La Concepcion' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San José', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San José' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Valdivieso', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Valdivieso' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Zapadores', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Recoleta'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Zapadores' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Condell', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Condell' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Bulnes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Bulnes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Colo Colo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Colo Colo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Lourdes', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Lourdes' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Balmaceda', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Balmaceda' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Margaritas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Margaritas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Acacios', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Acacios' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Los Clarines', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Los Clarines' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Manuel Rodriguez', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Manuel Rodriguez' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Miraflores', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Miraflores' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Chilectra', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Chilectra' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Pelluhue', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Renca'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Pelluhue' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Antonio Varas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Bernardo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Antonio Varas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Manzano', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Bernardo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Manzano' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Manzano', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Bernardo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Manzano' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Costanera', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Bernardo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Costanera' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'El Olivo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Bernardo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'El Olivo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Carvallo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Bernardo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Carvallo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Yungay', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Bernardo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Yungay' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Legua', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Legua' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Juan', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Juan' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Gaspar De Soto', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Gaspar De Soto' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Poblacion Chile', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Poblacion Chile' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mussa', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mussa' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Castrina', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Castrina' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Navarrete', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Navarrete' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Las Industrias', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Joaquín'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Las Industrias' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Agrupacion San Jose', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San José De Maipo'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Agrupacion San Jose' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Chiloe', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Miguel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Chiloe' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Carmen Mena', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Miguel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Carmen Mena' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Atacama', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Miguel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Atacama' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Salesianos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Miguel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Salesianos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Soto Aguilar', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Miguel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Soto Aguilar' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Tristan Matta', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Miguel'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Tristan Matta' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Alpatacal', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Alpatacal' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Blanca', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Blanca' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Libertad/Bolivia', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Libertad/Bolivia' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Barros Lucos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Barros Lucos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Fernandez Albano', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Fernandez Albano' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'La Bandera', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'La Bandera' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Mayo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Mayo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Sargento Candelaria', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'San Ramón'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Sargento Candelaria' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Aldunate', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Aldunate' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT '10 De Julio', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = '10 De Julio' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Portales', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Portales' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Coquimbo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Coquimbo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Esperanza', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Esperanza' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Camilo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Camilo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Gaspar De La Barrera', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Gaspar De La Barrera' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Herrera', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Herrera' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Martinez De Rozas', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Martinez De Rozas' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Pedro Lagos', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Pedro Lagos' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Roberto Espinoza', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Roberto Espinoza' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Romero', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Romero' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'San Agustin', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'San Agustin' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Plaza De Bolsillo Santo Domingo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Plaza De Bolsillo Santo Domingo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Ventura Lavalle', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Santiago'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Ventura Lavalle' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cordillera 4', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cordillera 4' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Libre Villa Las Hortensias', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Libre Villa Las Hortensias' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Libre Tocornal', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Libre Tocornal' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Francisco Chacón', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Francisco Chacón' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Clara Solovera', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Clara Solovera' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cordillera 1', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cordillera 1' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cordillera 6', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cordillera 6' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cordillera 2', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cordillera 2' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Cordillera 5', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Talagante'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Cordillera 5' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Feria Modelo Huertos Familiares', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Tiltil'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Feria Modelo Huertos Familiares' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Club De Polo', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Vitacura'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Club De Polo' AND f."comunaId" = c.id);

INSERT INTO ferias (nombre, "comunaId", descripcion, tipo, activa, "createdAt", "updatedAt")
SELECT 'Poblacion Ines Bustos Ii', c.id, NULL, 'libre'::enum_ferias_tipo, true, NOW(), NOW()
FROM comunas c WHERE c.nombre = 'Lampa'
  AND NOT EXISTS (SELECT 1 FROM ferias f WHERE f.nombre = 'Poblacion Ines Bustos Ii' AND f."comunaId" = c.id);


-- 5. UBICACIONES 

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, '19 de Agosto', 'Bernardo O''Higgins', 'Maipú', -34.034070459, -71.098309901, 55
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '19 De Agosto' AND c.nombre = 'Alhué'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = '19 de Agosto'
      AND u."calleInicio"    = 'Bernardo O''Higgins'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, '5 de Abril', 'Luis Cruz Martínez', 'Porvenir', -34.033861817, -71.103334078, 106
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '5 De Abril' AND c.nombre = 'Alhué'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = '5 de Abril'
      AND u."calleInicio"    = 'Luis Cruz Martínez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Callejón Los Maitenes', 'Sector La Línea Villa Alhué', 'Sector La Línea Villa Alhué', -34.037888139, -71.222807585, 65
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Maitenes' AND c.nombre = 'Alhué'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Callejón Los Maitenes'
      AND u."calleInicio"    = 'Sector La Línea Villa Alhué'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Arturo Prat', 'Avda. Chile', 'Benjamín Molina Ramos', -33.813024373, -70.85920783, 25
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Valdivia De Paine' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Arturo Prat'
      AND u."calleInicio"    = 'Avda. Chile'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Garcia', 'Calle General Carlos Prat', 'Calle Villarrica', -33.72798503, -70.772560503, 224
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Calle Garcia Maipo' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Garcia'
      AND u."calleInicio"    = 'Calle General Carlos Prat'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Lo Espejo', 'Miraflores', 'Rogelio Ugarte', -33.734301228, -70.685337169, 94
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Calle Lo Espejo Alto Jahuel' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Lo Espejo'
      AND u."calleInicio"    = 'Miraflores'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Errázuriz', 'Avda. Manuel Rodriguez', 'Guillermo Garcia Huidobro', -33.725670969, -70.740096633, 659
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Errazuriz' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Errázuriz'
      AND u."calleInicio"    = 'Avda. Manuel Rodriguez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Guardiamarina Riquelme', 'Capitán Orella', 'Errázuriz', -33.736002993, -70.742441536, 52
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Copahues' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Guardiamarina Riquelme'
      AND u."calleInicio"    = 'Capitán Orella'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Jacques Chonchol', 'Pje. Horacio Fernandez', 'Pje. Juan Peñaloza', -33.743511642, -70.680511402, 5
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Jose Miguel Carrera Alto Jahuel' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Jacques Chonchol'
      AND u."calleInicio"    = 'Pje. Horacio Fernandez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Coordinadora', 'La Marcha', 'Pje. La Temporada', -33.711834916, -70.740530276, 141
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Coordinadora' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Coordinadora'
      AND u."calleInicio"    = 'La Marcha'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Marta Ortiz', 'General Rafael Gualda Palma', 'Pje. Teobaldo Vallico Leiva', -33.736478306, -70.761249877, 13
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Lo Salinas' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Marta Ortiz'
      AND u."calleInicio"    = 'General Rafael Gualda Palma'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Antonio', 'San Félix', 'San Ignacio', -33.740378152, -70.742665281, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Gabriela' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Antonio'
      AND u."calleInicio"    = 'San Félix'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Teniente Merino', 'Francisco Javier Krugger', 'Camino Estación', -33.761970642, -70.734971064, 42
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Linderos' AND c.nombre = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Teniente Merino'
      AND u."calleInicio"    = 'Francisco Javier Krugger'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, '5 de Abril', 'Reinosa', 'Los Tilos', -33.510166761, -70.733796918, 414
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Mexico' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = '5 de Abril'
      AND u."calleInicio"    = 'Reinosa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Aeropuerto', 'Carriel Sur', 'Manutara', -33.511757323, -70.707605052, 30
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Modelo Aeropuerto' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Aeropuerto'
      AND u."calleInicio"    = 'Carriel Sur'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Cinco', 'Buzeta', 'San Andrés', -33.481988679, -70.690593995, 107
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Buzeta' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Cinco'
      AND u."calleInicio"    = 'Buzeta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Costanera Norte', 'Lo Errázuriz', 'Francia', -33.481745304, -70.722094988, 84
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Modelo' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Costanera Norte'
      AND u."calleInicio"    = 'Lo Errázuriz'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Mirador', 'Divino Maestro', 'Las Torres', -33.50202846, -70.732421043, 317
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Mirador' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Mirador'
      AND u."calleInicio"    = 'Divino Maestro'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pedro Lagos Palacios', 'Lo Errázuriz', 'Guatemala', -33.491386937, -70.725229016, 239
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lagos Palacios' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pedro Lagos Palacios'
      AND u."calleInicio"    = 'Lo Errázuriz'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Salomon Sack', 'Los Lirios', 'Comercio', -33.494607429, -70.71472534, 135
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Salomon Sack' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Salomon Sack'
      AND u."calleInicio"    = 'Los Lirios'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa Teresita', 'Santa Teresita', '14 de Octubre', -33.499967218, -70.724412985, 143
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Martin' AND c.nombre = 'Cerrillos'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa Teresita'
      AND u."calleInicio"    = 'Santa Teresita'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Camino de Loyola', 'Neptuno', 'Pje. Las Madreselvas', -33.436554276, -70.723550844, 172
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Loyola' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Camino de Loyola'
      AND u."calleInicio"    = 'Neptuno'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Cauquenes', 'Lo López', 'Hipólito Salas', -33.426568879, -70.723762109, 173
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cauquenes' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Cauquenes'
      AND u."calleInicio"    = 'Lo López'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Capilla', 'Resbalón', 'Huelén', -33.414967105, -70.740224177, 167
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Capilla' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Capilla'
      AND u."calleInicio"    = 'Resbalón'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Estrella', 'Mapocho Sur', 'La Africana', -33.423511236, -70.751655446, 128
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Vinita' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Estrella'
      AND u."calleInicio"    = 'Mapocho Sur'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lo López', 'Neptuno', 'Sara Gajardo', -33.417401581, -70.718750665, 180
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Sara Gajardo' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lo López'
      AND u."calleInicio"    = 'Neptuno'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Mapocho (Bandejón Norte)', 'Huelén', 'Ankara', -33.421753314, -70.738434218, 196
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mapocho' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Mapocho (Bandejón Norte)'
      AND u."calleInicio"    = 'Huelén'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Río Douro Sur', 'Pje. Jorge Montt', 'Federico Errázuriz', -33.419744078, -70.762117424, 173
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mar De Chile' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Río Douro Sur'
      AND u."calleInicio"    = 'Pje. Jorge Montt'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Salvador Gutierrez (Bandejón Norte)', '3 de Julio', 'Santos Medel', -33.419542237, -70.730729202, 158
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Salvador Gutierrez' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Salvador Gutierrez (Bandejón Norte)'
      AND u."calleInicio"    = '3 de Julio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Salvador Gutierrez (Bandejón Norte)', 'La Estrella', 'Rolando Peterson', -33.416820606, -70.75034468, 230
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Montijo' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Salvador Gutierrez (Bandejón Norte)'
      AND u."calleInicio"    = 'La Estrella'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Tomas Alba Edison', 'Jorge Washington', 'Estados Unidos', -33.433739027, -70.736038198, 122
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Roosevelt' AND c.nombre = 'Cerro Navia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Tomas Alba Edison'
      AND u."calleInicio"    = 'Jorge Washington'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Apolo', 'Edwin Aldrin', 'Esmeralda', -33.182668811, -70.652453457, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Esmeralda' AND c.nombre = 'Colina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Apolo'
      AND u."calleInicio"    = 'Edwin Aldrin'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Fermín Vergara', 'Calle Siete', 'Calle Ocho', -33.304557744, -70.686914329, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Fermin Vergara' AND c.nombre = 'Colina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Fermín Vergara'
      AND u."calleInicio"    = 'Calle Siete'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Francisco Flores del Campo', 'Ignacio Carrera Pinto', 'Calle Lo Seco', -33.194369033, -70.667269454, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Francisco Flores Del Campo' AND c.nombre = 'Colina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Francisco Flores del Campo'
      AND u."calleInicio"    = 'Ignacio Carrera Pinto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Labarca', 'San Alberto', 'Carretera General San Martín', -33.207207265, -70.675883623, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Labarca' AND c.nombre = 'Colina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Labarca'
      AND u."calleInicio"    = 'San Alberto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Roque Esteban Scarpa', 'José Donoso', 'Narrador Carlos Cerda', -33.183247896, -70.670573044, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Roque Esteban Scarpa' AND c.nombre = 'Colina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Roque Esteban Scarpa'
      AND u."calleInicio"    = 'José Donoso'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Abraham Lincoln', 'El Cortijo', 'Pje. Rengifo', -33.379952149, -70.685523191, 180
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 4 Conchali' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Abraham Lincoln'
      AND u."calleInicio"    = 'El Cortijo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Alberto Gonzalez', 'Paula Jaraquemada', 'Principal', -33.382470958, -70.667837357, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 1' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Alberto Gonzalez'
      AND u."calleInicio"    = 'Paula Jaraquemada'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Independencia (Caletera)', 'José María Caro', 'Pje. Asunción', -33.371339712, -70.687462431, 180
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 4 Independencia' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Independencia (Caletera)'
      AND u."calleInicio"    = 'José María Caro'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Barón de Juras Reales', 'Olivo', 'Calle Norte', -33.39113527, -70.683472002, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 2 Conchali' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Barón de Juras Reales'
      AND u."calleInicio"    = 'Olivo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Barón de Juras Reales', 'Parral', 'Pje. 2 Norte', -33.389581851, -70.68414481, 180
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Baron De Juras Reales' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Barón de Juras Reales'
      AND u."calleInicio"    = 'Parral'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Guanaco', 'Principal', 'Madrid', -33.383261842, -70.657500727, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 2 Conchali' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Guanaco'
      AND u."calleInicio"    = 'Principal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Cardenal Caro', 'Independencia', 'Marsella', -33.373438026, -70.683580397, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cardenal Caro N° 1' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Cardenal Caro'
      AND u."calleInicio"    = 'Independencia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Cardenal Caro', 'Los Acacios', 'Pje. El Arrozal', -33.374029727, -70.688807083, 180
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Acacios' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Cardenal Caro'
      AND u."calleInicio"    = 'Los Acacios'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Nahuelbuta', 'Avda. Independencia', 'Tupungato', -33.380366939, -70.681056973, 105
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Nahuelbuta' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Nahuelbuta'
      AND u."calleInicio"    = 'Avda. Independencia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Teniente Ponce', 'Manantiales', 'La Palmilla', -33.391285058, -70.665185546, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Teniente Ponce' AND c.nombre = 'Conchalí'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Teniente Ponce'
      AND u."calleInicio"    = 'Manantiales'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Cerrillos', 'Los Almácigos', 'Pje. Nancy Arias', -33.460428816, -71.035743047, 36
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cerrillos' AND c.nombre = 'Curacaví'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Cerrillos'
      AND u."calleInicio"    = 'Los Almácigos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Javiera Carrera', 'Cuyuncaví', 'Los Patriotas', -33.392704967, -71.124481634, 244
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Javiera Carrera' AND c.nombre = 'Curacaví'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Javiera Carrera'
      AND u."calleInicio"    = 'Cuyuncaví'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Presbitero Moraga', 'Jorge Montt', 'Alberto Fellemberg', -33.398942658, -71.128719108, 244
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Presbitero Moraga' AND c.nombre = 'Curacaví'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Presbitero Moraga'
      AND u."calleInicio"    = 'Jorge Montt'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Julio Covarrubias', 'Los Aviadores', 'Jorge Luco', -33.556313084, -70.661293811, 423
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Covarrubias' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Julio Covarrubias'
      AND u."calleInicio"    = 'Los Aviadores'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Camino del Inca', 'Padre Hurtado', 'Pje. Pumanque', -33.577264245, -70.677427682, 250
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Camino Del Inca' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Camino del Inca'
      AND u."calleInicio"    = 'Padre Hurtado'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Capitán Avalos', 'Gran Avenida', 'Padre Hurtado', -33.550906139, -70.669967312, 244
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Capitan Avalos' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Capitán Avalos'
      AND u."calleInicio"    = 'Gran Avenida'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Sauce', 'Los Pinares', 'Los Litres', -33.564174374, -70.664357548, 545
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Elena' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Sauce'
      AND u."calleInicio"    = 'Los Pinares'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Canteras', 'Zinc', 'La Pampa', -33.57511273, -70.667713919, 277
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Temuco' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Canteras'
      AND u."calleInicio"    = 'Zinc'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Parcelas', 'Padre Hurtado', 'Pje. Pumanque', -33.581576802, -70.673220038, 194
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Parcelas' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Parcelas'
      AND u."calleInicio"    = 'Padre Hurtado'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Carolinos', 'Los Alamos', 'Los Sauces', -33.572281039, -70.679374752, 496
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Carolinos' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Carolinos'
      AND u."calleInicio"    = 'Los Alamos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Nogales', 'Lo Espejo', '18 de Septiembre', -33.541764767, -70.681637387, 220
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lagos De Chile' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Nogales'
      AND u."calleInicio"    = 'Lo Espejo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Luis Barros Borgoño', 'Rengo', 'Indio Jerónimo', -33.549842512, -70.686147232, 207
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Laura' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Luis Barros Borgoño'
      AND u."calleInicio"    = 'Rengo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Luis Barros Borgoño', 'Rengo', 'Javiera Carrera', -33.549893986, -70.685920857, 206
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Borgoño' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Luis Barros Borgoño'
      AND u."calleInicio"    = 'Rengo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Nueva Poniente', 'Manuel Bulnes', 'Tomas Yavar', -33.54924492, -70.654253791, 81
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Arturo Prat' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Nueva Poniente'
      AND u."calleInicio"    = 'Manuel Bulnes'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Observatorio', 'Julio Covarrubias', 'Padre Hurtado', -33.560917797, -70.666165435, 501
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Sauce' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Observatorio'
      AND u."calleInicio"    = 'Julio Covarrubias'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Vecinal Sur', 'San Francisco', 'Océano Atlántico', -33.581664298, -70.664356518, 269
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Vecinal' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Vecinal Sur'
      AND u."calleInicio"    = 'San Francisco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Victor Plaza Mayorga', 'Antonio Bórquez', 'Tulipanes', -33.547432822, -70.680979357, 304
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Victor Plaza Mayorga' AND c.nombre = 'El Bosque'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Victor Plaza Mayorga'
      AND u."calleInicio"    = 'Antonio Bórquez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Aníbal Pinto', 'Villa Altos del Monte', 'Callejón de Las Guaguas', -33.67124653, -70.985839442, 176
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Modelo' AND c.nombre = 'El Monte'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Aníbal Pinto'
      AND u."calleInicio"    = 'Villa Altos del Monte'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Bernardo O''Higgins', 'Pje. Ines de Suarez', 'San Martín', -33.687450636, -71.050441108, 45
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa O''Higgins' AND c.nombre = 'El Monte'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Bernardo O''Higgins'
      AND u."calleInicio"    = 'Pje. Ines de Suarez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lago Caburga', 'Los Encinos', ' ', -33.684863436, -71.024120091, 100
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Los Alamos' AND c.nombre = 'El Monte'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lago Caburga'
      AND u."calleInicio"    = 'Los Encinos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Carrera', 'Aníbal Pinto', 'Pje. Los Carrera', -33.677800348, -70.984895361, 14
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Mercadito Campesino' AND c.nombre = 'El Monte'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Carrera'
      AND u."calleInicio"    = 'Aníbal Pinto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Encinos', 'Lago Caburga', 'Los Cipreses', -33.684325099, -71.023072333, 45
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Trebol' AND c.nombre = 'El Monte'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Encinos'
      AND u."calleInicio"    = 'Lago Caburga'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Plaza de Los Porotos', 'Plaza de Los Porotos', 'Plaza de Los Porotos', -33.678015771, -70.992458494, 50
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Plaza Los Porotos' AND c.nombre = 'El Monte'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Plaza de Los Porotos'
      AND u."calleInicio"    = 'Plaza de Los Porotos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Villa Antigua', 'Carlos Ibañez del Campo', 'San Miguel', -33.675387197, -70.994814663, 97
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Club Socios' AND c.nombre = 'El Monte'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Villa Antigua'
      AND u."calleInicio"    = 'Carlos Ibañez del Campo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Antártica', 'Galvarino', 'Los Pingüinos', -33.470025726, -70.690726491, 240
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Nogales' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Antártica'
      AND u."calleInicio"    = 'Galvarino'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Curacaví', '5 de Abril', 'Las Parcelas', -33.470725606, -70.722676022, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Curacavi' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Curacaví'
      AND u."calleInicio"    = '5 de Abril'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Violetas', 'El Boldo', 'Las Petunias', -33.459031416, -70.708745822, 74
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cristo' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Violetas'
      AND u."calleInicio"    = 'El Boldo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Luis Cruz Martínez', 'Uspallata', 'Vicente Irarrázabal', -33.475326646, -70.694457328, 163
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santiago' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Luis Cruz Martínez'
      AND u."calleInicio"    = 'Uspallata'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Manuel Thompson', 'Amengual', 'Recreo', -33.457018303, -70.696429557, 38
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Amengual' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Manuel Thompson'
      AND u."calleInicio"    = 'Amengual'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Quemchi', 'Las Estepas', 'Palena', -33.474408269, -70.711689668, 374
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Quemchi' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Quemchi'
      AND u."calleInicio"    = 'Las Estepas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Rivas Vicuña', '5 de Abril', 'Torslandia', -33.467148903, -70.713295573, 77
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Rivas Vicuna' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Rivas Vicuña'
      AND u."calleInicio"    = '5 de Abril'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San José', 'Juana Weber de Amunategui', '5 de Abril', -33.465787512, -70.701383811, 512
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Jose' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San José'
      AND u."calleInicio"    = 'Juana Weber de Amunategui'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa Petronila', 'Embajador Quintana', 'Porto Seguro', -33.450112978, -70.70493359, 162
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Petronila' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa Petronila'
      AND u."calleInicio"    = 'Embajador Quintana'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa Teresa', '5 de Abril', 'Veteranos del 79', -33.461575676, -70.691688307, 161
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Teresa' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa Teresa'
      AND u."calleInicio"    = '5 de Abril'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Taitao', 'Aeropuerto', 'Lemuy', -33.470718675, -70.710968989, 79
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Taitao' AND c.nombre = 'Estación Central'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Taitao'
      AND u."calleInicio"    = 'Aeropuerto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. El Bosque Santiago', 'Premio Nobel', 'Salvador Allende', -33.375851597, -70.630894432, 301
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Salvador Allende' AND c.nombre = 'Huechuraba'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. El Bosque Santiago'
      AND u."calleInicio"    = 'Premio Nobel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'José Joaquín Aguirre Luco', 'Elias Laferte', 'Pedro Aguirre Cerda', -33.377029393, -70.642686755, 92
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Aguirre Luco' AND c.nombre = 'Huechuraba'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'José Joaquín Aguirre Luco'
      AND u."calleInicio"    = 'Elias Laferte'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pablo Neruda', 'Los Paltos', 'Del Pincoy', -33.366978971, -70.632057546, 306
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Pablo Neruda' AND c.nombre = 'Huechuraba'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pablo Neruda'
      AND u."calleInicio"    = 'Los Paltos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Colón', 'Fermín Vivaceta', 'López de Alcazar', -33.422920141, -70.66036716, 157
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Colon' AND c.nombre = 'Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Colón'
      AND u."calleInicio"    = 'Fermín Vivaceta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Cronista Góngora', 'Padre Faustino Gazziero', 'Juliet', -33.412044745, -70.66836627, 161
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cronista Gongora' AND c.nombre = 'Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Cronista Góngora'
      AND u."calleInicio"    = 'Padre Faustino Gazziero'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Pino', 'Gamero', 'Los Angeles', -33.423823256, -70.666087382, 146
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Pino' AND c.nombre = 'Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Pino'
      AND u."calleInicio"    = 'Gamero'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Enrique Soro', 'Salomón Sack', 'Panamericana Norte', -33.420024557, -70.673604846, 183
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Enrique Soro' AND c.nombre = 'Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Enrique Soro'
      AND u."calleInicio"    = 'Salomón Sack'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Cañas', 'Nueva de Matte', 'Nueva Uno', -33.407655399, -70.675787059, 172
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mirador Viejo' AND c.nombre = 'Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Cañas'
      AND u."calleInicio"    = 'Nueva de Matte'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Maruri', 'Avda. Domingo Santa María', 'Jacobo Vial', -33.414855293, -70.659687335, 151
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Maruri' AND c.nombre = 'Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Maruri'
      AND u."calleInicio"    = 'Avda. Domingo Santa María'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Principal', 'Avda. Naltahua', 'Los Encinos', -33.733683065, -71.023303748, 47
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Antonio De Naltahua' AND c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Principal'
      AND u."calleInicio"    = 'Avda. Naltahua'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Cancha de Carrera', 'Balmaceda', 'Las Frutas', -33.747070074, -70.868084754, 256
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Población Cancha De Carreras' AND c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Cancha de Carrera'
      AND u."calleInicio"    = 'Balmaceda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Guías', 'San Antonio de Naltahua', 'Pje. Cinco', -33.733340802, -70.960349368, 47
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Llaveria' AND c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Guías'
      AND u."calleInicio"    = 'San Antonio de Naltahua'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Lirios', 'Armijo', 'Las Dalias', -33.745876617, -70.897022058, 47
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Lirios' AND c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Lirios'
      AND u."calleInicio"    = 'Armijo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Naranjos', 'Gacitúa', 'Los Manzanos', -33.732397057, -70.907798773, 47
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Naranjos' AND c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Naranjos'
      AND u."calleInicio"    = 'Gacitúa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Vista Hermosa', 'Balmaceda', 'San Antonio', -33.740339918, -70.864899807, 256
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Sol Naciente' AND c.nombre = 'Isla De Maipo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Vista Hermosa'
      AND u."calleInicio"    = 'Balmaceda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Alejandro Vial', 'Uruguay', 'Las Brisas', -33.532925163, -70.655183895, 212
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Ramon' AND c.nombre = 'La Cisterna'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Alejandro Vial'
      AND u."calleInicio"    = 'Uruguay'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Brisas del Maipo', 'Industrias', 'Letras', -33.52934485, -70.675098204, 194
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Brisas Del Maipo' AND c.nombre = 'La Cisterna'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Brisas del Maipo'
      AND u."calleInicio"    = 'Industrias'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Fuenzalida Urrejola', 'Angamos', 'Iquique', -33.51800254, -70.651820842, 196
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lo Ovalle' AND c.nombre = 'La Cisterna'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Fuenzalida Urrejola'
      AND u."calleInicio"    = 'Angamos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Goycolea (Avda. Ossa)', 'Pero', 'Cerro Negro', -33.542430078, -70.653519697, 153
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Goycolea' AND c.nombre = 'La Cisterna'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Goycolea (Avda. Ossa)'
      AND u."calleInicio"    = 'Pero'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ines Rivas', 'Alcalde Barrera', 'Manuel Rengifo', -33.537026609, -70.679836615, 155
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ballesteros' AND c.nombre = 'La Cisterna'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ines Rivas'
      AND u."calleInicio"    = 'Alcalde Barrera'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lucerna', 'Colón', 'San Luis', -33.519789698, -70.667306571, 77
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lucerna' AND c.nombre = 'La Cisterna'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lucerna'
      AND u."calleInicio"    = 'Colón'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Nueva Poniente', 'Vicuña Mackenna', 'Manuel Bulnes', -33.546724143, -70.653508524, 152
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Arturo Prat' AND c.nombre = 'La Cisterna'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Nueva Poniente'
      AND u."calleInicio"    = 'Vicuña Mackenna'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Aconcagua', 'Santa Julia', 'Gerónimo de Alderete', -33.528682824, -70.606094075, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Ohiggins' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Aconcagua'
      AND u."calleInicio"    = 'Santa Julia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. El Parque', 'Real Pontevedra', 'Avda. La Florida', -33.515836725, -70.586350886, 169
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Avda. Parque' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. El Parque'
      AND u."calleInicio"    = 'Real Pontevedra'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. La Florida', 'Departamental', 'Avda. Parque', -33.512115654, -70.586706955, 169
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Copihues' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. La Florida'
      AND u."calleInicio"    = 'Departamental'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. San José de La Estrella', 'Bahía Catalina', 'Punta Arenas', -33.554025871, -70.611722772, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Ohiggins' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. San José de La Estrella'
      AND u."calleInicio"    = 'Bahía Catalina'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Uno', 'José Miguel Carrera', 'Trinidad', -33.548542039, -70.60729359, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Ohiggins, Avenida 1' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Uno'
      AND u."calleInicio"    = 'José Miguel Carrera'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calama', 'Sótero del Río', 'José de San Martín', -33.537078865, -70.607430148, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Calama' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calama'
      AND u."calleInicio"    = 'Sótero del Río'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle B', 'Santa Julia', 'Gerónimo de Alderete', -33.528700699, -70.606055646, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa O''Higgins-Calle B Nº. 1' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle B'
      AND u."calleInicio"    = 'Santa Julia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Chacón Zamora', 'Walker Martínez', 'Los Aralios', -33.519832652, -70.577926303, 169
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Copihues' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Chacón Zamora'
      AND u."calleInicio"    = 'Walker Martínez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Chaitén', 'Rojas Magallanes', 'Sotero del Río', -33.537407596, -70.599664491, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chaiten' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Chaitén'
      AND u."calleInicio"    = 'Rojas Magallanes'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Diego Portales', 'Valle Hermoso', 'Las Nieves', -33.559344327, -70.561198971, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Diego Portales'
      AND u."calleInicio"    = 'Valle Hermoso'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Ulmo', 'Las Pataguas', 'El Peumo', -33.515058017, -70.596032841, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Ulmo'
      AND u."calleInicio"    = 'Las Pataguas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Enrique Olivares', 'Colombia', 'Perú', -33.539671918, -70.584400748, 82
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bellavista' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Enrique Olivares'
      AND u."calleInicio"    = 'Colombia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Fraternidad', 'Guacolda', 'Tegualda', -33.563825491, -70.611209366, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Fraternidad' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Fraternidad'
      AND u."calleInicio"    = 'Guacolda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'General Arriagada', 'Bahía Catalina', 'Julio Cesar', -33.559475098, -70.608512574, 170
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Union' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'General Arriagada'
      AND u."calleInicio"    = 'Bahía Catalina'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'General Arriagada', 'Porvenir', 'Arturo Perez Canto', -33.558437719, -70.59811967, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Union' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'General Arriagada'
      AND u."calleInicio"    = 'Porvenir'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Gerónimo de Alderete', 'Alonso de Ercilla', 'México', -33.528062845, -70.582554207, 169
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Copihues' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Gerónimo de Alderete'
      AND u."calleInicio"    = 'Alonso de Ercilla'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Jorge Cisternas Lema', 'Punta Arenas', 'Bahía Catalina', -33.552028905, -70.612047488, 170
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Jorge Cisternas' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Jorge Cisternas Lema'
      AND u."calleInicio"    = 'Punta Arenas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'María Elena', 'Bahía Catalina', 'La Serena', -33.564304423, -70.595220135, 26
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'María Elena' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'María Elena'
      AND u."calleInicio"    = 'Bahía Catalina'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'México', 'San José de La Estrella', 'Pje. Pichincha', -33.554874409, -70.569940715, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa O''Higgins' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'México'
      AND u."calleInicio"    = 'San José de La Estrella'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Mirador Azul', 'Froilán Roa', 'Calle Nueva Uno', -33.511785619, -70.597790795, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Mirador Azul'
      AND u."calleInicio"    = 'Froilán Roa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pudeto', 'Paso El Roble', 'San Carlos de Ancud', -33.517638043, -70.603082007, 82
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bellavista' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pudeto'
      AND u."calleInicio"    = 'Paso El Roble'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Punitaqui', 'Departamental', 'Las Higueras', -33.512495639, -70.575017312, 169
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Copihues' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Punitaqui'
      AND u."calleInicio"    = 'Departamental'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Jorge', 'Pje. 4', 'Calle Doce', -33.559060655, -70.58064881, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Jorge'
      AND u."calleInicio"    = 'Pje. 4'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San José de La Estrella', 'Colombia', 'El Acero', -33.552880911, -70.575191137, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San José de La Estrella'
      AND u."calleInicio"    = 'Colombia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San José de La Estrella', 'Pje. Los Artistas', 'Pje. La Raíz', -33.552549868, -70.567272443, 82
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bellavista' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San José de La Estrella'
      AND u."calleInicio"    = 'Pje. Los Artistas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Sánchez Fontecilla', 'Rojas Magallanes', 'Sánchez Fontecilla (tope)', -33.534615815, -70.554356839, 86
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Sanchez Fontecilla' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Sánchez Fontecilla'
      AND u."calleInicio"    = 'Rojas Magallanes'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa Amalia', 'Pje. Arce', 'Pje. Los Canales', -33.543530288, -70.577607438, 52
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bellavista' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa Amalia'
      AND u."calleInicio"    = 'Pje. Arce'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa Amalia', 'Pje. Los Pinos', 'Pje. Algarrobo', -33.542883734, -70.598271275, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa Amalia'
      AND u."calleInicio"    = 'Pje. Los Pinos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa Amalia', 'Santa Raquel', 'Manutara', -33.542970203, -70.599181091, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa O''Higgins' AND c.nombre = 'La Florida'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa Amalia'
      AND u."calleInicio"    = 'Santa Raquel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Sur', 'Tacora', 'El Tabo', -33.539791981, -70.626551959, 203
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Tacora' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Sur'
      AND u."calleInicio"    = 'Tacora'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Tomé', 'Avda. Santa Rosa', 'Los Vilos', -33.532736783, -70.632267556, 299
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Tome' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Tomé'
      AND u."calleInicio"    = 'Avda. Santa Rosa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Canto General', 'Santa Rosa', 'Joaquin Edwards Bello', -33.550992547, -70.628705342, 368
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Poeta Neruda' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Canto General'
      AND u."calleInicio"    = 'Santa Rosa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Combarbalá', 'Coronel', 'Quilpué', -33.52929484, -70.619243446, 274
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Malaquias Concha' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Combarbalá'
      AND u."calleInicio"    = 'Coronel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Manco Capac', 'Coronel', 'Punta Arenas', -33.543398999, -70.612912856, 259
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manco Capac' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Manco Capac'
      AND u."calleInicio"    = 'Coronel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Osorno', 'Coronel', '10 Oriente', -33.524478058, -70.613892374, 258
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Buses' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Osorno'
      AND u."calleInicio"    = 'Coronel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Padre Esteban Gumucio', 'Cardenas Raúl Silva Henríquez', 'Los Vilos', -33.520425921, -70.629174155, 221
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Joao Gulart' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Padre Esteban Gumucio'
      AND u."calleInicio"    = 'Cardenas Raúl Silva Henríquez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pdte. Ignacio Lula Da Silva', 'Padre Esteban Gumuccio', 'Calle P', -33.517459648, -70.62071692, 316
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Industrias' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pdte. Ignacio Lula Da Silva'
      AND u."calleInicio"    = 'Padre Esteban Gumuccio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santo Tomás', 'Coronel', 'Cardenas Raúl Silva Henríquez', -33.556065342, -70.614201815, 208
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Serena' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santo Tomás'
      AND u."calleInicio"    = 'Coronel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Sebastopol', 'Avda. Estadio', 'Punta Arenas', -33.515179302, -70.612344305, 141
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mañio' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Sebastopol'
      AND u."calleInicio"    = 'Avda. Estadio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Valdivia', 'Cardenas Raúl Silva Henríquez', 'Coronel', -33.53341037, -70.619321861, 309
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Coronel' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Valdivia'
      AND u."calleInicio"    = 'Cardenas Raúl Silva Henríquez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Vicuña Mackenna', 'Joaquín Edwards Bello', 'Sofía Eastmann de Hunneeus', -33.546931954, -70.627560824, 244
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Claudia' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Vicuña Mackenna'
      AND u."calleInicio"    = 'Joaquín Edwards Bello'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Yungay', 'El Mañio', 'El Trigal', -33.523666363, -70.619820969, 134
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Yungay' AND c.nombre = 'La Granja'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Yungay'
      AND u."calleInicio"    = 'El Mañio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Almirante Latorre', 'General Franco', 'Observatorio', -33.562044218, -70.6466146, 110
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Salvador Dali' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Almirante Latorre'
      AND u."calleInicio"    = 'General Franco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Bernardino Parada', 'José Toribio Medina', 'Julio Chavez', -33.57809515, -70.653924519, 298
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '21 De Mayo' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Bernardino Parada'
      AND u."calleInicio"    = 'José Toribio Medina'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Fundador', 'Batallón Chacabuco', 'Ombú', -33.592236933, -70.612644691, 332
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Castillo' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Fundador'
      AND u."calleInicio"    = 'Batallón Chacabuco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Joaquín Edwards Bello', 'Santo Tomas', 'Pablo VI', -33.560220457, -70.623182979, 216
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Conciertos - El Bosque' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Joaquín Edwards Bello'
      AND u."calleInicio"    = 'Santo Tomas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'John Kennedy', 'Bernardino Parada', 'Julio Barrenechea', -33.581632559, -70.648207635, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'John Kennedy' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'John Kennedy'
      AND u."calleInicio"    = 'Bernardino Parada'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Juanita', 'El Ombú', 'Batallón Maipo', -33.591315893, -70.618888856, 332
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Juanita' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Juanita'
      AND u."calleInicio"    = 'El Ombú'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Julio Barnechea', 'San Francisco', 'Julio Chavez', -33.582681507, -70.660176213, 268
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'J Ramirez' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Julio Barnechea'
      AND u."calleInicio"    = 'San Francisco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Serena', 'General Arriagada', 'Santo Tomás', -33.558568059, -70.61567893, 95
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Parcelas' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Serena'
      AND u."calleInicio"    = 'General Arriagada'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Aguilas', 'Antonio Machado', 'Violeta Parra', -33.56089783, -70.651788411, 184
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Aguilas' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Aguilas'
      AND u."calleInicio"    = 'Antonio Machado'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ombú', 'El Hualle', 'Sexto de Linea', -33.594634661, -70.618669256, 332
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Ombu' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ombú'
      AND u."calleInicio"    = 'El Hualle'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Padre Pablo Laurin', 'Porto Alegre', 'Patagonia', -33.582302768, -70.636516723, 244
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Rafael' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Padre Pablo Laurin'
      AND u."calleInicio"    = 'Porto Alegre'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pedro Aguirre Cerda', 'Observatorio', 'Violeta Parra', -33.562813558, -70.638446012, 120
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Magdalena' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pedro Aguirre Cerda'
      AND u."calleInicio"    = 'Observatorio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Francisco', 'Pje. El Sueño', 'San Francisco', -33.557043847, -70.653372437, 192
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Vicente Llanos' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Francisco'
      AND u."calleInicio"    = 'Pje. El Sueño'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santo Tomas', 'Serena', 'Bahía Catalina', -33.556059239, -70.614221767, 224
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santo Tomas' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santo Tomas'
      AND u."calleInicio"    = 'Serena'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Sembrador', 'Pedro Aguirre Cerda', 'El Bosque', -33.558612716, -70.636045966, 166
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Bosque' AND c.nombre = 'La Pintana'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Sembrador'
      AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Plaza Chile-Perú', 'Principe de Galez', 'Plaza Chile-Perú', -33.438556, -70.556284, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ecoferia' AND c.nombre = 'La Reina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Plaza Chile-Perú'
      AND u."calleInicio"    = 'Principe de Galez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Tobalaba', 'Avda. Américo Vespucio', 'La Cañada', -33.439594385, -70.571908871, 43
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Tobalaba' AND c.nombre = 'La Reina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Tobalaba'
      AND u."calleInicio"    = 'Avda. Américo Vespucio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Clorinda Henriquez', 'Larrain', 'Loreley/Sánchez Fontecilla', -33.451492941, -70.558528559, 33
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Agrupacion De Chacareros La Reina' AND c.nombre = 'La Reina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Clorinda Henriquez'
      AND u."calleInicio"    = 'Larrain'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Francisco Bilbao', 'Florencio Barrios', 'Curaco', -33.430013099, -70.550276751, 34
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'De Chacareros De La Reina' AND c.nombre = 'La Reina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Francisco Bilbao'
      AND u."calleInicio"    = 'Florencio Barrios'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Quinchamalí', 'Pje. 12', 'Chapilca', -33.456038276, -70.539319637, 46
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Quinchamali' AND c.nombre = 'La Reina'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Quinchamalí'
      AND u."calleInicio"    = 'Pje. 12'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Balmaceda', 'Baquedano', 'Valle del Choapa', -33.283006661, -70.880405513, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Centro' AND c.nombre = 'Lampa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Balmaceda'
      AND u."calleInicio"    = 'Baquedano'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Juan Maisonave', 'Avda. Francia', 'Avda. Argentina', -33.229735784, -70.810391318, 70
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Poblacion Ines Bustos I' AND c.nombre = 'Lampa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Juan Maisonave'
      AND u."calleInicio"    = 'Avda. Francia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Viña del Mar', 'Isabel Riquelme', 'Ramón Freire', -33.27983667, -70.887307346, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Viña Del Mar' AND c.nombre = 'Lampa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Viña del Mar'
      AND u."calleInicio"    = 'Isabel Riquelme'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Manquehue (Bandejón)', 'Isabel La Católica', 'Isabel La Catolica', -33.424808811, -70.564007405, 15
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mercado Chacareros De Manquehue' AND c.nombre = 'Las Condes'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Manquehue (Bandejón)'
      AND u."calleInicio"    = 'Isabel La Católica'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Presidente Riesco', 'Nuestra Señora del Rosario', 'Estocolmo', -33.401456789, -70.568212802, 17
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Presidente Riesco' AND c.nombre = 'Las Condes'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Presidente Riesco'
      AND u."calleInicio"    = 'Nuestra Señora del Rosario'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Dominicos', 'Apoquindo', 'Camino El Alba', -33.408241323, -70.543967353, 35
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Dominicos' AND c.nombre = 'Las Condes'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Dominicos'
      AND u."calleInicio"    = 'Apoquindo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Patricia', 'Paul Harris', 'Incahuasi', -33.420365284, -70.533625826, 100
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Patricia' AND c.nombre = 'Las Condes'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Patricia'
      AND u."calleInicio"    = 'Paul Harris'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Lo Barnechea', 'Raúl Labbé', 'Comandante Malbec', -33.358560358, -70.50630417, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Avda. Lo Barnechea' AND c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Lo Barnechea'
      AND u."calleInicio"    = 'Raúl Labbé'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Bajada Al Río', 'Raúl Labbé', 'Los Areneros', -33.362758876, -70.506330624, 33
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lo Barnechea' AND c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Bajada Al Río'
      AND u."calleInicio"    = 'Raúl Labbé'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Quincheros', 'El Esfuerzo', ' ', -33.357538814, -70.503011813, 18
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Quincheros' AND c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Quincheros'
      AND u."calleInicio"    = 'El Esfuerzo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Parque La Ermita', ' ', ' ', -33.36402465, -70.505697299, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Ermita' AND c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Parque La Ermita'
      AND u."calleInicio"    = ' '
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pie Andino', 'Huinganal', ' ', -33.332876344, -70.507576877, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Pie Andino' AND c.nombre = 'Lo Barnechea'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pie Andino'
      AND u."calleInicio"    = 'Huinganal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Adolfo López Mateo', 'Acapulco', 'Pje. El Durazno', -33.521541818, -70.682245527, 286
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Olga' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Adolfo López Mateo'
      AND u."calleInicio"    = 'Acapulco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Cooperación', 'Lo Ovalle', 'Buenaventura', -33.506057141, -70.688168342, 189
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cooperacion' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Cooperación'
      AND u."calleInicio"    = 'Lo Ovalle'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Balmaceda', 'Astaburuaga', 'La Sierra', -33.532393084, -70.692938972, 70
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lo Espejo' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Balmaceda'
      AND u."calleInicio"    = 'Astaburuaga'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Júpiter', 'Eduardo Frei Montalva', 'Venus', -33.524375279, -70.690404132, 257
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Jupiter' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Júpiter'
      AND u."calleInicio"    = 'Eduardo Frei Montalva'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Habana', 'Eduardo Frei Montalva', 'Américo Vespucio Sur', -33.52007851, -70.698563606, 241
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Habana' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Habana'
      AND u."calleInicio"    = 'Eduardo Frei Montalva'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Monterrey', 'Salvador Allende', 'Pje. Diecinueve Sur', -33.515993748, -70.689839318, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Monterrey' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Monterrey'
      AND u."calleInicio"    = 'Salvador Allende'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pablo Neruda', 'Nueve de Enero', 'Balmaceda', -33.52859148, -70.698500283, 223
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Pablo Neruda' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pablo Neruda'
      AND u."calleInicio"    = 'Nueve de Enero'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Salvador Allende', 'Avda. Central', 'Pío XII', -33.513212041, -70.695005464, 258
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Fernandez Albano Poniente' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Salvador Allende'
      AND u."calleInicio"    = 'Avda. Central'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Salvador Allende', 'Avda. Central', 'Del Ferrocarril', -33.515051567, -70.689704787, 406
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Jose Maria Caro' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Salvador Allende'
      AND u."calleInicio"    = 'Avda. Central'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Valparaiso', 'Lo Ovalle', 'Lincoln', -33.511408056, -70.675570995, 322
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Adriana' AND c.nombre = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Valparaiso'
      AND u."calleInicio"    = 'Lo Ovalle'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Gabriela Mistral', 'Paula Jaraquemada', 'Coronel Alfonso Ugarte', -33.449770775, -70.736393408, 104
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Gabriela Mistral' AND c.nombre = 'Lo Prado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Gabriela Mistral'
      AND u."calleInicio"    = 'Paula Jaraquemada'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Torres', 'Dorsal', 'Milton Rossel', -33.451667923, -70.731024675, 76
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Kennedy' AND c.nombre = 'Lo Prado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Torres'
      AND u."calleInicio"    = 'Dorsal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Torres', 'San Pablo', 'Los Copihues', -33.441866647, -70.730972041, 251
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 1 Las Torres' AND c.nombre = 'Lo Prado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Torres'
      AND u."calleInicio"    = 'San Pablo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Neptuno', 'Reina Maud', 'Avda. Dorsal', -33.44867575, -70.722554389, 198
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Neptuno' AND c.nombre = 'Lo Prado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Neptuno'
      AND u."calleInicio"    = 'Reina Maud'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pedro de Córdoba', 'Ovalle', 'Isla Decepción', -33.452217138, -70.71177066, 126
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ibis' AND c.nombre = 'Lo Prado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pedro de Córdoba'
      AND u."calleInicio"    = 'Ovalle'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa Marta', 'Dorsal', 'Portales', -33.448042994, -70.715077965, 264
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Marta' AND c.nombre = 'Lo Prado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa Marta'
      AND u."calleInicio"    = 'Dorsal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Amanda Labarca', 'Ramón Cruz', 'Alejandro Avalos', -33.474222925, -70.582802338, 53
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ramon Cruz' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Amanda Labarca'
      AND u."calleInicio"    = 'Ramón Cruz'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Quilín (Costado)', 'Quilín', 'San Mateo', -33.48590062, -70.591229772, 58
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Modelo Quilin' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Quilín (Costado)'
      AND u."calleInicio"    = 'Quilín'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Castillo Urizar', 'Quilin', 'Los Olmos', -33.482506252, -70.609655674, 11
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Carolina' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Castillo Urizar'
      AND u."calleInicio"    = 'Quilin'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Líbano', 'Amador Neghme', 'Avda. Macul', -33.500130873, -70.593052445, 104
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Juan Pinto Duran' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Líbano'
      AND u."calleInicio"    = 'Amador Neghme'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Codornices', 'Missouri', 'Los Milanos', -33.505679807, -70.592626977, 50
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Codornices' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Codornices'
      AND u."calleInicio"    = 'Missouri'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Platanos', 'Ramón Cruz', 'Siria', -33.483528116, -70.585323974, 55
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa La Catolica' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Platanos'
      AND u."calleInicio"    = 'Ramón Cruz'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Tres Antonios', 'Avda. Agrícola', 'Las Industrias', -33.488755503, -70.60475543, 118
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Tres Antonios' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Tres Antonios'
      AND u."calleInicio"    = 'Avda. Agrícola'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Manuel Sánchez', 'Santa Julia', 'Jorge Monckeberg', -33.475548447, -70.590113228, 143
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Julia' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Manuel Sánchez'
      AND u."calleInicio"    = 'Santa Julia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ortiz de Zárate', 'Marathón', 'Ignacio Verdugo', -33.506123344, -70.609030783, 20
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Santa Elena' AND c.nombre = 'Macul'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ortiz de Zárate'
      AND u."calleInicio"    = 'Marathón'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, '3 Poniente', 'Avda. Maipú', 'Camino Rinconada', -33.507287671, -70.779252317, 117
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '3 Poniente' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = '3 Poniente'
      AND u."calleInicio"    = 'Avda. Maipú'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, '3 Poniente', 'Avda. Portales', 'Camino Rinconada', -33.513428061, -70.778940405, 322
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '3 Poniente' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = '3 Poniente'
      AND u."calleInicio"    = 'Avda. Portales'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. El Descanso', 'Gustavo Eiffel', 'Antonio Varas', -33.46983047, -70.752871111, 223
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Descanso' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. El Descanso'
      AND u."calleInicio"    = 'Gustavo Eiffel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Las Parcelas', 'Sur de Chile', 'Avda. Las Torres', -33.474757193, -70.731957174, 335
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Parcelas' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Las Parcelas'
      AND u."calleInicio"    = 'Sur de Chile'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Camino a Melipilla (Caletera)', 'Parque Central Poniente', 'Camino Melipilla (Fin Caletera)', -33.554976307, -70.796610443, 141
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ciudad Satelite' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Camino a Melipilla (Caletera)'
      AND u."calleInicio"    = 'Parque Central Poniente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Camino a Rinconada', 'La Galaxia', 'Williams Rebolledo', -33.50657088, -70.794994143, 21
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Modelo Maipu' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Camino a Rinconada'
      AND u."calleInicio"    = 'La Galaxia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Campanario', '4 Poniente', 'Las Galaxias (Pje. La Dormida)', -33.520408033, -70.793348246, 168
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Valle Esperanza' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Campanario'
      AND u."calleInicio"    = '4 Poniente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Del Ferrocarril', 'Domingo Faustino Sarmiento', 'Cerro Barón', -33.539098764, -70.775282123, 105
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ferrocarril' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Del Ferrocarril'
      AND u."calleInicio"    = 'Domingo Faustino Sarmiento'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Del Ferrocarril', 'Esquina Blanca', 'José Manuel Irarrázaval', -33.51219678, -70.741138516, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Esquina Blanca' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Del Ferrocarril'
      AND u."calleInicio"    = 'Esquina Blanca'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Conquistador', 'Las Tinajas', 'Avda. Portales', -33.518123126, -70.796895826, 78
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Conquistador' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Conquistador'
      AND u."calleInicio"    = 'Las Tinajas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Gabriel Gonzalez Videla', '4 Poniente', 'Caleta Camarones', -33.538070601, -70.789390217, 119
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Gruta' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Gabriel Gonzalez Videla'
      AND u."calleInicio"    = '4 Poniente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Hermógenes Perez de Arce', 'Avda. Alfredo Silva Carvallo', 'Andrés Amenabar Vergara', -33.530802297, -70.769927378, 223
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Heroes' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Hermógenes Perez de Arce'
      AND u."calleInicio"    = 'Avda. Alfredo Silva Carvallo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Huascar', 'Avda. Padre Hurtado', 'San José', -33.514510692, -70.767924355, 224
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Padre Hurtado' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Huascar'
      AND u."calleInicio"    = 'Avda. Padre Hurtado'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Inca de Oro', 'La Galaxia', '4 Poniente', -33.512450251, -70.792487884, 78
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Valle Esperanza/Inca De Oro' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Inca de Oro'
      AND u."calleInicio"    = 'La Galaxia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Isabel Riquelme', 'Santa Rosa', 'Paradero 10 Pajaritos', -33.483217235, -70.738148964, 13
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Modelo Maipu' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Isabel Riquelme'
      AND u."calleInicio"    = 'Santa Rosa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'José Manuel Borgoño', 'Las Naciones', '4 Poniente', -33.509021739, -70.787408055, 270
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Borgoño' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'José Manuel Borgoño'
      AND u."calleInicio"    = 'Las Naciones'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Reforma', 'Jorge Alessandri', 'Pje. Excalibur', -33.486627947, -70.763313271, 96
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Reforma' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Reforma'
      AND u."calleInicio"    = 'Jorge Alessandri'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Industrias', '4 Poniente', 'Egipto (Pje. Turquestán)', -33.544987996, -70.773810785, 72
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Abrazo' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Industrias'
      AND u."calleInicio"    = '4 Poniente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Industrias', 'Judea', 'Jorge Guerra', -33.541075619, -70.771140841, 121
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Judea' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Industrias'
      AND u."calleInicio"    = 'Judea'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Naciones', 'Portales', 'Rinconada', -33.511332781, -70.784818685, 475
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Luis' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Naciones'
      AND u."calleInicio"    = 'Portales'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lumen', '3 Norte', 'Primo de Rivera', -33.494338331, -70.736216481, 256
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lumen' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lumen'
      AND u."calleInicio"    = '3 Norte'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'O''Higgins', 'Avda. de La Victoria', 'Miraflores (Olimpo)', -33.502536931, -70.771062945, 214
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Guayaquil' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'O''Higgins'
      AND u."calleInicio"    = 'Avda. de La Victoria'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa María', 'Vicente Reyes (Primera Transversal)', 'Segunda Transversal', -33.518677416, -70.749375142, 96
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '4 Alamos' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa María'
      AND u."calleInicio"    = 'Vicente Reyes (Primera Transversal)'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Teatro Princesa', 'Isabel Riquelme', 'Teatro Opera (Sinfonia)', -33.490668737, -70.766292483, 21
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Modelo Maipu' AND c.nombre = 'Maipu'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Teatro Princesa'
      AND u."calleInicio"    = 'Isabel Riquelme'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'José Manuel Veliz', 'Avda. Francisco Costabal', 'Ernestina Veliz', -33.51836577, -71.124217875, 56
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Maria Pinto' AND c.nombre = 'Maria Pinto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'José Manuel Veliz'
      AND u."calleInicio"    = 'Avda. Francisco Costabal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Chile', 'Avda. Cementerio', 'Ninhue', -33.694061449, -71.222952232, 612
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Avenida Chile' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Chile'
      AND u."calleInicio"    = 'Avda. Cementerio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Palmeras de Culiprán', ' ', ' ', -33.791540552, -71.252836216, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Culipran' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Palmeras de Culiprán'
      AND u."calleInicio"    = ' '
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Alamos', ' ', ' ', -33.758162876, -71.325950479, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Codigua' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Alamos'
      AND u."calleInicio"    = ' '
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Manuel Rodríguez', 'Vicuña Mackenna', 'Ugalde', -33.682588293, -71.206533008, 362
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Manuel Rodríguez'
      AND u."calleInicio"    = 'Vicuña Mackenna'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Merced', 'Lago Puyehue', '3 Poniente', -33.681313227, -71.231110449, 612
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Merced' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Merced'
      AND u."calleInicio"    = 'Lago Puyehue'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Plaza de Bollenar', 'Los Maquis', ' ', -33.570259233, -71.211896451, 52
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bollenar Agricultores' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Plaza de Bollenar'
      AND u."calleInicio"    = 'Los Maquis'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Policarpo Toro', 'Vicuña Mackenna', 'Merced', -33.682178835, -71.224036302, 665
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Los Toros' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Policarpo Toro'
      AND u."calleInicio"    = 'Vicuña Mackenna'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Rafael Morandé', 'Dieciocho de Septiembre', 'Caupolicán', -33.651698205, -71.148405076, 64
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Pomaire' AND c.nombre = 'Melipilla'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Rafael Morandé'
      AND u."calleInicio"    = 'Dieciocho de Septiembre'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Nueva 2', 'Marathón', 'Francisco Meneses', -33.467918627, -70.615752057, 36
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Grecia Modelo' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Nueva 2'
      AND u."calleInicio"    = 'Marathón'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Duble Almeyda', 'Ramón Cruz', 'Lo Plaza', -33.459006608, -70.582693079, 9
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Duble Almeyda' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Duble Almeyda'
      AND u."calleInicio"    = 'Ramón Cruz'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Emilia Tellez', 'Bremen', 'Pje. 9 Coventry', -33.441807207, -70.580574769, 57
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Emilia Tellez' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Emilia Tellez'
      AND u."calleInicio"    = 'Bremen'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Grecia', 'Avda. Américo Vespucio', 'Ramón Cruz', -33.468319202, -70.57934806, 80
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Maria Celeste' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Grecia'
      AND u."calleInicio"    = 'Avda. Américo Vespucio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Guillermo Mann', 'Pedro de Valdivia', 'Calle Nelson', -33.47029229, -70.60750925, 83
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Guillermo Mann' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Guillermo Mann'
      AND u."calleInicio"    = 'Pedro de Valdivia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ignacio Carrera Pinto', 'Juan Moya', 'Premio Nobel', -33.470091149, -70.591610313, 37
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Alerces' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ignacio Carrera Pinto'
      AND u."calleInicio"    = 'Juan Moya'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Juan Gomez Millas', 'Pedro de Valdivia', 'Los Tres Antonios', -33.461472492, -70.604686749, 38
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Aromos' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Juan Gomez Millas'
      AND u."calleInicio"    = 'Pedro de Valdivia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Matta Oriente', 'Irarrázabal', 'Lo Encalada', -33.454075567, -70.623199422, 32
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Matta Oriente' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Matta Oriente'
      AND u."calleInicio"    = 'Irarrázabal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ortuzar', 'Las Verónicas', 'Simón Bolivar', -33.449165006, -70.583635545, 19
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ortuzar' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ortuzar'
      AND u."calleInicio"    = 'Las Verónicas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Eugenio', 'Carlos Dittborn', 'Guillermo Mann', -33.468648562, -70.623082652, 70
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Eugenio' AND c.nombre = 'Ñuñoa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Eugenio'
      AND u."calleInicio"    = 'Carlos Dittborn'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Brasilia', 'Juan Wesley', 'Río Aconcagua', -33.573151827, -70.815458526, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Juan Wesley' AND c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Brasilia'
      AND u."calleInicio"    = 'Juan Wesley'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Camino San Alberto Hurtado', 'Tercera Avenida', 'La Piramide', -33.55723878, -70.799950933, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Rosa De Chena' AND c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Camino San Alberto Hurtado'
      AND u."calleInicio"    = 'Tercera Avenida'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Manzano', 'Pje. San Bernabé', 'Brasilia', -33.570064632, -70.806474275, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Explanada' AND c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Manzano'
      AND u."calleInicio"    = 'Pje. San Bernabé'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Silos', 'Estero Seco', 'Estero Limache', -33.577800041, -70.805617691, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Silos' AND c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Silos'
      AND u."calleInicio"    = 'Estero Seco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Presidente Aníbal Pinto', 'General O''Higgins', 'Rodolfo Jaramillo', -33.56125314, -70.818005592, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cristal Chile' AND c.nombre = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Presidente Aníbal Pinto'
      AND u."calleInicio"    = 'General O''Higgins'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. General Baquedano', ' ', ' ', -33.810089769, -70.740334987, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chacareros' AND c.nombre = 'Paine'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. General Baquedano'
      AND u."calleInicio"    = ' '
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Buin', 'Perú', 'Padre Mateo', -33.820632417, -70.737705057, 80
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Calle Buin' AND c.nombre = 'Paine'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Buin'
      AND u."calleInicio"    = 'Perú'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Gustavo Martínez', 'Avda. José Miguel Carrera', 'Pje. Río Futaleufú', -33.803380674, -70.727369266, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Altos De Cantillana' AND c.nombre = 'Paine'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Gustavo Martínez'
      AND u."calleInicio"    = 'Avda. José Miguel Carrera'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Plaza de Paine', 'Cuatro Norte', 'Cinco Norte', -33.810093135, -70.739070803, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Plaza' AND c.nombre = 'Paine'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Plaza de Paine'
      AND u."calleInicio"    = 'Cuatro Norte'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Cooperación', 'Lo Ovalle', 'Plano Regulador', -33.500799229, -70.685572866, 447
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Fraternal' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Cooperación'
      AND u."calleInicio"    = 'Lo Ovalle'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Centro América', 'Avda. Central', 'Haití', -33.493958334, -70.685495571, 80
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Centro America' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Centro América'
      AND u."calleInicio"    = 'Avda. Central'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Dos de Abril', 'Ernesto Molino', '1° de Mayo', -33.484178349, -70.676233642, 237
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Joaquin' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Dos de Abril'
      AND u."calleInicio"    = 'Ernesto Molino'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Enrique Matte', 'Club Hípico', 'Manuela Errázuriz', -33.483175009, -70.662479675, 250
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Enrique Matte/Ismael Valdes' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Enrique Matte'
      AND u."calleInicio"    = 'Club Hípico'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Félix Mendelssohn', 'Lazo', 'La Marina', -33.49313934, -70.67249625, 136
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Marina' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Félix Mendelssohn'
      AND u."calleInicio"    = 'Lazo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Galo Gonzalez', '30 de Octubre', '2 de Abril', -33.48718768, -70.676012558, 239
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '30 De Octubre' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Galo Gonzalez'
      AND u."calleInicio"    = '30 de Octubre'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Manuel Errázuriz', 'Melinka', 'Carelmapu', -33.503859469, -70.674690383, 233
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Davila' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Manuel Errázuriz'
      AND u."calleInicio"    = 'Melinka'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pintor de La Fuente', 'Departamental', 'Bombero Ossandón', -33.494085796, -70.68150241, 258
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Villa Sur' AND c.nombre = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pintor de La Fuente'
      AND u."calleInicio"    = 'Departamental'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Manuel Gonzalez', 'Avda. Bernardo O''Higgins', 'José Luis Lira', -33.604226879, -70.853398931, 72
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Malloco' AND c.nombre = 'Peñaflor'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Manuel Gonzalez'
      AND u."calleInicio"    = 'Avda. Bernardo O''Higgins'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Troncal', 'Isabel La Católica', 'Trebunleo', -33.604475619, -70.863348008, 108
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Praderas' AND c.nombre = 'Peñaflor'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Troncal'
      AND u."calleInicio"    = 'Isabel La Católica'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Basterrica', 'Vicuña Mackenna', 'Calle Dos', -33.612381191, -70.901271852, 108
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Nueva Peñaflor' AND c.nombre = 'Peñaflor'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Basterrica'
      AND u."calleInicio"    = 'Vicuña Mackenna'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Malloquito', 'Progreso', 'Francisco Bilbao', -33.603965082, -70.880685192, 288
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Copa' AND c.nombre = 'Peñaflor'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Malloquito'
      AND u."calleInicio"    = 'Progreso'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Vicuña Mackenna', 'Concepción', 'Rubén Darío', -33.610415661, -70.871758987, 177
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Castillo' AND c.nombre = 'Peñaflor'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Vicuña Mackenna'
      AND u."calleInicio"    = 'Concepción'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Consistorial', 'Tagua Tagua', 'Las Parcelas', -33.472701105, -70.541900298, 83
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Palena' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Consistorial'
      AND u."calleInicio"    = 'Tagua Tagua'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. José Arrieta', 'Calle Diego Rojas', 'Avda. Tobalaba', -33.462713083, -70.554634503, 97
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'José Arrieta' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. José Arrieta'
      AND u."calleInicio"    = 'Calle Diego Rojas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Las Torres', 'Pje. 465', 'Pje. 461', -33.50365538, -70.569218894, 56
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Torres' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Las Torres'
      AND u."calleInicio"    = 'Pje. 465'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Caracas', 'Los Presidentes', 'Bolivar', -33.482174156, -70.567279784, 102
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Presidentes' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Caracas'
      AND u."calleInicio"    = 'Los Presidentes'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Departamental', 'Los Talladores', 'Los Cerezos', -33.510752133, -70.572841309, 305
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Departamental' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Departamental'
      AND u."calleInicio"    = 'Los Talladores'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Valle', 'Afluente', 'Caracas', -33.477690642, -70.566990995, 77
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Parral' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Valle'
      AND u."calleInicio"    = 'Afluente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Horacio Toro', 'Los Salesianos', 'San Luis de Macul', -33.503993634, -70.584960123, 111
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Mares' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Horacio Toro'
      AND u."calleInicio"    = 'Los Salesianos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ictinos', 'Grecia', 'Los Orientales', -33.469363643, -70.561873513, 223
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ictinos' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ictinos'
      AND u."calleInicio"    = 'Grecia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Frontera', 'El Valle', 'Mitad de Cuadra', -33.475284568, -70.573060612, 14
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Juan Pablo Ii' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Frontera'
      AND u."calleInicio"    = 'El Valle'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Perdices', 'Baquedano', 'Roca Viva', -33.472221059, -70.531385441, 65
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Perdices' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Perdices'
      AND u."calleInicio"    = 'Baquedano'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Molineros', 'Grecia', 'Laura Rodriguez', -33.469192627, -70.567988948, 168
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Molineros' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Molineros'
      AND u."calleInicio"    = 'Grecia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Luis de Macul', 'Arrieros', 'Talladores', -33.507794883, -70.568205601, 24
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Modulos De San Luis' AND c.nombre = 'Peñalolen'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Luis de Macul'
      AND u."calleInicio"    = 'Arrieros'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Caupolicán', 'Santa Isabel', 'Miguel Claro', -33.446431794, -70.616226558, 15
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Isabel' AND c.nombre = 'Providencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Caupolicán'
      AND u."calleInicio"    = 'Santa Isabel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Concilios', 'Renato Zanelli', 'Pedro Navia', -33.441640417, -70.59333648, 27
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Concilios' AND c.nombre = 'Providencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Concilios'
      AND u."calleInicio"    = 'Renato Zanelli'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santa María', 'Calle del Arzobispo', 'Los Piñones', -33.430544357, -70.625367638, 42
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Maria' AND c.nombre = 'Providencia'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santa María'
      AND u."calleInicio"    = 'Calle del Arzobispo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. El Canal', 'Las Flores', 'Camino Lo Aguirre Sur', -33.453372111, -70.852848745, 27
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ciudad De Los Valles' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. El Canal'
      AND u."calleInicio"    = 'Las Flores'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. La Travesía', 'La Estrella', 'Río Napo', -33.454942744, -70.755937552, 445
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Travesia 2' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. La Travesía'
      AND u."calleInicio"    = 'La Estrella'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. La Travesía', 'Teniente Cruz', 'Jorge Prats', -33.457293744, -70.743129385, 476
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Centenario' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. La Travesía'
      AND u."calleInicio"    = 'Teniente Cruz'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Camino Noviciado', 'Simón Bolivar', 'Camino Noviciado', -33.400294456, -70.85237669, 27
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Simon Bolivar' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Camino Noviciado'
      AND u."calleInicio"    = 'Simón Bolivar'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Corona Sueca', 'Los Ediles', 'La Estrella', -33.447549573, -70.749304151, 242
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Santa Corina' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Corona Sueca'
      AND u."calleInicio"    = 'Los Ediles'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Estero', 'Los Portones', 'Camino Renca Lampa', -33.386464795, -70.819231756, 27
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Estero' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Estero'
      AND u."calleInicio"    = 'Los Portones'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Federico Errázuriz', 'La Estrella', 'Corona Sueca', -33.448297293, -70.755810932, 194
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Morros' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Federico Errázuriz'
      AND u."calleInicio"    = 'La Estrella'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'José Joaquín Pérez', 'La Estrella', 'Mar Caribe', -33.43080458, -70.746130874, 437
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Anillo' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'José Joaquín Pérez'
      AND u."calleInicio"    = 'La Estrella'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Estrella Sur', 'Laguna Sur', 'Los Mares', -33.462767208, -70.752838145, 407
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Estrella Sur' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Estrella Sur'
      AND u."calleInicio"    = 'Laguna Sur'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Serrano', 'San Daniel', 'Federico Errázuriz', -33.431802279, -70.765969524, 406
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Serrano' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Serrano'
      AND u."calleInicio"    = 'San Daniel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Teniente Cruz', 'Ricardo Vial', 'San Francisco', -33.439214857, -70.740712075, 277
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Teniente Cruz' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Teniente Cruz'
      AND u."calleInicio"    = 'Ricardo Vial'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Victoria', 'San Pablo', 'San Francisco', -33.43934629, -70.758212761, 472
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Victoria' AND c.nombre = 'Pudahuel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Victoria'
      AND u."calleInicio"    = 'San Pablo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Angel Pimentel', 'Nonato Coo', 'Chayavientos', -33.588640832, -70.569323973, 130
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chacareros' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Angel Pimentel'
      AND u."calleInicio"    = 'Nonato Coo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Arturo Prat', 'Argentina', 'Ejército Libertador', -33.615423274, -70.585879531, 279
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Arturo Prat'
      AND u."calleInicio"    = 'Argentina'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. El Peral', 'México', 'Avda. Las Nieves Oriente', -33.572250756, -70.563435086, 205
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. El Peral'
      AND u."calleInicio"    = 'México'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Laja', 'Circunvalación', 'Puntilla', -33.615837606, -70.565866735, 123
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Casas Viejas' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Laja'
      AND u."calleInicio"    = 'Circunvalación'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Los Toros', 'Nonato Coo', 'México', -33.567778326, -70.56964176, 197
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chacareros' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Los Toros'
      AND u."calleInicio"    = 'Nonato Coo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. México', 'Los Toros', 'Bahía Inglesa', -33.565054962, -70.567340838, 210
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. México'
      AND u."calleInicio"    = 'Los Toros'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Buin', 'Punta Blanca', 'El Abanico', -33.582614506, -70.554631995, 205
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Buin'
      AND u."calleInicio"    = 'Punta Blanca'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Concha y Toro', 'Elisa Correa', 'Pedro Lira', -33.569440374, -70.583992722, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Concha y Toro'
      AND u."calleInicio"    = 'Elisa Correa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Coquimbo', 'Avda. Gabriela Poniente', 'Júpiter', -33.579347059, -70.587479771, 254
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ulises' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Coquimbo'
      AND u."calleInicio"    = 'Avda. Gabriela Poniente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Creta', 'Sagasca', 'Gabriela Poniente', -33.583969027, -70.601926914, 150
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Creta'
      AND u."calleInicio"    = 'Sagasca'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Curaco de Vélez', 'Quitalmahue', '25 Mts. al oriente de Ancud', -33.625903967, -70.625348584, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bajos De Mena' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Curaco de Vélez'
      AND u."calleInicio"    = 'Quitalmahue'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Domingo Tocornal', 'Nonato Coo', 'Calle Uno', -33.60117065, -70.562821498, 192
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Esfuerzo' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Domingo Tocornal'
      AND u."calleInicio"    = 'Nonato Coo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Eduardo Cordero', 'Santa Elena', 'Alerce', -33.605093853, -70.570205287, 330
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Eduardo Cordero'
      AND u."calleInicio"    = 'Santa Elena'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ejército Libertador', 'Eyzaguirre', 'Los Comendadores', -33.61794547, -70.5907417, 318
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ejército Libertador'
      AND u."calleInicio"    = 'Eyzaguirre'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ejército Libertador', 'Luis Matte', 'Miguel Ángel', -33.585504989, -70.597067416, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Luis Matte N° 3' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ejército Libertador'
      AND u."calleInicio"    = 'Luis Matte'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Peñón', 'Troncal San Francisco', 'Valle Central', -33.580156664, -70.573352574, 205
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Peñón'
      AND u."calleInicio"    = 'Troncal San Francisco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Peral', 'Nonato Coo', 'El Hidalgo', -33.571543799, -70.573990802, 130
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chacareros' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Peral'
      AND u."calleInicio"    = 'Nonato Coo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Volcán', 'Los Pinos', 'El Llano', -33.609869031, -70.522170036, 61
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Casas Viejas' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Volcán'
      AND u."calleInicio"    = 'Los Pinos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Juan de Dios Malebran', 'Ernesto Alvear', 'Domingo Tocornal', -33.606886779, -70.587230004, 273
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Juan de Dios Malebran'
      AND u."calleInicio"    = 'Ernesto Alvear'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Colonia', 'Las Achiras', 'Camino Internaciónal', -33.629429157, -70.58725303, 71
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Marta Brunet' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Colonia'
      AND u."calleInicio"    = 'Las Achiras'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Nieves', 'El Peñon', '65 Mts. al sur de Luis Matte', -33.582347307, -70.558128246, 216
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Nieves'
      AND u."calleInicio"    = 'El Peñon'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Nieves Oriente', 'Gabriela Oriente', 'El Peñon', -33.577620963, -70.559335874, 194
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chacareros' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Nieves Oriente'
      AND u."calleInicio"    = 'Gabriela Oriente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Nieves Oriente', 'San Juan', 'Los Maillines', -33.593677276, -70.573011651, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Nieves Oriente'
      AND u."calleInicio"    = 'San Juan'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Luis Matte', 'Creta', 'Canal Montino', -33.588551257, -70.603410659, 99
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Luis Matte N° 2' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Luis Matte'
      AND u."calleInicio"    = 'Creta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Miguel Angel', 'Ejército Libertador', 'Juliuo César', -33.584012715, -70.600601177, 170
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Miguel Angel'
      AND u."calleInicio"    = 'Ejército Libertador'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Nemesio Vicuña', 'Las Nieves', 'Huepil', -33.591438776, -70.573528972, 77
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Nemesio Vicuña'
      AND u."calleInicio"    = 'Las Nieves'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Nocedal', 'Domingo Tocornal', 'Del Huerto', -33.607206952, -70.597177338, 92
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Nocedal'
      AND u."calleInicio"    = 'Domingo Tocornal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pie Andino', 'Eyzaguirre', 'Luis Carrasco O.', -33.610685514, -70.550424604, 62
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Casas Viejas' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pie Andino'
      AND u."calleInicio"    = 'Eyzaguirre'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Punta Blanca', 'Buin', 'El Barquito', -33.583264956, -70.553863827, 92
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Punta Blanca'
      AND u."calleInicio"    = 'Buin'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Quitalmahue', 'San Pedro', 'Curaco de Vélez', -33.6278438, -70.624553505, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bajos De Mena' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Quitalmahue'
      AND u."calleInicio"    = 'San Pedro'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Rio Las Leñas', 'Rio Yeso', 'Rio Volcán', -33.615066338, -70.622952365, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Luis Matte Río Las Leñas' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Rio Las Leñas'
      AND u."calleInicio"    = 'Rio Yeso'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Pedro', 'Juanita', 'Estación Quilacoya', -33.628123888, -70.615325446, 280
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bajos De Mena' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Pedro'
      AND u."calleInicio"    = 'Juanita'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Sánchez Fontecilla', 'Diego Portales', 'Los Viñedos', -33.560408286, -70.552518394, 66
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Casas Viejas' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Sánchez Fontecilla'
      AND u."calleInicio"    = 'Diego Portales'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Sargento Menadier', 'Estación Ignao', 'Estrella Polar', -33.620722694, -70.60998856, 281
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bajos De Mena' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Sargento Menadier'
      AND u."calleInicio"    = 'Estación Ignao'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Tocornal Grez', 'Circunvalación', 'Abate Molina', -33.618869358, -70.577548986, 30
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Tocornal Grez'
      AND u."calleInicio"    = 'Circunvalación'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Tomé', 'Los Loros', 'Bombero Mario Clavero', -33.613143923, -70.555123142, 68
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Casas Viejas' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Tomé'
      AND u."calleInicio"    = 'Los Loros'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Troncal San Francisco', '4 Oriente', 'Los Cipreses', -33.570135174, -70.60974957, 90
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Luis Matte Troncal' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Troncal San Francisco'
      AND u."calleInicio"    = '4 Oriente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Troncal San Francisco', 'Valle Central', 'Nonato Coo', -33.580109476, -70.571124002, 230
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Troncal San Francisco'
      AND u."calleInicio"    = 'Valle Central'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Uruguay', 'San Pedro', 'Circunvalación', -33.621785579, -70.580729643, 58
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Casas Viejas' AND c.nombre = 'Puente Alto'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Uruguay'
      AND u."calleInicio"    = 'San Pedro'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Cruzat', 'Salvador de Bahía', 'Roma', -33.352809633, -70.720625138, 112
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cruzat' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Cruzat'
      AND u."calleInicio"    = 'Salvador de Bahía'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Estadio Trasandino', 'Santa Luisa', 'Estadio Federico Schwager', -33.348818661, -70.739315223, 112
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Estadio Trasandino' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Estadio Trasandino'
      AND u."calleInicio"    = 'Santa Luisa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Parcelas', 'Cuatro Oriente', 'Matta', -33.367609402, -70.714050373, 78
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Parcelas' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Parcelas'
      AND u."calleInicio"    = 'Cuatro Oriente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Torres', 'Filomena Gárate', 'Ramón Rosales', -33.371084795, -70.72168811, 93
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Torres' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Torres'
      AND u."calleInicio"    = 'Filomena Gárate'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Torres', 'Pedro Riveros', 'Condominio Campo Lindo', -33.37753132, -70.725858379, 200
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Pedro Riveros' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Torres'
      AND u."calleInicio"    = 'Pedro Riveros'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lo Marcoleta', 'Africa', 'Brasil', -33.359450476, -70.742746421, 146
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Tres Montes' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lo Marcoleta'
      AND u."calleInicio"    = 'Africa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lo Marcoleta', 'O''Higgins', 'Lo Ovalle', -33.357870689, -70.731587991, 98
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lo Marcoleta' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lo Marcoleta'
      AND u."calleInicio"    = 'O''Higgins'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lo Marcoleta', 'Puerto Antofagasta', 'San Luis', -33.361461807, -70.751839729, 200
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lo Marcoleta 1' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lo Marcoleta'
      AND u."calleInicio"    = 'Puerto Antofagasta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lo Marcoleta', 'San Gabriel', 'San Andrés', -33.35701457, -70.716966131, 88
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Hermanos Carrera' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lo Marcoleta'
      AND u."calleInicio"    = 'San Gabriel'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Alpes', 'Kilimanjaro', 'Cerro Méditerraneo', -33.351798461, -70.744027217, 88
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Kilimanjaro' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Alpes'
      AND u."calleInicio"    = 'Kilimanjaro'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'O''Higgins', 'Leticia', 'Ana Frank', -33.361608769, -70.729505052, 173
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bernardo O''Higgins' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'O''Higgins'
      AND u."calleInicio"    = 'Leticia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Enrique', 'Matta', 'Estero Nifre', -33.363294335, -70.74323034, 159
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Enrique' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Enrique'
      AND u."calleInicio"    = 'Matta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Torres', 'San Luis', 'Las Violetas', -33.36749282, -70.743288883, 131
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Violetas' AND c.nombre = 'Quilicura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Torres'
      AND u."calleInicio"    = 'San Luis'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Alberdi', 'Mapocho', 'Janequeo', -33.428655591, -70.712846135, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Alberdi N° 2' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Alberdi'
      AND u."calleInicio"    = 'Mapocho'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Alberdi', 'Salvador Gutierrez', 'Prof Fuentes Maturana', -33.421537967, -70.71082981, 126
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 3 Alberdi' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Alberdi'
      AND u."calleInicio"    = 'Salvador Gutierrez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Alsino', 'Radal', 'Bombero Roberts', -33.425656082, -70.706034778, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Alsino' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Alsino'
      AND u."calleInicio"    = 'Radal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Augusto Matte', 'Juan de Barros', 'Claudio Vicuña', -33.428198585, -70.690754023, 201
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 1 La Plata' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Augusto Matte'
      AND u."calleInicio"    = 'Juan de Barros'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Tránsito', 'Neptuno', 'Venus', -33.433866991, -70.718001404, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 2 Transito' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Tránsito'
      AND u."calleInicio"    = 'Neptuno'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Edison', 'Radal', 'Antonio Ebner', -33.437933698, -70.699781374, 201
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Edison' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Edison'
      AND u."calleInicio"    = 'Radal'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Eduardo Charme', 'José Joaquín Pérez', 'Vicuña Rozas', -33.433710603, -70.701283001, 126
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Eduardo Charme' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Eduardo Charme'
      AND u."calleInicio"    = 'José Joaquín Pérez'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Francisco Javier', 'Nueva Imperial', 'Alberto Edwards', -33.445464679, -70.693403107, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Francisco Javier' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Francisco Javier'
      AND u."calleInicio"    = 'Nueva Imperial'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'José Beza', 'San Pablo', 'Vicuña Rozas', -33.438475096, -70.705461017, 201
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 1 Jose Besa' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'José Beza'
      AND u."calleInicio"    = 'San Pablo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'José Tobias', 'Doctor Ottolenghi', 'Los Sauces', -33.416596968, -70.699090031, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 2 Quinta Normal, Jose Tobias' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'José Tobias'
      AND u."calleInicio"    = 'Doctor Ottolenghi'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lope de Ulloa', 'Mapocho', 'Claudio Vicuña', -33.429369513, -70.68907796, 201
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 1 Lope De Ulloa' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lope de Ulloa'
      AND u."calleInicio"    = 'Mapocho'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Sauces', 'La Rioja', 'Lo Espinoza', -33.413911646, -70.707055001, 126
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 3 Los Sauces' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Sauces'
      AND u."calleInicio"    = 'La Rioja'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Marcelo Fitte', 'Miguel de Atero', 'Aviador Bleriot', -33.417407439, -70.697935212, 174
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Marcelo Fitte' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Marcelo Fitte'
      AND u."calleInicio"    = 'Miguel de Atero'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Mercurio', 'Camino de Loyola', 'Tránsito', -33.435782433, -70.716722942, 126
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mercurio' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Mercurio'
      AND u."calleInicio"    = 'Camino de Loyola'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Gumercindo', 'Nueva Imperial', 'Porto Seguro', -33.446399367, -70.694701097, 201
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Gumercindo' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Gumercindo'
      AND u."calleInicio"    = 'Nueva Imperial'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Victorino Laynez', 'Nueva Imperial', 'Catedral', -33.44286876, -70.697968387, 201
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Victorino Laynez' AND c.nombre = 'Quinta Normal'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Victorino Laynez'
      AND u."calleInicio"    = 'Nueva Imperial'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Einstein', 'Gabriela Mistral', 'Pje. José Miguel Carrera', -33.406426444, -70.629256689, 77
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Einstein' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Einstein'
      AND u."calleInicio"    = 'Gabriela Mistral'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. El Guanaco', 'Avda. Einstein', 'Avda. México', -33.404119928, -70.65744942, 77
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Guanaco' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. El Guanaco'
      AND u."calleInicio"    = 'Avda. Einstein'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. La Serena', 'Recoleta', 'Plata', -33.395198799, -70.646945379, 457
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Serena' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. La Serena'
      AND u."calleInicio"    = 'Recoleta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Einstein', 'Coronel del Canto', 'Aurelio Diaz', -33.405561482, -70.638097242, 295
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Einstein Poniente' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Einstein'
      AND u."calleInicio"    = 'Coronel del Canto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Roble', 'Coronel del Canto', 'Campino', -33.404848089, -70.639128031, 170
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chacabuco Grande' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Roble'
      AND u."calleInicio"    = 'Coronel del Canto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Raquel', 'Recoleta', 'María del Pilar', -33.400598571, -70.640530599, 189
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Raquel' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Raquel'
      AND u."calleInicio"    = 'Recoleta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Reina de Chile', 'Reina de Chile', 'Colombia', -33.402072742, -70.627364332, 209
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'N° 9 Heroes De La Concepcion' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Reina de Chile'
      AND u."calleInicio"    = 'Reina de Chile'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San José', 'Zapadores', 'Enrique Donoso', -33.39693798, -70.630753619, 211
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San José' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San José'
      AND u."calleInicio"    = 'Zapadores'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Valdivieso', '8 Norte', 'Adrián Miranda', -33.411337024, -70.629278782, 108
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Valdivieso' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Valdivieso'
      AND u."calleInicio"    = '8 Norte'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Zapadores', 'Avda. Recoleta', 'Avda. Rancagua', -33.390216835, -70.643856905, 130
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Zapadores' AND c.nombre = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Zapadores'
      AND u."calleInicio"    = 'Avda. Recoleta'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Condell', 'Topocalma', 'Avda. José Miguel Infante', -33.407785158, -70.726032052, 234
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Condell' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Condell'
      AND u."calleInicio"    = 'Topocalma'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Barros Arana', 'José Santiago Aldunate', 'Antonio Maceo', -33.414330803, -70.686227196, 83
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Bulnes' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Barros Arana'
      AND u."calleInicio"    = 'José Santiago Aldunate'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Colo Colo', 'General Freire', 'Arturo Prat', -33.402887026, -70.725630032, 247
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Colo Colo' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Colo Colo'
      AND u."calleInicio"    = 'General Freire'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Diego Portales', 'Montt Varas', 'Javiera Carrera Pinto', -33.401427327, -70.711274779, 22
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Lourdes' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Diego Portales'
      AND u."calleInicio"    = 'Montt Varas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'José Manuel Balmaceda', 'Caupolicán', 'Loica', -33.403256614, -70.69991543, 91
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Balmaceda' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'José Manuel Balmaceda'
      AND u."calleInicio"    = 'Caupolicán'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Las Margaritas', 'Puerto Montt', 'Lima', -33.394821532, -70.698063914, 98
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Margaritas' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Las Margaritas'
      AND u."calleInicio"    = 'Puerto Montt'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Acacios', 'Los Aromos', 'Pje. Rubi', -33.406153925, -70.691866226, 243
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Acacios' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Acacios'
      AND u."calleInicio"    = 'Los Aromos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Clarines', 'Las Margaritas', 'Avda. Dorsal', -33.399537041, -70.700134162, 98
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Los Clarines' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Clarines'
      AND u."calleInicio"    = 'Las Margaritas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Manuel Rodríguez', 'Río Huasco', 'Río Elqui', -33.395703868, -70.723358704, 27
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manuel Rodriguez' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Manuel Rodríguez'
      AND u."calleInicio"    = 'Río Huasco'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Miraflores', 'Vicuña Mackenna', 'Emilio Pacull', -33.402536526, -70.747315496, 317
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Miraflores' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Miraflores'
      AND u."calleInicio"    = 'Vicuña Mackenna'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Nicanor Fajardo', 'Domingo Santa María', 'Avda. Costanera', -33.405812583, -70.709038763, 140
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chilectra' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Nicanor Fajardo'
      AND u."calleInicio"    = 'Domingo Santa María'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pelluhue', 'José Manuel Infante', 'Topocalma', -33.408424265, -70.734394909, 162
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Pelluhue' AND c.nombre = 'Renca'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pelluhue'
      AND u."calleInicio"    = 'José Manuel Infante'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Antonio Varas', 'Baquedano', 'José Besa', -33.596462865, -70.695344254, 261
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Antonio Varas' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Antonio Varas'
      AND u."calleInicio"    = 'Baquedano'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Balmaceda', 'Cerro Bandera', 'Santa Mercedes', -33.594820914, -70.67510083, 243
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Manzano' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Balmaceda'
      AND u."calleInicio"    = 'Cerro Bandera'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Balmaceda', 'Martín de Solís', 'Diego de Medellín', -33.590966373, -70.685117325, 248
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Manzano' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Balmaceda'
      AND u."calleInicio"    = 'Martín de Solís'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Costanera', 'Avda. Colón', 'Covadonga', -33.590845448, -70.711116565, 216
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Costanera' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Costanera'
      AND u."calleInicio"    = 'Avda. Colón'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Francisco de Camargo', 'Calderon de La Barca', 'Santa Marta', -33.583959219, -70.688085588, 308
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Olivo' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Francisco de Camargo'
      AND u."calleInicio"    = 'Calderon de La Barca'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Lo Blanco', 'Paso Drake', 'Santa Mercedes', -33.583858114, -70.670168592, 201
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'El Manzano' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Lo Blanco'
      AND u."calleInicio"    = 'Paso Drake'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ramón Liborio Carvallo', 'Barros Arana', 'Victoria', -33.606771878, -70.705306939, 167
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Carvallo' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ramón Liborio Carvallo'
      AND u."calleInicio"    = 'Barros Arana'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Yungay', 'América', 'Santiago Mac Lean', -33.578992709, -70.704800585, 216
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Yungay' AND c.nombre = 'San Bernardo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Yungay'
      AND u."calleInicio"    = 'América'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Maríano Puga', 'Alcalde Pedro Alarcon', 'Juegos Infantiles', -33.488800641, -70.633088666, 448
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Legua' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Maríano Puga'
      AND u."calleInicio"    = 'Alcalde Pedro Alarcon'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Comercio', 'San Juan', 'Avda. Central', -33.494072993, -70.621219063, 195
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Juan' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Comercio'
      AND u."calleInicio"    = 'San Juan'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Gaspar de Soto', 'San Gregorio', 'Santa Rosa', -33.496398231, -70.638365366, 72
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Gaspar De Soto' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Gaspar de Soto'
      AND u."calleInicio"    = 'San Gregorio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Juan Sebastian Bach', 'Liszt', 'Lira', -33.479955819, -70.627261294, 284
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Poblacion Chile' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Juan Sebastian Bach'
      AND u."calleInicio"    = 'Liszt'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Nicolas', 'Santa Rosa', 'Las Industrias', -33.502203305, -70.633195242, 450
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mussa' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Nicolas'
      AND u."calleInicio"    = 'Santa Rosa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Sebastopol', 'Santa Rosa', 'Latinoamerica', -33.516601049, -70.632417817, 126
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Castrina' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Sebastopol'
      AND u."calleInicio"    = 'Santa Rosa'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Tocornal', 'Isabel Riquelme', 'Carlos Fernandez', -33.477461415, -70.632892903, 134
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Navarrete' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Tocornal'
      AND u."calleInicio"    = 'Isabel Riquelme'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Vecinal', 'Departamental', 'Lo Ovalle', -33.511283738, -70.622584866, 225
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Las Industrias' AND c.nombre = 'San Joaquín'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Vecinal'
      AND u."calleInicio"    = 'Departamental'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. del Río', 'Inmaculada', 'Dos Sur', -33.640680703, -70.354368295, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Agrupacion San Jose' AND c.nombre = 'San José De Maipo'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. del Río'
      AND u."calleInicio"    = 'Inmaculada'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Chiloé', 'Varas Mena', 'Departamental', -33.50825352, -70.646719607, 272
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Chiloe' AND c.nombre = 'San Miguel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Chiloé'
      AND u."calleInicio"    = 'Varas Mena'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Miguel Luis Cerda', 'Varas Mena', 'Miguel León Prado', -33.508339747, -70.649279819, 184
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Carmen Mena' AND c.nombre = 'San Miguel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Miguel Luis Cerda'
      AND u."calleInicio"    = 'Varas Mena'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Quinta Transversal', 'Sexta Avenida', 'Octava Avenida', -33.507364269, -70.667609333, 115
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Atacama' AND c.nombre = 'San Miguel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Quinta Transversal'
      AND u."calleInicio"    = 'Sexta Avenida'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Francisco', 'Alvarez de Toledo', 'María Auxiliadora', -33.490082103, -70.644576819, 164
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Salesianos' AND c.nombre = 'San Miguel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Francisco'
      AND u."calleInicio"    = 'Alvarez de Toledo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Soto Aguilar', 'San Ignacio', 'Barros Luco', -33.485839678, -70.656452407, 134
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Soto Aguilar' AND c.nombre = 'San Miguel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Soto Aguilar'
      AND u."calleInicio"    = 'San Ignacio'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Tristán Matta', 'Gauss', 'José Joaquín Prieto', -33.500440495, -70.662606978, 180
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Tristan Matta' AND c.nombre = 'San Miguel'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Tristán Matta'
      AND u."calleInicio"    = 'Gauss'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Alpatacal', 'Pedro Aguirre Cerda', 'Almirante Latorre', -33.546588329, -70.640096068, 435
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Alpatacal' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Alpatacal'
      AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Alvear', 'Avda. Fernandez Albano', 'Santa Ana', -33.52559711, -70.643915468, 134
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Blanca' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Alvear'
      AND u."calleInicio"    = 'Avda. Fernandez Albano'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Bolivia', 'Pedro Aguirre Cerda', 'Carlos Dávila', -33.539457421, -70.639620856, 300
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Libertad/Bolivia' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Bolivia'
      AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'El Parrón', 'Carlos Davila', 'Juan Luis Sanfuentes', -33.52960969, -70.6414568, 92
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Barros Lucos' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'El Parrón'
      AND u."calleInicio"    = 'Carlos Davila'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Elias Fernandez', 'Paraguay', 'Bolivia', -33.535853144, -70.648190904, 102
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Fernandez Albano' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Elias Fernandez'
      AND u."calleInicio"    = 'Paraguay'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'La Bandera', 'Vicuña Mackenna', 'Esperanza', -33.548989917, -70.645991035, 254
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'La Bandera' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'La Bandera'
      AND u."calleInicio"    = 'Vicuña Mackenna'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Mayo', 'Rivadavia', 'Alvear', -33.520702404, -70.641316483, 106
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Mayo' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Mayo'
      AND u."calleInicio"    = 'Rivadavia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Sargento Candelaria', 'Juan Antonio Rios', 'Pedro Aguirre Cerda', -33.555241282, -70.64037046, 438
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Sargento Candelaria' AND c.nombre = 'San Ramón'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Sargento Candelaria'
      AND u."calleInicio"    = 'Juan Antonio Rios'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Aldunate', 'Copiapó', 'Coquimbo', -33.456905728, -70.654683554, 58
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Aldunate' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Aldunate'
      AND u."calleInicio"    = 'Copiapó'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Diez de Julio', 'Vicuña Mackenna', 'Portugal', -33.451689305, -70.632711894, 138
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = '10 De Julio' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Diez de Julio'
      AND u."calleInicio"    = 'Vicuña Mackenna'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Portales', 'Libertad', 'Maipú', -33.443133668, -70.675158827, 63
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Portales' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Portales'
      AND u."calleInicio"    = 'Libertad'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Coquimbo', 'Nueva de Váldes', 'Lincoyan Berrios', -33.456380308, -70.64675645, 133
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Coquimbo' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Coquimbo'
      AND u."calleInicio"    = 'Nueva de Váldes'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Esperanza', 'Portales', 'Erasmo Escala', -33.444557661, -70.675233196, 155
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Esperanza' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Esperanza'
      AND u."calleInicio"    = 'Portales'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Fray San Camilo', 'Argomedo', 'Marin', -33.4476114, -70.634548166, 205
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Camilo' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Fray San Camilo'
      AND u."calleInicio"    = 'Argomedo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Gaspar de La Barrera', 'Longaví', 'Camino a Melipilla', -33.467203821, -70.67494639, 76
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Gaspar De La Barrera' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Gaspar de La Barrera'
      AND u."calleInicio"    = 'Longaví'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Herrera', 'San Pablo', 'Mapocho', -33.434170487, -70.678276394, 114
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Herrera' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Herrera'
      AND u."calleInicio"    = 'San Pablo'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Martínez de Rozas', 'Ricardo Cummings', 'Avda. Brasil', -33.433639372, -70.666958338, 165
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Martinez De Rozas' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Martínez de Rozas'
      AND u."calleInicio"    = 'Ricardo Cummings'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pedro Lagos', 'Lira', 'Carmen', -33.46429553, -70.636040796, 95
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Pedro Lagos' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pedro Lagos'
      AND u."calleInicio"    = 'Lira'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Roberto Espinoza', 'Victoria', 'Pedro Lagos', -33.465231346, -70.651797206, 59
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Roberto Espinoza' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Roberto Espinoza'
      AND u."calleInicio"    = 'Victoria'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Romero', 'C. Villarín', 'Libertad', -33.447505366, -70.672405993, 91
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Romero' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Romero'
      AND u."calleInicio"    = 'C. Villarín'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'San Agustín', 'Bascuñan', 'Francisco Pizarro', -33.474388519, -70.670951517, 33
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'San Agustin' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'San Agustín'
      AND u."calleInicio"    = 'Bascuñan'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Santo Domingo', 'Teatinos', ' ', -33.437020211, -70.655196761, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Plaza De Bolsillo Santo Domingo' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Santo Domingo'
      AND u."calleInicio"    = 'Teatinos'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Ventura Lavalle', 'Cuevas', 'Lira', -33.458294192, -70.635090156, 76
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Ventura Lavalle' AND c.nombre = 'Santiago'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Ventura Lavalle'
      AND u."calleInicio"    = 'Cuevas'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. San Martín', 'Esq. Volcán Hudson', 'Villa Puertas del Sol', -33.654162742, -70.910964821, 65
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cordillera 4' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. San Martín'
      AND u."calleInicio"    = 'Esq. Volcán Hudson'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Calle Bombero Avilés', 'Esmeralda', 'Julio Vrancken', -33.671473485, -70.93773758, 10
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Libre Villa Las Hortensias' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Calle Bombero Avilés'
      AND u."calleInicio"    = 'Esmeralda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Enrique Herrera', 'Esmeralda', 'Pje. Ancud', -33.661832067, -70.919491968, 3
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Libre Tocornal' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Enrique Herrera'
      AND u."calleInicio"    = 'Esmeralda'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Francisco Chacón', 'Enrique Alcalde', 'Domingo Toro Herrera', -33.662256358, -70.930083201, 131
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Francisco Chacón' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Francisco Chacón'
      AND u."calleInicio"    = 'Enrique Alcalde'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Juana Canales', 'Fresia', 'Tegualda', -33.677448938, -70.948754484, 8
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Clara Solovera' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Juana Canales'
      AND u."calleInicio"    = 'Fresia'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Aromos', 'Uno Oriente', ' ', -33.655141115, -70.905782794, 65
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cordillera 1' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Aromos'
      AND u."calleInicio"    = 'Uno Oriente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Los Aromos', 'Uno Oriente', ' ', -33.655096032, -70.905822694, 65
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cordillera 6' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Los Aromos'
      AND u."calleInicio"    = 'Uno Oriente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pje. Julio Castro', 'Adrián Soto', 'Luis Jofré de Parque Trebulco', -33.664034495, -70.920124969, 65
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cordillera 2' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pje. Julio Castro'
      AND u."calleInicio"    = 'Adrián Soto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Pje. Julio Castro', 'Adrián Soto', 'Luis Jofré Pobl. Parque Trebulco', -33.66400819, -70.920156588, 65
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Cordillera 5' AND c.nombre = 'Talagante'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Pje. Julio Castro'
      AND u."calleInicio"    = 'Adrián Soto'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, '1 Sur', '2 Oriente', '3 Oriente', -33.132459955, -70.804545289, 36
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Feria Modelo Huertos Familiares' AND c.nombre = 'Tiltil'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = '1 Sur'
      AND u."calleInicio"    = '2 Oriente'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Monseñor Escrivá de Balaguer', 'Luis Carrera', ' ', -33.385475718, -70.591591391, 17
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Club De Polo' AND c.nombre = 'Vitacura'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Monseñor Escrivá de Balaguer'
      AND u."calleInicio"    = 'Luis Carrera'
  );

INSERT INTO ubicaciones ("feriaId", "callePrincipal", "calleInicio", "calleTermino", latitud, longitud, "numPuestos")
SELECT f.id, 'Avda. Chile', 'Juan Maisonave', 'Garibaldi', -33.230086, -70.809398, 70
FROM ferias f JOIN comunas c ON f."comunaId" = c.id
WHERE f.nombre = 'Poblacion Ines Bustos Ii' AND c.nombre = 'Lampa'
  AND NOT EXISTS (
    SELECT 1 FROM ubicaciones u
    WHERE u."feriaId" = f.id
      AND u."callePrincipal" = 'Avda. Chile'
      AND u."calleInicio"    = 'Juan Maisonave'
  );


-- 6. DIAS_FERIA 

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '19 De Agosto'
  AND c.nombre           = 'Alhué'
  AND u."callePrincipal" = '19 de Agosto'
  AND u."calleInicio"    = 'Bernardo O''Higgins'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '5 De Abril'
  AND c.nombre           = 'Alhué'
  AND u."callePrincipal" = '5 de Abril'
  AND u."calleInicio"    = 'Luis Cruz Martínez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Maitenes'
  AND c.nombre           = 'Alhué'
  AND u."callePrincipal" = 'Callejón Los Maitenes'
  AND u."calleInicio"    = 'Sector La Línea Villa Alhué'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valdivia De Paine'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Arturo Prat'
  AND u."calleInicio"    = 'Avda. Chile'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valdivia De Paine'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Arturo Prat'
  AND u."calleInicio"    = 'Avda. Chile'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valdivia De Paine'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Arturo Prat'
  AND u."calleInicio"    = 'Avda. Chile'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Garcia Maipo'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Calle Garcia'
  AND u."calleInicio"    = 'Calle General Carlos Prat'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Garcia Maipo'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Calle Garcia'
  AND u."calleInicio"    = 'Calle General Carlos Prat'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Garcia Maipo'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Calle Garcia'
  AND u."calleInicio"    = 'Calle General Carlos Prat'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Lo Espejo Alto Jahuel'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Calle Lo Espejo'
  AND u."calleInicio"    = 'Miraflores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Lo Espejo Alto Jahuel'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Calle Lo Espejo'
  AND u."calleInicio"    = 'Miraflores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Errazuriz'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Errázuriz'
  AND u."calleInicio"    = 'Avda. Manuel Rodriguez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Errazuriz'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Errázuriz'
  AND u."calleInicio"    = 'Avda. Manuel Rodriguez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Errazuriz'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Errázuriz'
  AND u."calleInicio"    = 'Avda. Manuel Rodriguez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Copahues'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Guardiamarina Riquelme'
  AND u."calleInicio"    = 'Capitán Orella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Jose Miguel Carrera Alto Jahuel'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Jacques Chonchol'
  AND u."calleInicio"    = 'Pje. Horacio Fernandez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Jose Miguel Carrera Alto Jahuel'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Jacques Chonchol'
  AND u."calleInicio"    = 'Pje. Horacio Fernandez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Coordinadora'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'La Coordinadora'
  AND u."calleInicio"    = 'La Marcha'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Coordinadora'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'La Coordinadora'
  AND u."calleInicio"    = 'La Marcha'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Lo Salinas'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Marta Ortiz'
  AND u."calleInicio"    = 'General Rafael Gualda Palma'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Lo Salinas'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Marta Ortiz'
  AND u."calleInicio"    = 'General Rafael Gualda Palma'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Gabriela'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'San Antonio'
  AND u."calleInicio"    = 'San Félix'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Linderos'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Teniente Merino'
  AND u."calleInicio"    = 'Francisco Javier Krugger'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Linderos'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Teniente Merino'
  AND u."calleInicio"    = 'Francisco Javier Krugger'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Linderos'
  AND c.nombre           = 'Buin'
  AND u."callePrincipal" = 'Teniente Merino'
  AND u."calleInicio"    = 'Francisco Javier Krugger'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Mexico'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = '5 de Abril'
  AND u."calleInicio"    = 'Reinosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Mexico'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = '5 de Abril'
  AND u."calleInicio"    = 'Reinosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo Aeropuerto'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Avda. Aeropuerto'
  AND u."calleInicio"    = 'Carriel Sur'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo Aeropuerto'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Avda. Aeropuerto'
  AND u."calleInicio"    = 'Carriel Sur'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Buzeta'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Avda. Cinco'
  AND u."calleInicio"    = 'Buzeta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Buzeta'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Avda. Cinco'
  AND u."calleInicio"    = 'Buzeta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Avda. Costanera Norte'
  AND u."calleInicio"    = 'Lo Errázuriz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Avda. Costanera Norte'
  AND u."calleInicio"    = 'Lo Errázuriz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Mirador'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Mirador'
  AND u."calleInicio"    = 'Divino Maestro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Mirador'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Mirador'
  AND u."calleInicio"    = 'Divino Maestro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lagos Palacios'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Pedro Lagos Palacios'
  AND u."calleInicio"    = 'Lo Errázuriz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lagos Palacios'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Pedro Lagos Palacios'
  AND u."calleInicio"    = 'Lo Errázuriz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Salomon Sack'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Salomon Sack'
  AND u."calleInicio"    = 'Los Lirios'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Salomon Sack'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Salomon Sack'
  AND u."calleInicio"    = 'Los Lirios'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Martin'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Santa Teresita'
  AND u."calleInicio"    = 'Santa Teresita'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Martin'
  AND c.nombre           = 'Cerrillos'
  AND u."callePrincipal" = 'Santa Teresita'
  AND u."calleInicio"    = 'Santa Teresita'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Loyola'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Camino de Loyola'
  AND u."calleInicio"    = 'Neptuno'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cauquenes'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Cauquenes'
  AND u."calleInicio"    = 'Lo López'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Capilla'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'La Capilla'
  AND u."calleInicio"    = 'Resbalón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Capilla'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'La Capilla'
  AND u."calleInicio"    = 'Resbalón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Vinita'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'La Estrella'
  AND u."calleInicio"    = 'Mapocho Sur'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Vinita'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'La Estrella'
  AND u."calleInicio"    = 'Mapocho Sur'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Sara Gajardo'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Lo López'
  AND u."calleInicio"    = 'Neptuno'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Sara Gajardo'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Lo López'
  AND u."calleInicio"    = 'Neptuno'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mapocho'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Mapocho (Bandejón Norte)'
  AND u."calleInicio"    = 'Huelén'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mar De Chile'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Río Douro Sur'
  AND u."calleInicio"    = 'Pje. Jorge Montt'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Salvador Gutierrez'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Salvador Gutierrez (Bandejón Norte)'
  AND u."calleInicio"    = '3 de Julio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Montijo'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Salvador Gutierrez (Bandejón Norte)'
  AND u."calleInicio"    = 'La Estrella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '16:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Roosevelt'
  AND c.nombre           = 'Cerro Navia'
  AND u."callePrincipal" = 'Tomas Alba Edison'
  AND u."calleInicio"    = 'Jorge Washington'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Esmeralda'
  AND c.nombre           = 'Colina'
  AND u."callePrincipal" = 'Apolo'
  AND u."calleInicio"    = 'Edwin Aldrin'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fermin Vergara'
  AND c.nombre           = 'Colina'
  AND u."callePrincipal" = 'Avda. Fermín Vergara'
  AND u."calleInicio"    = 'Calle Siete'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Francisco Flores Del Campo'
  AND c.nombre           = 'Colina'
  AND u."callePrincipal" = 'Francisco Flores del Campo'
  AND u."calleInicio"    = 'Ignacio Carrera Pinto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Labarca'
  AND c.nombre           = 'Colina'
  AND u."callePrincipal" = 'Labarca'
  AND u."calleInicio"    = 'San Alberto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Labarca'
  AND c.nombre           = 'Colina'
  AND u."callePrincipal" = 'Labarca'
  AND u."calleInicio"    = 'San Alberto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Roque Esteban Scarpa'
  AND c.nombre           = 'Colina'
  AND u."callePrincipal" = 'Roque Esteban Scarpa'
  AND u."calleInicio"    = 'José Donoso'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 4 Conchali'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Abraham Lincoln'
  AND u."calleInicio"    = 'El Cortijo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 1'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Alberto Gonzalez'
  AND u."calleInicio"    = 'Paula Jaraquemada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 4 Independencia'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Avda. Independencia (Caletera)'
  AND u."calleInicio"    = 'José María Caro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 2 Conchali'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Barón de Juras Reales'
  AND u."calleInicio"    = 'Olivo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Baron De Juras Reales'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Barón de Juras Reales'
  AND u."calleInicio"    = 'Parral'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 2 Conchali'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Calle Guanaco'
  AND u."calleInicio"    = 'Principal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cardenal Caro N° 1'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Cardenal Caro'
  AND u."calleInicio"    = 'Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Acacios'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Cardenal Caro'
  AND u."calleInicio"    = 'Los Acacios'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Nahuelbuta'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Nahuelbuta'
  AND u."calleInicio"    = 'Avda. Independencia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Nahuelbuta'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Nahuelbuta'
  AND u."calleInicio"    = 'Pedro Fontova'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Teniente Ponce'
  AND c.nombre           = 'Conchalí'
  AND u."callePrincipal" = 'Teniente Ponce'
  AND u."calleInicio"    = 'Manantiales'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cerrillos'
  AND c.nombre           = 'Curacaví'
  AND u."callePrincipal" = 'Avda. Cerrillos'
  AND u."calleInicio"    = 'Los Almácigos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Javiera Carrera'
  AND c.nombre           = 'Curacaví'
  AND u."callePrincipal" = 'Javiera Carrera'
  AND u."calleInicio"    = 'Cuyuncaví'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Presbitero Moraga'
  AND c.nombre           = 'Curacaví'
  AND u."callePrincipal" = 'Presbitero Moraga'
  AND u."calleInicio"    = 'Jorge Montt'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Covarrubias'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Avda. Julio Covarrubias'
  AND u."calleInicio"    = 'Los Aviadores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Covarrubias'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Avda. Julio Covarrubias'
  AND u."calleInicio"    = 'Los Aviadores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Camino Del Inca'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Camino del Inca'
  AND u."calleInicio"    = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Camino Del Inca'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Camino del Inca'
  AND u."calleInicio"    = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Capitan Avalos'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Capitán Avalos'
  AND u."calleInicio"    = 'Gran Avenida'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Capitan Avalos'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Capitán Avalos'
  AND u."calleInicio"    = 'Gran Avenida'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Elena'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'El Sauce'
  AND u."calleInicio"    = 'Los Pinares'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Elena'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'El Sauce'
  AND u."calleInicio"    = 'Los Pinares'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Temuco'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Las Canteras'
  AND u."calleInicio"    = 'Zinc'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Temuco'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Las Canteras'
  AND u."calleInicio"    = 'Zinc'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Las Parcelas'
  AND u."calleInicio"    = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Las Parcelas'
  AND u."calleInicio"    = 'Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Carolinos'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Los Carolinos'
  AND u."calleInicio"    = 'Los Alamos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Carolinos'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Los Carolinos'
  AND u."calleInicio"    = 'Los Alamos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lagos De Chile'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Los Nogales'
  AND u."calleInicio"    = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lagos De Chile'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Los Nogales'
  AND u."calleInicio"    = 'Lo Espejo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Laura'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Luis Barros Borgoño'
  AND u."calleInicio"    = 'Rengo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Borgoño'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Luis Barros Borgoño'
  AND u."calleInicio"    = 'Rengo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Arturo Prat'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Nueva Poniente'
  AND u."calleInicio"    = 'Manuel Bulnes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Arturo Prat'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Nueva Poniente'
  AND u."calleInicio"    = 'Manuel Bulnes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Sauce'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Observatorio'
  AND u."calleInicio"    = 'Julio Covarrubias'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Sauce'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Observatorio'
  AND u."calleInicio"    = 'Julio Covarrubias'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Vecinal'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Vecinal Sur'
  AND u."calleInicio"    = 'San Francisco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Vecinal'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Vecinal Sur'
  AND u."calleInicio"    = 'San Francisco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Victor Plaza Mayorga'
  AND c.nombre           = 'El Bosque'
  AND u."callePrincipal" = 'Victor Plaza Mayorga'
  AND u."calleInicio"    = 'Antonio Bórquez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Aníbal Pinto'
  AND u."calleInicio"    = 'Villa Altos del Monte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Aníbal Pinto'
  AND u."calleInicio"    = 'Villa Altos del Monte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Bernardo O''Higgins'
  AND u."calleInicio"    = 'Pje. Ines de Suarez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Bernardo O''Higgins'
  AND u."calleInicio"    = 'Pje. Ines de Suarez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Bernardo O''Higgins'
  AND u."calleInicio"    = 'Pje. Ines de Suarez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Bernardo O''Higgins'
  AND u."calleInicio"    = 'Pje. Ines de Suarez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Bernardo O''Higgins'
  AND u."calleInicio"    = 'Pje. Ines de Suarez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Los Alamos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Lago Caburga'
  AND u."calleInicio"    = 'Los Encinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Los Alamos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Lago Caburga'
  AND u."calleInicio"    = 'Los Encinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Los Alamos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Lago Caburga'
  AND u."calleInicio"    = 'Los Encinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Los Alamos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Lago Caburga'
  AND u."calleInicio"    = 'Los Encinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Los Alamos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Lago Caburga'
  AND u."calleInicio"    = 'Los Encinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Los Alamos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Lago Caburga'
  AND u."calleInicio"    = 'Los Encinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Mercadito Campesino'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Los Carrera'
  AND u."calleInicio"    = 'Aníbal Pinto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Trebol'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Los Encinos'
  AND u."calleInicio"    = 'Lago Caburga'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Trebol'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Los Encinos'
  AND u."calleInicio"    = 'Lago Caburga'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Plaza Los Porotos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Plaza de Los Porotos'
  AND u."calleInicio"    = 'Plaza de Los Porotos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Plaza Los Porotos'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Plaza de Los Porotos'
  AND u."calleInicio"    = 'Plaza de Los Porotos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Club Socios'
  AND c.nombre           = 'El Monte'
  AND u."callePrincipal" = 'Villa Antigua'
  AND u."calleInicio"    = 'Carlos Ibañez del Campo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Nogales'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Antártica'
  AND u."calleInicio"    = 'Galvarino'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Nogales'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Antártica'
  AND u."calleInicio"    = 'Galvarino'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Curacavi'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Curacaví'
  AND u."calleInicio"    = '5 de Abril'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Curacavi'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Curacaví'
  AND u."calleInicio"    = '5 de Abril'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cristo'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Las Violetas'
  AND u."calleInicio"    = 'El Boldo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cristo'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Las Violetas'
  AND u."calleInicio"    = 'El Boldo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santiago'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Luis Cruz Martínez'
  AND u."calleInicio"    = 'Uspallata'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santiago'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Luis Cruz Martínez'
  AND u."calleInicio"    = 'Uspallata'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Amengual'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Manuel Thompson'
  AND u."calleInicio"    = 'Amengual'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Amengual'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Manuel Thompson'
  AND u."calleInicio"    = 'Amengual'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Quemchi'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Quemchi'
  AND u."calleInicio"    = 'Las Estepas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Quemchi'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Quemchi'
  AND u."calleInicio"    = 'Las Estepas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Rivas Vicuna'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Rivas Vicuña'
  AND u."calleInicio"    = '5 de Abril'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Rivas Vicuna'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Rivas Vicuña'
  AND u."calleInicio"    = '5 de Abril'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Jose'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'San José'
  AND u."calleInicio"    = 'Juana Weber de Amunategui'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Jose'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'San José'
  AND u."calleInicio"    = 'Juana Weber de Amunategui'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Petronila'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Santa Petronila'
  AND u."calleInicio"    = 'Embajador Quintana'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Petronila'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Santa Petronila'
  AND u."calleInicio"    = 'Embajador Quintana'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Teresa'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Santa Teresa'
  AND u."calleInicio"    = '5 de Abril'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Teresa'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Santa Teresa'
  AND u."calleInicio"    = '5 de Abril'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Taitao'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Taitao'
  AND u."calleInicio"    = 'Aeropuerto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Taitao'
  AND c.nombre           = 'Estación Central'
  AND u."callePrincipal" = 'Taitao'
  AND u."calleInicio"    = 'Aeropuerto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Salvador Allende'
  AND c.nombre           = 'Huechuraba'
  AND u."callePrincipal" = 'Avda. El Bosque Santiago'
  AND u."calleInicio"    = 'Premio Nobel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Aguirre Luco'
  AND c.nombre           = 'Huechuraba'
  AND u."callePrincipal" = 'José Joaquín Aguirre Luco'
  AND u."calleInicio"    = 'Elias Laferte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pablo Neruda'
  AND c.nombre           = 'Huechuraba'
  AND u."callePrincipal" = 'Pablo Neruda'
  AND u."calleInicio"    = 'Los Paltos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pablo Neruda'
  AND c.nombre           = 'Huechuraba'
  AND u."callePrincipal" = 'Pablo Neruda'
  AND u."calleInicio"    = 'Los Paltos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Colon'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Colón'
  AND u."calleInicio"    = 'Fermín Vivaceta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Colon'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Colón'
  AND u."calleInicio"    = 'Fermín Vivaceta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cronista Gongora'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Cronista Góngora'
  AND u."calleInicio"    = 'Padre Faustino Gazziero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Pino'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'El Pino'
  AND u."calleInicio"    = 'Gamero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Pino'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'El Pino'
  AND u."calleInicio"    = 'Gamero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Enrique Soro'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Enrique Soro'
  AND u."calleInicio"    = 'Salomón Sack'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Enrique Soro'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Enrique Soro'
  AND u."calleInicio"    = 'Salomón Sack'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mirador Viejo'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Las Cañas'
  AND u."calleInicio"    = 'Nueva de Matte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Maruri'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Maruri'
  AND u."calleInicio"    = 'Avda. Domingo Santa María'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Maruri'
  AND c.nombre           = 'Independencia'
  AND u."callePrincipal" = 'Maruri'
  AND u."calleInicio"    = 'Avda. Domingo Santa María'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Antonio De Naltahua'
  AND c.nombre           = 'Isla De Maipo'
  AND u."callePrincipal" = 'Avda. Principal'
  AND u."calleInicio"    = 'Avda. Naltahua'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Población Cancha De Carreras'
  AND c.nombre           = 'Isla De Maipo'
  AND u."callePrincipal" = 'Cancha de Carrera'
  AND u."calleInicio"    = 'Balmaceda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Llaveria'
  AND c.nombre           = 'Isla De Maipo'
  AND u."callePrincipal" = 'Los Guías'
  AND u."calleInicio"    = 'San Antonio de Naltahua'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Lirios'
  AND c.nombre           = 'Isla De Maipo'
  AND u."callePrincipal" = 'Los Lirios'
  AND u."calleInicio"    = 'Armijo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Lirios'
  AND c.nombre           = 'Isla De Maipo'
  AND u."callePrincipal" = 'Los Lirios'
  AND u."calleInicio"    = 'Armijo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Naranjos'
  AND c.nombre           = 'Isla De Maipo'
  AND u."callePrincipal" = 'Los Naranjos'
  AND u."calleInicio"    = 'Gacitúa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Sol Naciente'
  AND c.nombre           = 'Isla De Maipo'
  AND u."callePrincipal" = 'Vista Hermosa'
  AND u."calleInicio"    = 'Balmaceda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Ramon'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Alejandro Vial'
  AND u."calleInicio"    = 'Uruguay'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Ramon'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Alejandro Vial'
  AND u."calleInicio"    = 'Uruguay'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Brisas Del Maipo'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Brisas del Maipo'
  AND u."calleInicio"    = 'Industrias'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Brisas Del Maipo'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Brisas del Maipo'
  AND u."calleInicio"    = 'Industrias'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Ovalle'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Fuenzalida Urrejola'
  AND u."calleInicio"    = 'Angamos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Ovalle'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Fuenzalida Urrejola'
  AND u."calleInicio"    = 'Angamos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Goycolea'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Goycolea (Avda. Ossa)'
  AND u."calleInicio"    = 'Pero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Goycolea'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Goycolea (Avda. Ossa)'
  AND u."calleInicio"    = 'Pero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ballesteros'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Ines Rivas'
  AND u."calleInicio"    = 'Alcalde Barrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ballesteros'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Ines Rivas'
  AND u."calleInicio"    = 'Alcalde Barrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lucerna'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Lucerna'
  AND u."calleInicio"    = 'Colón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lucerna'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Lucerna'
  AND u."calleInicio"    = 'Colón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Arturo Prat'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Nueva Poniente'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Arturo Prat'
  AND c.nombre           = 'La Cisterna'
  AND u."callePrincipal" = 'Nueva Poniente'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Ohiggins'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Aconcagua'
  AND u."calleInicio"    = 'Santa Julia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Ohiggins'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Aconcagua'
  AND u."calleInicio"    = 'Santa Julia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Avda. Parque'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Avda. El Parque'
  AND u."calleInicio"    = 'Real Pontevedra'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Copihues'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Avda. La Florida'
  AND u."calleInicio"    = 'Departamental'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Ohiggins'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Avda. San José de La Estrella'
  AND u."calleInicio"    = 'Bahía Catalina'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Ohiggins, Avenida 1'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Avda. Uno'
  AND u."calleInicio"    = 'José Miguel Carrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Ohiggins, Avenida 1'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Avda. Uno'
  AND u."calleInicio"    = 'José Miguel Carrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calama'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Calama'
  AND u."calleInicio"    = 'Sótero del Río'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins-Calle B Nº. 1'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Calle B'
  AND u."calleInicio"    = 'Santa Julia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Copihues'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Chacón Zamora'
  AND u."calleInicio"    = 'Walker Martínez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chaiten'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Chaitén'
  AND u."calleInicio"    = 'Rojas Magallanes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Diego Portales'
  AND u."calleInicio"    = 'Valle Hermoso'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'El Ulmo'
  AND u."calleInicio"    = 'Las Pataguas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bellavista'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Enrique Olivares'
  AND u."calleInicio"    = 'Colombia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fraternidad'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Fraternidad'
  AND u."calleInicio"    = 'Guacolda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Union'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'General Arriagada'
  AND u."calleInicio"    = 'Bahía Catalina'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Union'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'General Arriagada'
  AND u."calleInicio"    = 'Porvenir'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Union'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'General Arriagada'
  AND u."calleInicio"    = 'Porvenir'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Copihues'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Gerónimo de Alderete'
  AND u."calleInicio"    = 'Alonso de Ercilla'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Jorge Cisternas'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Jorge Cisternas Lema'
  AND u."calleInicio"    = 'Punta Arenas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'José Miguel Carrera'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calama'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Los Alerces'
  AND u."calleInicio"    = 'Santa Raquel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calama'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Los Alerces'
  AND u."calleInicio"    = 'Santa Raquel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'María Elena'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'María Elena'
  AND u."calleInicio"    = 'Bahía Catalina'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'México'
  AND u."calleInicio"    = 'San José de La Estrella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Mirador Azul'
  AND u."calleInicio"    = 'Froilán Roa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Mirador Azul'
  AND u."calleInicio"    = 'Froilán Roa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bellavista'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Pudeto'
  AND u."calleInicio"    = 'Paso El Roble'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Copihues'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Punitaqui'
  AND u."calleInicio"    = 'Departamental'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Copihues'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Punitaqui'
  AND u."calleInicio"    = 'Departamental'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Union'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'San Jorge'
  AND u."calleInicio"    = 'Cordillera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'San Jorge'
  AND u."calleInicio"    = 'Pje. 4'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'San Jorge'
  AND u."calleInicio"    = 'Santa Cecilia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'San Jorge'
  AND u."calleInicio"    = 'Santa Cecilia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'San José de La Estrella'
  AND u."calleInicio"    = 'Colombia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bellavista'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'San José de La Estrella'
  AND u."calleInicio"    = 'Pje. Los Artistas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Sanchez Fontecilla'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Sánchez Fontecilla'
  AND u."calleInicio"    = 'Rojas Magallanes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bellavista'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Santa Amalia'
  AND u."calleInicio"    = 'Pje. Arce'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Santa Amalia'
  AND u."calleInicio"    = 'Pje. Los Pinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa O''Higgins'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Santa Amalia'
  AND u."calleInicio"    = 'Santa Raquel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bellavista'
  AND c.nombre           = 'La Florida'
  AND u."callePrincipal" = 'Santa Julia'
  AND u."calleInicio"    = 'Vicuña Mackenna Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Tacora'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Avda. Sur'
  AND u."calleInicio"    = 'Tacora'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Tacora'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Avda. Sur'
  AND u."calleInicio"    = 'Tacora'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Tome'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Avda. Tomé'
  AND u."calleInicio"    = 'Avda. Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Tome'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Avda. Tomé'
  AND u."calleInicio"    = 'Avda. Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Poeta Neruda'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Canto General'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Poeta Neruda'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Canto General'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Malaquias Concha'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Combarbalá'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Malaquias Concha'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Combarbalá'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manco Capac'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Manco Capac'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manco Capac'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Manco Capac'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Buses'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Osorno'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Buses'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Osorno'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Joao Gulart'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Padre Esteban Gumucio'
  AND u."calleInicio"    = 'Cardenas Raúl Silva Henríquez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Joao Gulart'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Padre Esteban Gumucio'
  AND u."calleInicio"    = 'Cardenas Raúl Silva Henríquez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Industrias'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Pdte. Ignacio Lula Da Silva'
  AND u."calleInicio"    = 'Padre Esteban Gumuccio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Industrias'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Pdte. Ignacio Lula Da Silva'
  AND u."calleInicio"    = 'Padre Esteban Gumuccio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Serena'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Santo Tomás'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Serena'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Santo Tomás'
  AND u."calleInicio"    = 'Coronel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mañio'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Sebastopol'
  AND u."calleInicio"    = 'Avda. Estadio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Coronel'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Valdivia'
  AND u."calleInicio"    = 'Cardenas Raúl Silva Henríquez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Coronel'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Valdivia'
  AND u."calleInicio"    = 'Cardenas Raúl Silva Henríquez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Claudia'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Vicuña Mackenna'
  AND u."calleInicio"    = 'Joaquín Edwards Bello'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Claudia'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Vicuña Mackenna'
  AND u."calleInicio"    = 'Joaquín Edwards Bello'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Yungay'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Yungay'
  AND u."calleInicio"    = 'El Mañio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Yungay'
  AND c.nombre           = 'La Granja'
  AND u."callePrincipal" = 'Yungay'
  AND u."calleInicio"    = 'El Mañio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Salvador Dali'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Almirante Latorre'
  AND u."calleInicio"    = 'General Franco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Salvador Dali'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Almirante Latorre'
  AND u."calleInicio"    = 'General Franco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '21 De Mayo'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Bernardino Parada'
  AND u."calleInicio"    = 'José Toribio Medina'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '21 De Mayo'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Bernardino Parada'
  AND u."calleInicio"    = 'José Toribio Medina'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '21 De Mayo'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Bernardino Parada'
  AND u."calleInicio"    = 'José Toribio Medina'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Castillo'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Fundador'
  AND u."calleInicio"    = 'Batallón Chacabuco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Castillo'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Fundador'
  AND u."calleInicio"    = 'Batallón Chacabuco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Conciertos - El Bosque'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Joaquín Edwards Bello'
  AND u."calleInicio"    = 'Santo Tomas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Conciertos - El Bosque'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Joaquín Edwards Bello'
  AND u."calleInicio"    = 'Santo Tomas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Conciertos - El Bosque'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Joaquín Edwards Bello'
  AND u."calleInicio"    = 'Santo Tomas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'John Kennedy'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'John Kennedy'
  AND u."calleInicio"    = 'Bernardino Parada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'John Kennedy'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'John Kennedy'
  AND u."calleInicio"    = 'Bernardino Parada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Juanita'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Juanita'
  AND u."calleInicio"    = 'El Ombú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Juanita'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Juanita'
  AND u."calleInicio"    = 'El Ombú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'J Ramirez'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Julio Barnechea'
  AND u."calleInicio"    = 'San Francisco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'La Serena'
  AND u."calleInicio"    = 'General Arriagada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'La Serena'
  AND u."calleInicio"    = 'General Arriagada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'La Serena'
  AND u."calleInicio"    = 'General Arriagada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Aguilas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Las Aguilas'
  AND u."calleInicio"    = 'Antonio Machado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Aguilas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Las Aguilas'
  AND u."calleInicio"    = 'Antonio Machado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Ombu'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Ombú'
  AND u."calleInicio"    = 'El Hualle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Ombu'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Ombú'
  AND u."calleInicio"    = 'El Hualle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Rafael'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Padre Pablo Laurin'
  AND u."calleInicio"    = 'Porto Alegre'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Magdalena'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Pedro Aguirre Cerda'
  AND u."calleInicio"    = 'Observatorio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Vicente Llanos'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'San Francisco'
  AND u."calleInicio"    = 'Pje. El Sueño'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santo Tomas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Santo Tomas'
  AND u."calleInicio"    = 'Serena'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santo Tomas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Santo Tomas'
  AND u."calleInicio"    = 'Serena'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santo Tomas'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Santo Tomas'
  AND u."calleInicio"    = 'Serena'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Bosque'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Sembrador'
  AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Bosque'
  AND c.nombre           = 'La Pintana'
  AND u."callePrincipal" = 'Sembrador'
  AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:30:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ecoferia'
  AND c.nombre           = 'La Reina'
  AND u."callePrincipal" = 'Plaza Chile-Perú'
  AND u."calleInicio"    = 'Principe de Galez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Tobalaba'
  AND c.nombre           = 'La Reina'
  AND u."callePrincipal" = 'Avda. Tobalaba'
  AND u."calleInicio"    = 'Avda. Américo Vespucio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Tobalaba'
  AND c.nombre           = 'La Reina'
  AND u."callePrincipal" = 'Avda. Tobalaba'
  AND u."calleInicio"    = 'Avda. Américo Vespucio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Agrupacion De Chacareros La Reina'
  AND c.nombre           = 'La Reina'
  AND u."callePrincipal" = 'Clorinda Henriquez'
  AND u."calleInicio"    = 'Larrain'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'De Chacareros De La Reina'
  AND c.nombre           = 'La Reina'
  AND u."callePrincipal" = 'Francisco Bilbao'
  AND u."calleInicio"    = 'Florencio Barrios'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'De Chacareros De La Reina'
  AND c.nombre           = 'La Reina'
  AND u."callePrincipal" = 'Francisco Bilbao'
  AND u."calleInicio"    = 'Florencio Barrios'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Quinchamali'
  AND c.nombre           = 'La Reina'
  AND u."callePrincipal" = 'Quinchamalí'
  AND u."calleInicio"    = 'Pje. 12'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Centro'
  AND c.nombre           = 'Lampa'
  AND u."callePrincipal" = 'Balmaceda'
  AND u."calleInicio"    = 'Baquedano'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Poblacion Ines Bustos I'
  AND c.nombre           = 'Lampa'
  AND u."callePrincipal" = 'Juan Maisonave'
  AND u."calleInicio"    = 'Avda. Francia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Poblacion Ines Bustos I'
  AND c.nombre           = 'Lampa'
  AND u."callePrincipal" = 'Juan Maisonave'
  AND u."calleInicio"    = 'Avda. Francia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Viña Del Mar'
  AND c.nombre           = 'Lampa'
  AND u."callePrincipal" = 'Viña del Mar'
  AND u."calleInicio"    = 'Isabel Riquelme'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Viña Del Mar'
  AND c.nombre           = 'Lampa'
  AND u."callePrincipal" = 'Viña del Mar'
  AND u."calleInicio"    = 'Isabel Riquelme'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mercado Chacareros De Manquehue'
  AND c.nombre           = 'Las Condes'
  AND u."callePrincipal" = 'Avda. Manquehue (Bandejón)'
  AND u."calleInicio"    = 'Isabel La Católica'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mercado Chacareros De Manquehue'
  AND c.nombre           = 'Las Condes'
  AND u."callePrincipal" = 'Avda. Manquehue (Bandejón)'
  AND u."calleInicio"    = 'Isabel La Católica'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Presidente Riesco'
  AND c.nombre           = 'Las Condes'
  AND u."callePrincipal" = 'Avda. Presidente Riesco'
  AND u."calleInicio"    = 'Nuestra Señora del Rosario'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Dominicos'
  AND c.nombre           = 'Las Condes'
  AND u."callePrincipal" = 'Los Dominicos'
  AND u."calleInicio"    = 'Apoquindo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Patricia'
  AND c.nombre           = 'Las Condes'
  AND u."callePrincipal" = 'Patricia'
  AND u."calleInicio"    = 'Paul Harris'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Avda. Lo Barnechea'
  AND c.nombre           = 'Lo Barnechea'
  AND u."callePrincipal" = 'Avda. Lo Barnechea'
  AND u."calleInicio"    = 'Raúl Labbé'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Barnechea'
  AND c.nombre           = 'Lo Barnechea'
  AND u."callePrincipal" = 'Bajada Al Río'
  AND u."calleInicio"    = 'Raúl Labbé'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Barnechea'
  AND c.nombre           = 'Lo Barnechea'
  AND u."callePrincipal" = 'Bajada Al Río'
  AND u."calleInicio"    = 'Raúl Labbé'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Quincheros'
  AND c.nombre           = 'Lo Barnechea'
  AND u."callePrincipal" = 'Los Quincheros'
  AND u."calleInicio"    = 'El Esfuerzo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Ermita'
  AND c.nombre           = 'Lo Barnechea'
  AND u."callePrincipal" = 'Parque La Ermita'
  AND u."calleInicio"    = ' '
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Ermita'
  AND c.nombre           = 'Lo Barnechea'
  AND u."callePrincipal" = 'Parque La Ermita'
  AND u."calleInicio"    = ' '
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pie Andino'
  AND c.nombre           = 'Lo Barnechea'
  AND u."callePrincipal" = 'Pie Andino'
  AND u."calleInicio"    = 'Huinganal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Olga'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Adolfo López Mateo'
  AND u."calleInicio"    = 'Acapulco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Olga'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Adolfo López Mateo'
  AND u."calleInicio"    = 'Acapulco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cooperacion'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Avda. Cooperación'
  AND u."calleInicio"    = 'Lo Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cooperacion'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Avda. Cooperación'
  AND u."calleInicio"    = 'Lo Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Espejo'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Balmaceda'
  AND u."calleInicio"    = 'Astaburuaga'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Espejo'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Balmaceda'
  AND u."calleInicio"    = 'Astaburuaga'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Jupiter'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Júpiter'
  AND u."calleInicio"    = 'Eduardo Frei Montalva'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Jupiter'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Júpiter'
  AND u."calleInicio"    = 'Eduardo Frei Montalva'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Habana'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'La Habana'
  AND u."calleInicio"    = 'Eduardo Frei Montalva'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Habana'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'La Habana'
  AND u."calleInicio"    = 'Eduardo Frei Montalva'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Monterrey'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Monterrey'
  AND u."calleInicio"    = 'Salvador Allende'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Monterrey'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Monterrey'
  AND u."calleInicio"    = 'Salvador Allende'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pablo Neruda'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Pablo Neruda'
  AND u."calleInicio"    = 'Nueve de Enero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pablo Neruda'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Pablo Neruda'
  AND u."calleInicio"    = 'Nueve de Enero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fernandez Albano Poniente'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Salvador Allende'
  AND u."calleInicio"    = 'Avda. Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fernandez Albano Poniente'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Salvador Allende'
  AND u."calleInicio"    = 'Avda. Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Jose Maria Caro'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Salvador Allende'
  AND u."calleInicio"    = 'Avda. Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Jose Maria Caro'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Salvador Allende'
  AND u."calleInicio"    = 'Avda. Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Adriana'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Valparaiso'
  AND u."calleInicio"    = 'Lo Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Adriana'
  AND c.nombre           = 'Lo Espejo'
  AND u."callePrincipal" = 'Valparaiso'
  AND u."calleInicio"    = 'Lo Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Gabriela Mistral'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Gabriela Mistral'
  AND u."calleInicio"    = 'Paula Jaraquemada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Gabriela Mistral'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Gabriela Mistral'
  AND u."calleInicio"    = 'Paula Jaraquemada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Kennedy'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Las Torres'
  AND u."calleInicio"    = 'Dorsal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Kennedy'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Las Torres'
  AND u."calleInicio"    = 'Dorsal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 1 Las Torres'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Las Torres'
  AND u."calleInicio"    = 'San Pablo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 1 Las Torres'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Las Torres'
  AND u."calleInicio"    = 'San Pablo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Neptuno'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Neptuno'
  AND u."calleInicio"    = 'Reina Maud'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Neptuno'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Neptuno'
  AND u."calleInicio"    = 'Reina Maud'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ibis'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Pedro de Córdoba'
  AND u."calleInicio"    = 'Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ibis'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Pedro de Córdoba'
  AND u."calleInicio"    = 'Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Marta'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Santa Marta'
  AND u."calleInicio"    = 'Dorsal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '10:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Marta'
  AND c.nombre           = 'Lo Prado'
  AND u."callePrincipal" = 'Santa Marta'
  AND u."calleInicio"    = 'Dorsal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ramon Cruz'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Amanda Labarca'
  AND u."calleInicio"    = 'Ramón Cruz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ramon Cruz'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Amanda Labarca'
  AND u."calleInicio"    = 'Ramón Cruz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Quilin'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Avda. Quilín (Costado)'
  AND u."calleInicio"    = 'Quilín'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Quilin'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Avda. Quilín (Costado)'
  AND u."calleInicio"    = 'Quilín'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Carolina'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Castillo Urizar'
  AND u."calleInicio"    = 'Quilin'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Juan Pinto Duran'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'El Líbano'
  AND u."calleInicio"    = 'Amador Neghme'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Juan Pinto Duran'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'El Líbano'
  AND u."calleInicio"    = 'Amador Neghme'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Codornices'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Las Codornices'
  AND u."calleInicio"    = 'Missouri'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Codornices'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Las Codornices'
  AND u."calleInicio"    = 'Missouri'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa La Catolica'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Los Platanos'
  AND u."calleInicio"    = 'Ramón Cruz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa La Catolica'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Los Platanos'
  AND u."calleInicio"    = 'Ramón Cruz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Tres Antonios'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Los Tres Antonios'
  AND u."calleInicio"    = 'Avda. Agrícola'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Julia'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Manuel Sánchez'
  AND u."calleInicio"    = 'Santa Julia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Santa Elena'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Ortiz de Zárate'
  AND u."calleInicio"    = 'Marathón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Santa Elena'
  AND c.nombre           = 'Macul'
  AND u."callePrincipal" = 'Ortiz de Zárate'
  AND u."calleInicio"    = 'Marathón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '3 Poniente'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = '3 Poniente'
  AND u."calleInicio"    = 'Avda. Maipú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '3 Poniente'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = '3 Poniente'
  AND u."calleInicio"    = 'Avda. Maipú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '3 Poniente'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = '3 Poniente'
  AND u."calleInicio"    = 'Avda. Portales'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '3 Poniente'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = '3 Poniente'
  AND u."calleInicio"    = 'Avda. Portales'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Descanso'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Avda. El Descanso'
  AND u."calleInicio"    = 'Gustavo Eiffel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Descanso'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Avda. El Descanso'
  AND u."calleInicio"    = 'Gustavo Eiffel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Avda. Las Parcelas'
  AND u."calleInicio"    = 'Sur de Chile'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Avda. Las Parcelas'
  AND u."calleInicio"    = 'Sur de Chile'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ciudad Satelite'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Camino a Melipilla (Caletera)'
  AND u."calleInicio"    = 'Parque Central Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ciudad Satelite'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Camino a Melipilla (Caletera)'
  AND u."calleInicio"    = 'Parque Central Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Maipu'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Camino a Rinconada'
  AND u."calleInicio"    = 'La Galaxia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Maipu'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Camino a Rinconada'
  AND u."calleInicio"    = 'La Galaxia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valle Esperanza'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Campanario'
  AND u."calleInicio"    = '4 Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valle Esperanza'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Campanario'
  AND u."calleInicio"    = '4 Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ferrocarril'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Del Ferrocarril'
  AND u."calleInicio"    = 'Domingo Faustino Sarmiento'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ferrocarril'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Del Ferrocarril'
  AND u."calleInicio"    = 'Domingo Faustino Sarmiento'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Esquina Blanca'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Del Ferrocarril'
  AND u."calleInicio"    = 'Esquina Blanca'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Esquina Blanca'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Del Ferrocarril'
  AND u."calleInicio"    = 'Esquina Blanca'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Conquistador'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'El Conquistador'
  AND u."calleInicio"    = 'Las Tinajas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Conquistador'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'El Conquistador'
  AND u."calleInicio"    = 'Las Tinajas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Gruta'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Gabriel Gonzalez Videla'
  AND u."calleInicio"    = '4 Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Gruta'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Gabriel Gonzalez Videla'
  AND u."calleInicio"    = '4 Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Heroes'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Hermógenes Perez de Arce'
  AND u."calleInicio"    = 'Avda. Alfredo Silva Carvallo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Heroes'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Hermógenes Perez de Arce'
  AND u."calleInicio"    = 'Avda. Alfredo Silva Carvallo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Padre Hurtado'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Huascar'
  AND u."calleInicio"    = 'Avda. Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Padre Hurtado'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Huascar'
  AND u."calleInicio"    = 'Avda. Padre Hurtado'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valle Esperanza/Inca De Oro'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Inca de Oro'
  AND u."calleInicio"    = 'La Galaxia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valle Esperanza/Inca De Oro'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Inca de Oro'
  AND u."calleInicio"    = 'La Galaxia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Maipu'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Isabel Riquelme'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Maipu'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Isabel Riquelme'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Borgoño'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'José Manuel Borgoño'
  AND u."calleInicio"    = 'Las Naciones'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Borgoño'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'José Manuel Borgoño'
  AND u."calleInicio"    = 'Las Naciones'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Reforma'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'La Reforma'
  AND u."calleInicio"    = 'Jorge Alessandri'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Reforma'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'La Reforma'
  AND u."calleInicio"    = 'Jorge Alessandri'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Abrazo'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Las Industrias'
  AND u."calleInicio"    = '4 Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Abrazo'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Las Industrias'
  AND u."calleInicio"    = '4 Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Judea'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Las Industrias'
  AND u."calleInicio"    = 'Judea'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Judea'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Las Industrias'
  AND u."calleInicio"    = 'Judea'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Luis'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Las Naciones'
  AND u."calleInicio"    = 'Portales'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Luis'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Las Naciones'
  AND u."calleInicio"    = 'Portales'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lumen'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Lumen'
  AND u."calleInicio"    = '3 Norte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lumen'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Lumen'
  AND u."calleInicio"    = '3 Norte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Guayaquil'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'O''Higgins'
  AND u."calleInicio"    = 'Avda. de La Victoria'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Guayaquil'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'O''Higgins'
  AND u."calleInicio"    = 'Avda. de La Victoria'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '4 Alamos'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Santa María'
  AND u."calleInicio"    = 'Vicente Reyes (Primera Transversal)'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '4 Alamos'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Santa María'
  AND u."calleInicio"    = 'Vicente Reyes (Primera Transversal)'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Maipu'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Teatro Princesa'
  AND u."calleInicio"    = 'Isabel Riquelme'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modelo Maipu'
  AND c.nombre           = 'Maipu'
  AND u."callePrincipal" = 'Teatro Princesa'
  AND u."calleInicio"    = 'Isabel Riquelme'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Maria Pinto'
  AND c.nombre           = 'Maria Pinto'
  AND u."callePrincipal" = 'José Manuel Veliz'
  AND u."calleInicio"    = 'Avda. Francisco Costabal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Avenida Chile'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Avda. Chile'
  AND u."calleInicio"    = 'Avda. Cementerio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Culipran'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Las Palmeras de Culiprán'
  AND u."calleInicio"    = ' '
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Codigua'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Los Alamos'
  AND u."calleInicio"    = ' '
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Manuel Rodríguez'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Merced'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Merced'
  AND u."calleInicio"    = 'Lago Puyehue'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bollenar Agricultores'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Plaza de Bollenar'
  AND u."calleInicio"    = 'Los Maquis'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bollenar Agricultores'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Plaza de Bollenar'
  AND u."calleInicio"    = 'Los Maquis'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Los Toros'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Policarpo Toro'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pomaire'
  AND c.nombre           = 'Melipilla'
  AND u."callePrincipal" = 'Rafael Morandé'
  AND u."calleInicio"    = 'Dieciocho de Septiembre'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Grecia Modelo'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Calle Nueva 2'
  AND u."calleInicio"    = 'Marathón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Grecia Modelo'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Calle Nueva 2'
  AND u."calleInicio"    = 'Marathón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Duble Almeyda'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Duble Almeyda'
  AND u."calleInicio"    = 'Ramón Cruz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Emilia Tellez'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Emilia Tellez'
  AND u."calleInicio"    = 'Bremen'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Emilia Tellez'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Emilia Tellez'
  AND u."calleInicio"    = 'Bremen'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Maria Celeste'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Grecia'
  AND u."calleInicio"    = 'Avda. Américo Vespucio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Maria Celeste'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Grecia'
  AND u."calleInicio"    = 'Avda. Américo Vespucio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Guillermo Mann'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Guillermo Mann'
  AND u."calleInicio"    = 'Pedro de Valdivia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Guillermo Mann'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Guillermo Mann'
  AND u."calleInicio"    = 'Pedro de Valdivia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Alerces'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Ignacio Carrera Pinto'
  AND u."calleInicio"    = 'Juan Moya'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Aromos'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Juan Gomez Millas'
  AND u."calleInicio"    = 'Pedro de Valdivia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Matta Oriente'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Matta Oriente'
  AND u."calleInicio"    = 'Irarrázabal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Matta Oriente'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Matta Oriente'
  AND u."calleInicio"    = 'Irarrázabal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ortuzar'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'Ortuzar'
  AND u."calleInicio"    = 'Las Verónicas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Eugenio'
  AND c.nombre           = 'Ñuñoa'
  AND u."callePrincipal" = 'San Eugenio'
  AND u."calleInicio"    = 'Carlos Dittborn'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Juan Wesley'
  AND c.nombre           = 'Padre Hurtado'
  AND u."callePrincipal" = 'Brasilia'
  AND u."calleInicio"    = 'Juan Wesley'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Rosa De Chena'
  AND c.nombre           = 'Padre Hurtado'
  AND u."callePrincipal" = 'Camino San Alberto Hurtado'
  AND u."calleInicio"    = 'Tercera Avenida'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Rosa De Chena'
  AND c.nombre           = 'Padre Hurtado'
  AND u."callePrincipal" = 'Camino San Alberto Hurtado'
  AND u."calleInicio"    = 'Tercera Avenida'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Explanada'
  AND c.nombre           = 'Padre Hurtado'
  AND u."callePrincipal" = 'El Manzano'
  AND u."calleInicio"    = 'Pje. San Bernabé'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Explanada'
  AND c.nombre           = 'Padre Hurtado'
  AND u."callePrincipal" = 'El Manzano'
  AND u."calleInicio"    = 'Pje. San Bernabé'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Silos'
  AND c.nombre           = 'Padre Hurtado'
  AND u."callePrincipal" = 'Los Silos'
  AND u."calleInicio"    = 'Estero Seco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cristal Chile'
  AND c.nombre           = 'Padre Hurtado'
  AND u."callePrincipal" = 'Presidente Aníbal Pinto'
  AND u."calleInicio"    = 'General O''Higgins'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chacareros'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Avda. General Baquedano'
  AND u."calleInicio"    = ' '
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Buin'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Calle Buin'
  AND u."calleInicio"    = 'Perú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Buin'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Calle Buin'
  AND u."calleInicio"    = 'Perú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Buin'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Calle Buin'
  AND u."calleInicio"    = 'Perú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Buin'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Calle Buin'
  AND u."calleInicio"    = 'Perú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Calle Buin'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Calle Buin'
  AND u."calleInicio"    = 'Perú'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Altos De Cantillana'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Gustavo Martínez'
  AND u."calleInicio"    = 'Avda. José Miguel Carrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Altos De Cantillana'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Gustavo Martínez'
  AND u."calleInicio"    = 'Avda. José Miguel Carrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Plaza'
  AND c.nombre           = 'Paine'
  AND u."callePrincipal" = 'Plaza de Paine'
  AND u."calleInicio"    = 'Cuatro Norte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fraternal'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Avda. Cooperación'
  AND u."calleInicio"    = 'Lo Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fraternal'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Avda. Cooperación'
  AND u."calleInicio"    = 'Lo Ovalle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Centro America'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Centro América'
  AND u."calleInicio"    = 'Avda. Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Centro America'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Centro América'
  AND u."calleInicio"    = 'Avda. Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Joaquin'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Dos de Abril'
  AND u."calleInicio"    = 'Ernesto Molino'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Joaquin'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Dos de Abril'
  AND u."calleInicio"    = 'Ernesto Molino'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Enrique Matte/Ismael Valdes'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Enrique Matte'
  AND u."calleInicio"    = 'Club Hípico'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Enrique Matte/Ismael Valdes'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Enrique Matte'
  AND u."calleInicio"    = 'Club Hípico'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Marina'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Félix Mendelssohn'
  AND u."calleInicio"    = 'Lazo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Marina'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Félix Mendelssohn'
  AND u."calleInicio"    = 'Lazo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '30 De Octubre'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Galo Gonzalez'
  AND u."calleInicio"    = '30 de Octubre'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '30 De Octubre'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Galo Gonzalez'
  AND u."calleInicio"    = '30 de Octubre'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Davila'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Manuel Errázuriz'
  AND u."calleInicio"    = 'Melinka'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Davila'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Manuel Errázuriz'
  AND u."calleInicio"    = 'Melinka'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Sur'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Pintor de La Fuente'
  AND u."calleInicio"    = 'Departamental'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Villa Sur'
  AND c.nombre           = 'Pedro Aguirre Cerda'
  AND u."callePrincipal" = 'Pintor de La Fuente'
  AND u."calleInicio"    = 'Departamental'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Malloco'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Avda. Manuel Gonzalez'
  AND u."calleInicio"    = 'Avda. Bernardo O''Higgins'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Malloco'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Avda. Manuel Gonzalez'
  AND u."calleInicio"    = 'Avda. Bernardo O''Higgins'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Praderas'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Avda. Troncal'
  AND u."calleInicio"    = 'Isabel La Católica'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Praderas'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Avda. Troncal'
  AND u."calleInicio"    = 'Isabel La Católica'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Nueva Peñaflor'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Basterrica'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Nueva Peñaflor'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Basterrica'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Copa'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Malloquito'
  AND u."calleInicio"    = 'Progreso'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Castillo'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Vicuña Mackenna'
  AND u."calleInicio"    = 'Concepción'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Castillo'
  AND c.nombre           = 'Peñaflor'
  AND u."callePrincipal" = 'Vicuña Mackenna'
  AND u."calleInicio"    = 'Concepción'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Palena'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Avda. Consistorial'
  AND u."calleInicio"    = 'Tagua Tagua'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Palena'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Avda. Consistorial'
  AND u."calleInicio"    = 'Tagua Tagua'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'José Arrieta'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Avda. José Arrieta'
  AND u."calleInicio"    = 'Calle Diego Rojas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Torres'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Avda. Las Torres'
  AND u."calleInicio"    = 'Pje. 465'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Presidentes'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Caracas'
  AND u."calleInicio"    = 'Los Presidentes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Presidentes'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Caracas'
  AND u."calleInicio"    = 'Los Presidentes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Departamental'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Departamental'
  AND u."calleInicio"    = 'Los Talladores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Departamental'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Departamental'
  AND u."calleInicio"    = 'Los Talladores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Parral'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'El Valle'
  AND u."calleInicio"    = 'Afluente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Mares'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Horacio Toro'
  AND u."calleInicio"    = 'Los Salesianos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Mares'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Horacio Toro'
  AND u."calleInicio"    = 'Los Salesianos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ictinos'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Ictinos'
  AND u."calleInicio"    = 'Grecia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Juan Pablo Ii'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'La Frontera'
  AND u."calleInicio"    = 'El Valle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Juan Pablo Ii'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'La Frontera'
  AND u."calleInicio"    = 'El Valle'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Perdices'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Las Perdices'
  AND u."calleInicio"    = 'Baquedano'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Perdices'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Las Perdices'
  AND u."calleInicio"    = 'Baquedano'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Molineros'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'Molineros'
  AND u."calleInicio"    = 'Grecia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:30:00', '14:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Modulos De San Luis'
  AND c.nombre           = 'Peñalolen'
  AND u."callePrincipal" = 'San Luis de Macul'
  AND u."calleInicio"    = 'Arrieros'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Isabel'
  AND c.nombre           = 'Providencia'
  AND u."callePrincipal" = 'Caupolicán'
  AND u."calleInicio"    = 'Santa Isabel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Concilios'
  AND c.nombre           = 'Providencia'
  AND u."callePrincipal" = 'Los Concilios'
  AND u."calleInicio"    = 'Renato Zanelli'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Maria'
  AND c.nombre           = 'Providencia'
  AND u."callePrincipal" = 'Santa María'
  AND u."calleInicio"    = 'Calle del Arzobispo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Maria'
  AND c.nombre           = 'Providencia'
  AND u."callePrincipal" = 'Santa María'
  AND u."calleInicio"    = 'Calle del Arzobispo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ciudad De Los Valles'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Avda. El Canal'
  AND u."calleInicio"    = 'Las Flores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ciudad De Los Valles'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Avda. El Canal'
  AND u."calleInicio"    = 'Las Flores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Travesia 2'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Avda. La Travesía'
  AND u."calleInicio"    = 'La Estrella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Travesia 2'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Avda. La Travesía'
  AND u."calleInicio"    = 'La Estrella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Centenario'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Avda. La Travesía'
  AND u."calleInicio"    = 'Teniente Cruz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Centenario'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Avda. La Travesía'
  AND u."calleInicio"    = 'Teniente Cruz'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Simon Bolivar'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Camino Noviciado'
  AND u."calleInicio"    = 'Simón Bolivar'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Simon Bolivar'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Camino Noviciado'
  AND u."calleInicio"    = 'Simón Bolivar'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Santa Corina'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Corona Sueca'
  AND u."calleInicio"    = 'Los Ediles'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Estero'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'El Estero'
  AND u."calleInicio"    = 'Los Portones'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Morros'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Federico Errázuriz'
  AND u."calleInicio"    = 'La Estrella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Anillo'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'José Joaquín Pérez'
  AND u."calleInicio"    = 'La Estrella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Anillo'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'José Joaquín Pérez'
  AND u."calleInicio"    = 'La Estrella'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Estrella Sur'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'La Estrella Sur'
  AND u."calleInicio"    = 'Laguna Sur'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Estrella Sur'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'La Estrella Sur'
  AND u."calleInicio"    = 'Laguna Sur'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Serrano'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Serrano'
  AND u."calleInicio"    = 'San Daniel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Teniente Cruz'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Teniente Cruz'
  AND u."calleInicio"    = 'Ricardo Vial'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Teniente Cruz'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Teniente Cruz'
  AND u."calleInicio"    = 'Ricardo Vial'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Victoria'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Victoria'
  AND u."calleInicio"    = 'San Pablo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:00:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Victoria'
  AND c.nombre           = 'Pudahuel'
  AND u."callePrincipal" = 'Victoria'
  AND u."calleInicio"    = 'San Pablo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chacareros'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Angel Pimentel'
  AND u."calleInicio"    = 'Nonato Coo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Arturo Prat'
  AND u."calleInicio"    = 'Argentina'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Avda. El Peral'
  AND u."calleInicio"    = 'México'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Casas Viejas'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Avda. Laja'
  AND u."calleInicio"    = 'Circunvalación'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chacareros'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Avda. Los Toros'
  AND u."calleInicio"    = 'Nonato Coo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Avda. México'
  AND u."calleInicio"    = 'Los Toros'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Buin'
  AND u."calleInicio"    = 'Punta Blanca'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Nogales'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Concha y Toro'
  AND u."calleInicio"    = 'Elisa Correa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ulises'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Coquimbo'
  AND u."calleInicio"    = 'Avda. Gabriela Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Nogales'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Creta'
  AND u."calleInicio"    = 'Sagasca'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Nogales'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Creta'
  AND u."calleInicio"    = 'Sagasca'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bajos De Mena'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Curaco de Vélez'
  AND u."calleInicio"    = 'Quitalmahue'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Esfuerzo'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Domingo Tocornal'
  AND u."calleInicio"    = 'Nonato Coo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Esfuerzo'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Domingo Tocornal'
  AND u."calleInicio"    = 'Nonato Coo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Eduardo Cordero'
  AND u."calleInicio"    = 'Santa Elena'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Ejército Libertador'
  AND u."calleInicio"    = 'Eyzaguirre'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Luis Matte N° 3'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Ejército Libertador'
  AND u."calleInicio"    = 'Luis Matte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Luis Matte N° 3'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Ejército Libertador'
  AND u."calleInicio"    = 'Luis Matte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'El Peñón'
  AND u."calleInicio"    = 'Troncal San Francisco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chacareros'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'El Peral'
  AND u."calleInicio"    = 'Nonato Coo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Casas Viejas'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'El Volcán'
  AND u."calleInicio"    = 'Los Pinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Juan de Dios Malebran'
  AND u."calleInicio"    = 'Ernesto Alvear'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Esfuerzo'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Juan de Dios Malebran'
  AND u."calleInicio"    = 'Gabriela Poniente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Esfuerzo'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'La Balanza'
  AND u."calleInicio"    = 'San Carlos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Marta Brunet'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'La Colonia'
  AND u."calleInicio"    = 'Las Achiras'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Las Nieves'
  AND u."calleInicio"    = 'El Peñon'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chacareros'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Las Nieves Oriente'
  AND u."calleInicio"    = 'Gabriela Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Nogales'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Las Nieves Oriente'
  AND u."calleInicio"    = 'San Juan'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Luis Matte N° 2'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Luis Matte'
  AND u."calleInicio"    = 'Creta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Luis Matte N° 2'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Luis Matte'
  AND u."calleInicio"    = 'Creta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Luis Matte'
  AND u."calleInicio"    = 'Quinto Centenario'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Nogales'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Miguel Angel'
  AND u."calleInicio"    = 'Ejército Libertador'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Esfuerzo'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Miguel Angel'
  AND u."calleInicio"    = 'Verlaine'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Nogales'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Nemesio Vicuña'
  AND u."calleInicio"    = 'Las Nieves'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chacareros'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Nemesio Vicuña'
  AND u."calleInicio"    = 'Los Toros'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Nocedal'
  AND u."calleInicio"    = 'Domingo Tocornal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Marta Brunet'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Nocedal'
  AND u."calleInicio"    = 'San Pedro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Marta Brunet'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Nocedal'
  AND u."calleInicio"    = 'San Pedro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Pedro Lagos'
  AND u."calleInicio"    = 'Santa Elena'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Casas Viejas'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Pie Andino'
  AND u."calleInicio"    = 'Eyzaguirre'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Punta Blanca'
  AND u."calleInicio"    = 'Buin'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bajos De Mena'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Quitalmahue'
  AND u."calleInicio"    = 'San Pedro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Marta Brunet'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Rio Colorado'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Luis Matte Río Las Leñas'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Rio Las Leñas'
  AND u."calleInicio"    = 'Rio Yeso'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Esfuerzo'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'San Carlos'
  AND u."calleInicio"    = 'Nonato Coo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bajos De Mena'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'San Pedro'
  AND u."calleInicio"    = 'Juanita'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Casas Viejas'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Sánchez Fontecilla'
  AND u."calleInicio"    = 'Diego Portales'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Santa Elena'
  AND u."calleInicio"    = 'Eyzaguirre'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bajos De Mena'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Sargento Menadier'
  AND u."calleInicio"    = 'Estación Ignao'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bajos De Mena'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Sargento Menadier'
  AND u."calleInicio"    = 'Estación Ignao'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Grande'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Tocornal Grez'
  AND u."calleInicio"    = 'Circunvalación'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Casas Viejas'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Tomé'
  AND u."calleInicio"    = 'Los Loros'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Luis Matte Troncal'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Troncal San Francisco'
  AND u."calleInicio"    = '4 Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Troncal San Francisco'
  AND u."calleInicio"    = 'Las Nieves'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Esfuerzo'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Troncal San Francisco'
  AND u."calleInicio"    = 'Luis Matte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Troncal San Francisco'
  AND u."calleInicio"    = 'Valle Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Licanray'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Troncal San Francisco'
  AND u."calleInicio"    = 'Valle Central'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Casas Viejas'
  AND c.nombre           = 'Puente Alto'
  AND u."callePrincipal" = 'Uruguay'
  AND u."calleInicio"    = 'San Pedro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cruzat'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Cruzat'
  AND u."calleInicio"    = 'Salvador de Bahía'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Estadio Trasandino'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Estadio Trasandino'
  AND u."calleInicio"    = 'Santa Luisa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Parcelas'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Las Parcelas'
  AND u."calleInicio"    = 'Cuatro Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Torres'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Las Torres'
  AND u."calleInicio"    = 'Filomena Gárate'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pedro Riveros'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Las Torres'
  AND u."calleInicio"    = 'Pedro Riveros'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Tres Montes'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Lo Marcoleta'
  AND u."calleInicio"    = 'Africa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Marcoleta'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Lo Marcoleta'
  AND u."calleInicio"    = 'O''Higgins'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Marcoleta'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Lo Marcoleta'
  AND u."calleInicio"    = 'Parroquia Jesús Obrero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Marcoleta 1'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Lo Marcoleta'
  AND u."calleInicio"    = 'Puerto Antofagasta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lo Marcoleta 1'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Lo Marcoleta'
  AND u."calleInicio"    = 'Puerto Antofagasta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Hermanos Carrera'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Lo Marcoleta'
  AND u."calleInicio"    = 'San Gabriel'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Kilimanjaro'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Los Alpes'
  AND u."calleInicio"    = 'Kilimanjaro'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bernardo O''Higgins'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'O''Higgins'
  AND u."calleInicio"    = 'Leticia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Enrique'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'San Enrique'
  AND u."calleInicio"    = 'Matta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Violetas'
  AND c.nombre           = 'Quilicura'
  AND u."callePrincipal" = 'Las Torres'
  AND u."calleInicio"    = 'San Luis'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Alberdi N° 2'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Alberdi'
  AND u."calleInicio"    = 'Mapocho'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 3 Alberdi'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Alberdi'
  AND u."calleInicio"    = 'Salvador Gutierrez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 3 Alberdi'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Alberdi'
  AND u."calleInicio"    = 'Salvador Gutierrez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Alsino'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Alsino'
  AND u."calleInicio"    = 'Radal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 1 La Plata'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Augusto Matte'
  AND u."calleInicio"    = 'Juan de Barros'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 2 Transito'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Calle Tránsito'
  AND u."calleInicio"    = 'Neptuno'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Edison'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Edison'
  AND u."calleInicio"    = 'Radal'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Eduardo Charme'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Eduardo Charme'
  AND u."calleInicio"    = 'José Joaquín Pérez'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Francisco Javier'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Francisco Javier'
  AND u."calleInicio"    = 'Nueva Imperial'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 1 Jose Besa'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'José Beza'
  AND u."calleInicio"    = 'San Pablo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 2 Quinta Normal, Jose Tobias'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'José Tobias'
  AND u."calleInicio"    = 'Doctor Ottolenghi'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 1 Lope De Ulloa'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Lope de Ulloa'
  AND u."calleInicio"    = 'Mapocho'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 3 Los Sauces'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Los Sauces'
  AND u."calleInicio"    = 'La Rioja'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 3 Los Sauces'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Los Sauces'
  AND u."calleInicio"    = 'La Rioja'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Marcelo Fitte'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Marcelo Fitte'
  AND u."calleInicio"    = 'Miguel de Atero'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mercurio'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Mercurio'
  AND u."calleInicio"    = 'Camino de Loyola'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Gumercindo'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'San Gumercindo'
  AND u."calleInicio"    = 'Nueva Imperial'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Victorino Laynez'
  AND c.nombre           = 'Quinta Normal'
  AND u."callePrincipal" = 'Victorino Laynez'
  AND u."calleInicio"    = 'Nueva Imperial'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Einstein'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Avda. Einstein'
  AND u."calleInicio"    = 'Gabriela Mistral'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Guanaco'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Avda. El Guanaco'
  AND u."calleInicio"    = 'Avda. Einstein'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Guanaco'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Avda. El Guanaco'
  AND u."calleInicio"    = 'Avda. Einstein'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Serena'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Avda. La Serena'
  AND u."calleInicio"    = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Einstein Poniente'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Einstein'
  AND u."calleInicio"    = 'Coronel del Canto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chacabuco Grande'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'El Roble'
  AND u."calleInicio"    = 'Coronel del Canto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Raquel'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Raquel'
  AND u."calleInicio"    = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'N° 9 Heroes De La Concepcion'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Reina de Chile'
  AND u."calleInicio"    = 'Reina de Chile'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San José'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'San José'
  AND u."calleInicio"    = 'Zapadores'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Valdivieso'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Valdivieso'
  AND u."calleInicio"    = '8 Norte'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Zapadores'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Zapadores'
  AND u."calleInicio"    = 'Avda. Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '07:30:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Zapadores'
  AND c.nombre           = 'Recoleta'
  AND u."callePrincipal" = 'Zapadores'
  AND u."calleInicio"    = 'Recoleta'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Condell'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Avda. Condell'
  AND u."calleInicio"    = 'Topocalma'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Condell'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Avda. Condell'
  AND u."calleInicio"    = 'Topocalma'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bulnes'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Barros Arana'
  AND u."calleInicio"    = 'José Santiago Aldunate'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Bulnes'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Barros Arana'
  AND u."calleInicio"    = 'José Santiago Aldunate'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Colo Colo'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Colo Colo'
  AND u."calleInicio"    = 'General Freire'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Lourdes'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Diego Portales'
  AND u."calleInicio"    = 'Montt Varas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Balmaceda'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'José Manuel Balmaceda'
  AND u."calleInicio"    = 'Caupolicán'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Margaritas'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Las Margaritas'
  AND u."calleInicio"    = 'Puerto Montt'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Margaritas'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Las Margaritas'
  AND u."calleInicio"    = 'Puerto Montt'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Acacios'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Los Acacios'
  AND u."calleInicio"    = 'Los Aromos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Acacios'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Los Acacios'
  AND u."calleInicio"    = 'Los Aromos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Clarines'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Los Clarines'
  AND u."calleInicio"    = 'Las Margaritas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Los Clarines'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Los Clarines'
  AND u."calleInicio"    = 'Las Margaritas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manuel Rodriguez'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Manuel Rodríguez'
  AND u."calleInicio"    = 'Río Huasco'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Miraflores'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Miraflores'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Miraflores'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Miraflores'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chilectra'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Nicanor Fajardo'
  AND u."calleInicio"    = 'Domingo Santa María'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chilectra'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Nicanor Fajardo'
  AND u."calleInicio"    = 'Domingo Santa María'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pelluhue'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Pelluhue'
  AND u."calleInicio"    = 'José Manuel Infante'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pelluhue'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Pelluhue'
  AND u."calleInicio"    = 'José Manuel Infante'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Miraflores'
  AND c.nombre           = 'Renca'
  AND u."callePrincipal" = 'Vicuña Mackenna'
  AND u."calleInicio"    = 'José Manuel Infante'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Antonio Varas'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Antonio Varas'
  AND u."calleInicio"    = 'Baquedano'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Antonio Varas'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Antonio Varas'
  AND u."calleInicio"    = 'Baquedano'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manzano'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Balmaceda'
  AND u."calleInicio"    = 'Cerro Bandera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Manzano'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Balmaceda'
  AND u."calleInicio"    = 'Cerro Bandera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Manzano'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Balmaceda'
  AND u."calleInicio"    = 'Martín de Solís'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Manzano'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Balmaceda'
  AND u."calleInicio"    = 'Martín de Solís'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Costanera'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Costanera'
  AND u."calleInicio"    = 'Avda. Colón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Costanera'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Costanera'
  AND u."calleInicio"    = 'Avda. Colón'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Olivo'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Francisco de Camargo'
  AND u."calleInicio"    = 'Calderon de La Barca'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Olivo'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Francisco de Camargo'
  AND u."calleInicio"    = 'Calderon de La Barca'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Manzano'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Lo Blanco'
  AND u."calleInicio"    = 'Paso Drake'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'El Manzano'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Lo Blanco'
  AND u."calleInicio"    = 'Paso Drake'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Carvallo'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Ramón Liborio Carvallo'
  AND u."calleInicio"    = 'Barros Arana'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Yungay'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Yungay'
  AND u."calleInicio"    = 'América'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '16:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Yungay'
  AND c.nombre           = 'San Bernardo'
  AND u."callePrincipal" = 'Yungay'
  AND u."calleInicio"    = 'América'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Legua'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Calle Maríano Puga'
  AND u."calleInicio"    = 'Alcalde Pedro Alarcon'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Legua'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Calle Maríano Puga'
  AND u."calleInicio"    = 'Alcalde Pedro Alarcon'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Juan'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Comercio'
  AND u."calleInicio"    = 'San Juan'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Juan'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Comercio'
  AND u."calleInicio"    = 'San Juan'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Gaspar De Soto'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Gaspar de Soto'
  AND u."calleInicio"    = 'San Gregorio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Gaspar De Soto'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Gaspar de Soto'
  AND u."calleInicio"    = 'San Gregorio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Poblacion Chile'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Juan Sebastian Bach'
  AND u."calleInicio"    = 'Liszt'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mussa'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'San Nicolas'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mussa'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'San Nicolas'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Castrina'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Sebastopol'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Castrina'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Sebastopol'
  AND u."calleInicio"    = 'Santa Rosa'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Navarrete'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Tocornal'
  AND u."calleInicio"    = 'Isabel Riquelme'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Industrias'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Vecinal'
  AND u."calleInicio"    = 'Departamental'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Las Industrias'
  AND c.nombre           = 'San Joaquín'
  AND u."callePrincipal" = 'Vecinal'
  AND u."calleInicio"    = 'Departamental'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Agrupacion San Jose'
  AND c.nombre           = 'San José De Maipo'
  AND u."callePrincipal" = 'Avda. del Río'
  AND u."calleInicio"    = 'Inmaculada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Agrupacion San Jose'
  AND c.nombre           = 'San José De Maipo'
  AND u."callePrincipal" = 'Avda. del Río'
  AND u."calleInicio"    = 'Inmaculada'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Chiloe'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'Chiloé'
  AND u."calleInicio"    = 'Varas Mena'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Carmen Mena'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'Miguel Luis Cerda'
  AND u."calleInicio"    = 'Varas Mena'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Atacama'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'Quinta Transversal'
  AND u."calleInicio"    = 'Sexta Avenida'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Salesianos'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'San Francisco'
  AND u."calleInicio"    = 'Alvarez de Toledo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Soto Aguilar'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'Soto Aguilar'
  AND u."calleInicio"    = 'San Ignacio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Soto Aguilar'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'Soto Aguilar'
  AND u."calleInicio"    = 'San Ignacio'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Tristan Matta'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'Tristán Matta'
  AND u."calleInicio"    = 'Gauss'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:30:00', '15:30:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Tristan Matta'
  AND c.nombre           = 'San Miguel'
  AND u."callePrincipal" = 'Tristán Matta'
  AND u."calleInicio"    = 'Gauss'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Alpatacal'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Alpatacal'
  AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Alpatacal'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Alpatacal'
  AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Blanca'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Alvear'
  AND u."calleInicio"    = 'Avda. Fernandez Albano'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Blanca'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Alvear'
  AND u."calleInicio"    = 'Avda. Fernandez Albano'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Libertad/Bolivia'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Bolivia'
  AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Libertad/Bolivia'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Bolivia'
  AND u."calleInicio"    = 'Pedro Aguirre Cerda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Barros Lucos'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'El Parrón'
  AND u."calleInicio"    = 'Carlos Davila'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fernandez Albano'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Elias Fernandez'
  AND u."calleInicio"    = 'Paraguay'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Fernandez Albano'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Elias Fernandez'
  AND u."calleInicio"    = 'Paraguay'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Bandera'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'La Bandera'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'La Bandera'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'La Bandera'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mayo'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Mayo'
  AND u."calleInicio"    = 'Rivadavia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Mayo'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Mayo'
  AND u."calleInicio"    = 'Rivadavia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Sargento Candelaria'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Sargento Candelaria'
  AND u."calleInicio"    = 'Juan Antonio Rios'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Sargento Candelaria'
  AND c.nombre           = 'San Ramón'
  AND u."callePrincipal" = 'Sargento Candelaria'
  AND u."calleInicio"    = 'Juan Antonio Rios'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Aldunate'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Aldunate'
  AND u."calleInicio"    = 'Copiapó'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Aldunate'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Aldunate'
  AND u."calleInicio"    = 'Copiapó'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = '10 De Julio'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Avda. Diez de Julio'
  AND u."calleInicio"    = 'Vicuña Mackenna'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Portales'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Avda. Portales'
  AND u."calleInicio"    = 'Libertad'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Coquimbo'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Coquimbo'
  AND u."calleInicio"    = 'Nueva de Váldes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Coquimbo'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Coquimbo'
  AND u."calleInicio"    = 'Nueva de Váldes'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Esperanza'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Esperanza'
  AND u."calleInicio"    = 'Portales'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Camilo'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Fray San Camilo'
  AND u."calleInicio"    = 'Argomedo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Gaspar De La Barrera'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Gaspar de La Barrera'
  AND u."calleInicio"    = 'Longaví'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Gaspar De La Barrera'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Gaspar de La Barrera'
  AND u."calleInicio"    = 'Longaví'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Herrera'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Herrera'
  AND u."calleInicio"    = 'San Pablo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Herrera'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Herrera'
  AND u."calleInicio"    = 'San Pablo'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Martinez De Rozas'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Martínez de Rozas'
  AND u."calleInicio"    = 'Ricardo Cummings'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Martinez De Rozas'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Martínez de Rozas'
  AND u."calleInicio"    = 'Ricardo Cummings'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pedro Lagos'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Pedro Lagos'
  AND u."calleInicio"    = 'Lira'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Pedro Lagos'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Pedro Lagos'
  AND u."calleInicio"    = 'Lira'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Roberto Espinoza'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Roberto Espinoza'
  AND u."calleInicio"    = 'Victoria'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Roberto Espinoza'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Roberto Espinoza'
  AND u."calleInicio"    = 'Victoria'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Romero'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Romero'
  AND u."calleInicio"    = 'C. Villarín'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Romero'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Romero'
  AND u."calleInicio"    = 'C. Villarín'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Agustin'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'San Agustín'
  AND u."calleInicio"    = 'Bascuñan'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'San Agustin'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'San Agustín'
  AND u."calleInicio"    = 'Bascuñan'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '10:00:00', '17:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Plaza De Bolsillo Santo Domingo'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Santo Domingo'
  AND u."calleInicio"    = 'Teatinos'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '09:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Ventura Lavalle'
  AND c.nombre           = 'Santiago'
  AND u."callePrincipal" = 'Ventura Lavalle'
  AND u."calleInicio"    = 'Cuevas'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cordillera 4'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Avda. San Martín'
  AND u."calleInicio"    = 'Esq. Volcán Hudson'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Libre Villa Las Hortensias'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Calle Bombero Avilés'
  AND u."calleInicio"    = 'Esmeralda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Libre Tocornal'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Enrique Herrera'
  AND u."calleInicio"    = 'Esmeralda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Libre Tocornal'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Enrique Herrera'
  AND u."calleInicio"    = 'Esmeralda'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Francisco Chacón'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Francisco Chacón'
  AND u."calleInicio"    = 'Enrique Alcalde'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Francisco Chacón'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Francisco Chacón'
  AND u."calleInicio"    = 'Enrique Alcalde'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Francisco Chacón'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Francisco Chacón'
  AND u."calleInicio"    = 'Enrique Alcalde'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Clara Solovera'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Juana Canales'
  AND u."calleInicio"    = 'Fresia'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'lunes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cordillera 1'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Los Aromos'
  AND u."calleInicio"    = 'Uno Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'lunes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cordillera 6'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Los Aromos'
  AND u."calleInicio"    = 'Uno Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cordillera 2'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Pje. Julio Castro'
  AND u."calleInicio"    = 'Adrián Soto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '14:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Cordillera 5'
  AND c.nombre           = 'Talagante'
  AND u."callePrincipal" = 'Pje. Julio Castro'
  AND u."calleInicio"    = 'Adrián Soto'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'martes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo Huertos Familiares'
  AND c.nombre           = 'Tiltil'
  AND u."callePrincipal" = '1 Sur'
  AND u."calleInicio"    = '2 Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'martes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'miercoles'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo Huertos Familiares'
  AND c.nombre           = 'Tiltil'
  AND u."callePrincipal" = '1 Sur'
  AND u."calleInicio"    = '2 Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'miercoles'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo Huertos Familiares'
  AND c.nombre           = 'Tiltil'
  AND u."callePrincipal" = '1 Sur'
  AND u."calleInicio"    = '2 Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo Huertos Familiares'
  AND c.nombre           = 'Tiltil'
  AND u."callePrincipal" = '1 Sur'
  AND u."calleInicio"    = '2 Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Feria Modelo Huertos Familiares'
  AND c.nombre           = 'Tiltil'
  AND u."callePrincipal" = '1 Sur'
  AND u."calleInicio"    = '2 Oriente'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'jueves'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Club De Polo'
  AND c.nombre           = 'Vitacura'
  AND u."callePrincipal" = 'Avda. Monseñor Escrivá de Balaguer'
  AND u."calleInicio"    = 'Luis Carrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'jueves'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'viernes'::"enum_dias_feria_diaSemana", '08:00:00', '15:00:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Club De Polo'
  AND c.nombre           = 'Vitacura'
  AND u."callePrincipal" = 'Avda. Monseñor Escrivá de Balaguer'
  AND u."calleInicio"    = 'Luis Carrera'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'viernes'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'sabado'::"enum_dias_feria_diaSemana", '08:00:00', '14:01:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Poblacion Ines Bustos Ii'
  AND c.nombre           = 'Lampa'
  AND u."callePrincipal" = 'Avda. Chile'
  AND u."calleInicio"    = 'Juan Maisonave'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'sabado'::"enum_dias_feria_diaSemana"
  );

INSERT INTO dias_feria ("ubicacionId", "diaSemana", "horaInicio", "horaFin")
SELECT u.id, 'domingo'::"enum_dias_feria_diaSemana", '08:00:00', '14:02:00'
FROM ubicaciones u
JOIN ferias f  ON u."feriaId"       = f.id
JOIN comunas c ON f."comunaId"      = c.id
WHERE f.nombre           = 'Poblacion Ines Bustos Ii'
  AND c.nombre           = 'Lampa'
  AND u."callePrincipal" = 'Avda. Chile'
  AND u."calleInicio"    = 'Juan Maisonave'
  AND NOT EXISTS (
    SELECT 1 FROM dias_feria d
    WHERE d."ubicacionId" = u.id
      AND d."diaSemana"   = 'domingo'::"enum_dias_feria_diaSemana"
  );


-- 7. PuestoFeriante (20 asignaciones)

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. El Peral' AND u."calleInicio" = 'México'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'carlos.munoz@mail.com' AND fe.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. México' AND u."calleInicio" = 'Los Toros'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'carlos.munoz@mail.com' AND fe.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. El Peral' AND u."calleInicio" = 'México'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'rosa.sepulveda@mail.com' AND fe.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. Los Toros' AND u."calleInicio" = 'Nonato Coo'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'rosa.sepulveda@mail.com' AND fe.nombre = 'Chacareros' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. El Peral' AND u."calleInicio" = 'México'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'jorge.fuentes@mail.com' AND fe.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Arturo Prat' AND u."calleInicio" = 'Argentina'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'jorge.fuentes@mail.com' AND fe.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Angel Pimentel' AND u."calleInicio" = 'Nonato Coo'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'patricia.soto@mail.com' AND fe.nombre = 'Chacareros' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Domingo Tocornal' AND u."calleInicio" = 'Nonato Coo'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'patricia.soto@mail.com' AND fe.nombre = 'El Esfuerzo' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. El Peral' AND u."calleInicio" = 'México'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'luis.contreras@mail.com' AND fe.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Eduardo Cordero' AND u."calleInicio" = 'Santa Elena'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'luis.contreras@mail.com' AND fe.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Concha y Toro' AND u."calleInicio" = 'Elisa Correa'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'maria.gonzalez@mail.com' AND fe.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Las Nieves Oriente' AND u."calleInicio" = 'San Juan'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'maria.gonzalez@mail.com' AND fe.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Ejército Libertador' AND u."calleInicio" = 'Eyzaguirre'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'hector.araya@mail.com' AND fe.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Curaco de Vélez' AND u."calleInicio" = 'Quitalmahue'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'hector.araya@mail.com' AND fe.nombre = 'Bajos De Mena' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. El Peral' AND u."calleInicio" = 'México'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'veronica.tapia@mail.com' AND fe.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Concha y Toro' AND u."calleInicio" = 'Elisa Correa'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'veronica.tapia@mail.com' AND fe.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Arturo Prat' AND u."calleInicio" = 'Argentina'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'manuel.rojas@mail.com' AND fe.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Quitalmahue' AND u."calleInicio" = 'San Pedro'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'manuel.rojas@mail.com' AND fe.nombre = 'Bajos De Mena' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Avda. El Peral' AND u."calleInicio" = 'México'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'claudia.vega@mail.com' AND fe.nombre = 'Licanray' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;

INSERT INTO "PuestoFeriante" ("ferianteId", "ubicacionId", "createdAt", "updatedAt")
SELECT fer.id, u.id, NOW(), NOW()
FROM feriantes fer
JOIN usuarios us ON fer."usuarioId" = us.id
JOIN ubicaciones u  ON u."callePrincipal" = 'Angel Pimentel' AND u."calleInicio" = 'Nonato Coo'
JOIN ferias fe      ON u."feriaId" = fe.id
JOIN comunas c      ON fe."comunaId" = c.id
WHERE us.email = 'claudia.vega@mail.com' AND fe.nombre = 'Chacareros' AND c.nombre = 'Puente Alto'
ON CONFLICT ("ferianteId", "ubicacionId") DO NOTHING;


-- 8. RESENAS

INSERT INTO resenas ("usuarioId", "feriaId", "ubicacionId", calificacion, comentario, precio, "metodosPago", variedad, "afluenciaDetallada", "createdAt", "updatedAt")
SELECT us.id, f.id, u.id, 5, 'Una de las mejores ferias de Puente Alto. Amplia variedad de frutas y verduras frescas. La reineta estaba recién llegada. Los puestos de legumbres a granel son muy económicos.',
  'barato'::enum_resenas_precio, '["efectivo","transferencia"]', '{"frutas":5,"verduras":5,"pescados":5,"legumbres":5}', '{"manana":"alta","tarde":"media"}', NOW(), NOW()
FROM usuarios us, ferias f, ubicaciones u, comunas c
WHERE us.email = 'andres.pizarro@mail.com'
  AND f.nombre = 'Licanray' AND c.nombre = 'Puente Alto' AND f."comunaId" = c.id
  AND u."feriaId" = f.id
  AND u."callePrincipal" = 'Avda. El Peral' AND u."calleInicio" = 'México'
  AND NOT EXISTS (SELECT 1 FROM resenas r WHERE r."usuarioId" = us.id AND r."feriaId" = f.id AND r."ubicacionId" = u.id);

INSERT INTO resenas ("usuarioId", "feriaId", "ubicacionId", calificacion, comentario, precio, "metodosPago", variedad, "afluenciaDetallada", "createdAt", "updatedAt")
SELECT us.id, f.id, u.id, 4, 'Feria enorme con mucha variedad. Los puestos de especias a granel son excelentes. Merkén, ají color y orégano de muy buena calidad.',
  'barato'::enum_resenas_precio, '["efectivo"]', '{"frutas":4,"verduras":4,"especias":5,"frutosSecos":4}', '{"manana":"alta","tarde":"baja"}', NOW(), NOW()
FROM usuarios us, ferias f, ubicaciones u, comunas c
WHERE us.email = 'sofia.herrera@mail.com'
  AND f.nombre = 'Feria Grande' AND c.nombre = 'Puente Alto' AND f."comunaId" = c.id
  AND u."feriaId" = f.id
  AND u."callePrincipal" = 'Arturo Prat' AND u."calleInicio" = 'Argentina'
  AND NOT EXISTS (SELECT 1 FROM resenas r WHERE r."usuarioId" = us.id AND r."feriaId" = f.id AND r."ubicacionId" = u.id);

INSERT INTO resenas ("usuarioId", "feriaId", "ubicacionId", calificacion, comentario, precio, "metodosPago", variedad, "afluenciaDetallada", "createdAt", "updatedAt")
SELECT us.id, f.id, u.id, 4, 'Ideal para comprar no perecibles: legumbres, abarrotes, especias y frutos secos. Todo a granel y a buenos precios.',
  'barato'::enum_resenas_precio, '["efectivo","tarjeta","transferencia"]', '{"legumbres":5,"abarrotes":5,"especias":5,"frutosSecos":4}', '{"manana":"media","tarde":"baja"}', NOW(), NOW()
FROM usuarios us, ferias f, ubicaciones u, comunas c
WHERE us.email = 'andres.pizarro@mail.com'
  AND f.nombre = 'Los Nogales' AND c.nombre = 'Puente Alto' AND f."comunaId" = c.id
  AND u."feriaId" = f.id
  AND u."callePrincipal" = 'Concha y Toro' AND u."calleInicio" = 'Elisa Correa'
  AND NOT EXISTS (SELECT 1 FROM resenas r WHERE r."usuarioId" = us.id AND r."feriaId" = f.id AND r."ubicacionId" = u.id);


-- 9. LISTAS_COMPRAS

INSERT INTO listas_compras ("usuarioId", nombre, items, "createdAt", "updatedAt")
SELECT us.id, 'Compras feria del sábado',
  '[{"producto":"Manzanas","cantidad":"2 kilos","feriante":"Don Carlos","comprado":false},{"producto":"Papas","cantidad":"3 kilos","feriante":"Doña Rosa","comprado":false},{"producto":"Reineta","cantidad":"1 kilo","feriante":"Don Jorge","comprado":false},{"producto":"Porotos","cantidad":"500g","feriante":"Don Luis","comprado":false},{"producto":"Merkén","cantidad":"100g","feriante":"Doña Patty","comprado":false},{"producto":"Nueces","cantidad":"300g","feriante":"María","comprado":false},{"producto":"Miel de ulmo","cantidad":"1 frasco","feriante":"Doña Vero","comprado":false}]',
  NOW(), NOW()
FROM usuarios us WHERE us.email = 'andres.pizarro@mail.com'
  AND NOT EXISTS (SELECT 1 FROM listas_compras l WHERE l."usuarioId" = us.id AND l.nombre = 'Compras feria del sábado');

INSERT INTO listas_compras ("usuarioId", nombre, items, "createdAt", "updatedAt")
SELECT us.id, 'Lista feria semana',
  '[{"producto":"Tomates","cantidad":"1 kilo","feriante":"Doña Rosa","comprado":false},{"producto":"Cebollas","cantidad":"1 kilo","feriante":"Doña Rosa","comprado":false},{"producto":"Merluza","cantidad":"1 kilo","feriante":"Don Jorge","comprado":false},{"producto":"Lentejas","cantidad":"500g","feriante":"Don Luis","comprado":false},{"producto":"Aceitunas","cantidad":"200g","feriante":"Don Héctor","comprado":false},{"producto":"Manzanilla","cantidad":"50g","feriante":"Claudia","comprado":false},{"producto":"Arroz","cantidad":"1 kilo","feriante":"Manuel","comprado":false}]',
  NOW(), NOW()
FROM usuarios us WHERE us.email = 'sofia.herrera@mail.com'
  AND NOT EXISTS (SELECT 1 FROM listas_compras l WHERE l."usuarioId" = us.id AND l.nombre = 'Lista feria semana');

COMMIT;
