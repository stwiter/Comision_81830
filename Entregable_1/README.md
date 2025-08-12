Resumen de la Base de Datos: Bitácora de Usuarios y Equipos

1) Descripción breve

La base Bitácora concentra la información de usuarios, sus accesos (credenciales) y los activos/licencias que usan (equipos, dominios, Office 365 y antivirus). Mi idea es reemplaza hojas de cálculo con un repositorio ordenado y fácil de consultar, pensado para reportes y algún dashboard futuro.

Objetivos principales

•	Tener todo en un solo lugar y sin duplicados.
•	Saber quién tiene qué acceso y qué equipo/licencia.
•	Facilitar auditorías, inventario y decisiones operativas.
•	Dejar abierta la puerta a módulos futuros (mantenimientos, historial de activos, etc).

2) Relación entre entidades (vista simple) 1:N

Usuario ──< Credenciales
Usuario ──< Licenciamiento

Un Usuario puede tener muchas credenciales y muchos registros de licenciamiento.

3) Tablas 
Aquí se explica los códigos de los títulos de las columnas en las tablas: (abreviatura → significado)
3.1 Usuarios

IDU → id del usuario.
COD_USR → código interno/legajo.
NOM → nombre.
AP_PAT → apellido paterno.
AP_MAT → apellido materno.
EMAIL → correo del usuario (único).
UDN → unidad de negocio/sede.
F_ING → fecha de ingreso.

3.2 Credenciales

IDCRED → id del registro de credenciales.
IDU → id del usuario al que pertenece.
CRE_O365 → clave/acceso de Office 365.
CRE_PC → clave del equipo/dominio.
USER_NS → usuario de Netship.
CRE_NS → clave de Netship.
ACT → si el acceso está activo.

3.3 Licenciamiento

IDLIC → id del registro de licenciamiento.
IDU → id del usuario relacionado.
NOM_EQ → nombre del equipo (p. ej. PC-001).
NOM_DOM → dominio (p. ej. DOMINIO.COM).
CORR_M_O365 → correo usado en Office 365.
NS_O365 → número de serie/licencia O365.
F_COMP_O365 → fecha de compra O365.
NS_AV → número de serie/licencia antivirus.
F_COMP_AV → fecha de compra antivirus.
ACT → si el activo/licencia está activo.

