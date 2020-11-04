-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2020 a las 21:15:44
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_clc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos_mrp`
--

CREATE TABLE `activos_mrp` (
  `pk_id_activos_mrp` int(10) NOT NULL,
  `nombre_activos_mrp` varchar(45) DEFAULT NULL,
  `descripcion_activos_mrp` varchar(45) DEFAULT NULL,
  `precio_activos_mrp` double DEFAULT NULL,
  `estado_activos_mrp` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `activos_mrp`
--

INSERT INTO `activos_mrp` (`pk_id_activos_mrp`, `nombre_activos_mrp`, `descripcion_activos_mrp`, `precio_activos_mrp`, `estado_activos_mrp`) VALUES
(1, 'prueba', 'sad', 234, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `pk_id_aplicacion` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `nombre_aplicacion` varchar(40) NOT NULL,
  `descripcion_aplicacion` varchar(45) NOT NULL,
  `estado_aplicacion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`pk_id_aplicacion`, `fk_id_modulo`, `nombre_aplicacion`, `descripcion_aplicacion`, `estado_aplicacion`) VALUES
(1, 1, 'Login', 'Ventana de Ingreso', 1),
(2, 1, 'Mantenimiento Usuario', 'Mantenimientos de usuario', 1),
(3, 1, 'Mantenimiento Aplicacion', 'ABC de las Aplicaciones', 1),
(4, 1, 'Mantenimiento Perfil', 'ABC de perfiles', 1),
(5, 1, 'Asignacion de Aplicaciones a Perfil', 'Asignacion Aplicacion y perfil', 1),
(6, 1, 'Asignacaion de Aplicaciones', 'Asignacion especificas a un usuario', 1),
(7, 1, 'Consulta Aplicacion', 'Mantenimiento de Aplicaciones', 1),
(8, 1, 'Agregar Modulo', 'Mantenimientos de Modulos', 1),
(9, 1, 'Consultar Perfil', 'Consultas de perfiles disponibles', 1),
(10, 1, 'Permisos', 'Asignar permisos a perfiles y aplicaciones', 1),
(11, 1, 'Bitacora', 'Guarda todos los movimientos', 1),
(3301, 7, 'MDI MRP', 'ventana principal de mrp', 1),
(3302, 7, 'Mantenimiento Productos', 'Para productos', 1),
(3303, 7, 'Mantenimientos Tipo de productos', 'Son los tipos de productos que se manejan', 1),
(3304, 7, 'Mantenimiento de estado de Producción', 'Son los Estados de producción', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion_perfil`
--

CREATE TABLE `aplicacion_perfil` (
  `pk_id_aplicacion_perfil` int(10) NOT NULL,
  `fk_idaplicacion_aplicacion_perfil` int(10) DEFAULT NULL,
  `fk_idperfil_aplicacion_perfil` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacion_perfil` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aplicacion_perfil`
--

INSERT INTO `aplicacion_perfil` (`pk_id_aplicacion_perfil`, `fk_idaplicacion_aplicacion_perfil`, `fk_idperfil_aplicacion_perfil`, `fk_idpermiso_aplicacion_perfil`) VALUES
(1, 1, 1, 1),
(2, 4, 1, 2),
(3, 5, 1, 3),
(4, 2, 1, 4),
(5, 3, 1, 5),
(6, 6, 1, 6),
(7, 8, 1, 7),
(8, 2, 3, 8),
(9, 3, 3, 9),
(10, 4, 3, 11),
(11, 2, 4, 12),
(12, 8, 4, 13),
(13, 8, 5, 15),
(14, 3301, 1, 18),
(15, 3302, 1, 19),
(16, 3303, 1, 20),
(17, 3304, 1, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion_usuario`
--

CREATE TABLE `aplicacion_usuario` (
  `pk_id_aplicacion_usuario` int(10) NOT NULL,
  `fk_idlogin_aplicacion_usuario` int(10) DEFAULT NULL,
  `fk_idaplicacion_aplicacion_usuario` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacion_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aplicacion_usuario`
--

INSERT INTO `aplicacion_usuario` (`pk_id_aplicacion_usuario`, `fk_idlogin_aplicacion_usuario`, `fk_idaplicacion_aplicacion_usuario`, `fk_idpermiso_aplicacion_usuario`) VALUES
(1, 1, 4, 1),
(2, 1, 5, 2),
(3, 1, 6, 3),
(4, 3, 8, 10),
(5, 4, 6, 14),
(6, 5, 5, 16),
(7, 5, 2, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ascenso`
--

CREATE TABLE `ascenso` (
  `pk_id_ascenso` int(11) NOT NULL,
  `fk_id_empleado_ascenso` int(11) DEFAULT NULL,
  `fecha_ascenso` varchar(10) DEFAULT NULL,
  `fk_puesto_anterior_ascenso` int(11) NOT NULL,
  `fk_departamento_anterior_ascenso` int(11) DEFAULT NULL,
  `salario_anterior_ascenso` double DEFAULT NULL,
  `fk_puesto_nuevo_ascenso` int(11) DEFAULT NULL,
  `fk_departamento_nuevo_ascenso` int(11) DEFAULT NULL,
  `salario_nuevo_ascenso` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baja`
--

CREATE TABLE `baja` (
  `pk_id_baja` int(11) NOT NULL,
  `fk_id_empleado_baja` int(11) DEFAULT NULL,
  `fk_id_tipo_baja` int(11) DEFAULT NULL,
  `prestaciones_baja` double DEFAULT NULL,
  `tiempo_laborado_baja` int(11) DEFAULT NULL,
  `fecha_despido_baja` varchar(10) DEFAULT NULL,
  `causa_bajas` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance_detalle`
--

CREATE TABLE `balance_detalle` (
  `pk_id_balance_encabezado` int(11) NOT NULL,
  `pk_id_cuenta_contable` int(11) NOT NULL,
  `debe_balance_detalle` double DEFAULT NULL,
  `haber_balance_detalle` double DEFAULT NULL,
  `deudor_balance_detalle` double DEFAULT NULL,
  `acreedor_balance_detalle` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance_encabezado`
--

CREATE TABLE `balance_encabezado` (
  `pk_id_balance_encabezado` int(11) NOT NULL,
  `descripcion_balance_encabezado` varchar(75) DEFAULT NULL,
  `fecha_creacion_balance_encabezado` datetime DEFAULT NULL,
  `total_debe_haber_balance_encabezado` double DEFAULT NULL,
  `total_deudor_acreedor_balance_encabezado` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `pk_id_banco` int(11) NOT NULL,
  `nombre_banco` varchar(50) DEFAULT NULL,
  `estado_banco` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `pk_id_bitacora` int(10) NOT NULL,
  `fk_idusuario_bitacora` int(10) DEFAULT NULL,
  `fk_idaplicacion_bitacora` int(10) DEFAULT NULL,
  `fechahora_bitacora` varchar(50) DEFAULT NULL,
  `direccionhost_bitacora` varchar(20) DEFAULT NULL,
  `nombrehost_bitacora` varchar(20) DEFAULT NULL,
  `accion_bitacora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`pk_id_bitacora`, `fk_idusuario_bitacora`, `fk_idaplicacion_bitacora`, `fechahora_bitacora`, `direccionhost_bitacora`, `nombrehost_bitacora`, `accion_bitacora`) VALUES
(1, 1, 1, '04/11/2020 10:23:30', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(2, 1, 1, '04/11/2020 10:29:34', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(4, 1, 1, '04/11/2020 12:13:34', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(5, 1, 1, '04/11/2020 12:22:27', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(6, 1, 1, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(7, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(8, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(9, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(10, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(11, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Aplicaciones'),
(12, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Insercion de Aplicacion a perfil'),
(13, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(14, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Aplicaciones'),
(15, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Insercion de Aplicacion a perfil'),
(16, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(17, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Aplicaciones'),
(18, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Insercion de Aplicacion a perfil'),
(19, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(20, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Aplicaciones'),
(21, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Insercion de Aplicacion a perfil'),
(22, 1, 3, '04/11/2020 12:26:32', '192.168.1.178', 'BRYANMZ', 'Consulta Perfiles'),
(23, 1, 1, '04/11/2020 12:33:57', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(24, 1, 1, '04/11/2020 12:35:24', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(25, 1, 1, '04/11/2020 12:33:57', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(26, 1, 1, '04/11/2020 12:38:46', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(27, 1, 1, '04/11/2020 12:40:56', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(28, 1, 1, '04/11/2020 12:46:27', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(29, 1, 1, '04/11/2020 12:49:33', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(30, 1, 1, '04/11/2020 12:52:41', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(31, 1, 1, '04/11/2020 12:55:41', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(32, 1, 3302, '04/11/2020 12:55:41', '192.168.1.178', 'BRYANMZ', ' INSERT INTO activos_mrp VALUES ( 1,  dasd,  asdsa,  3424,  2) '),
(33, 1, 1, '04/11/2020 13:00:03', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(34, 1, 3302, '04/11/2020 13:00:03', '192.168.1.178', 'BRYANMZ', 'Cancelar'),
(35, 1, 1, '04/11/2020 13:04:52', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(36, 1, 3302, '04/11/2020 13:04:52', '192.168.1.178', 'BRYANMZ', ' INSERT INTO activos_mrp VALUES ( 1,  prueba,  sad,  234,  1) '),
(37, 1, 1, '04/11/2020 13:13:05', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(38, 1, 1, '04/11/2020 13:15:05', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(39, 1, 1, '04/11/2020 13:24:20', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(40, 1, 1, '04/11/2020 13:26:29', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(41, 1, 1, '04/11/2020 13:28:19', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(42, 1, 1, '04/11/2020 13:31:00', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(43, 1, 1, '04/11/2020 13:32:02', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(44, 1, 1, '04/11/2020 13:38:45', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(45, 1, 1, '04/11/2020 13:39:21', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(47, 1, 1, '04/11/2020 13:41:28', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(48, 1, 1, '04/11/2020 13:42:16', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(49, 1, 3303, '04/11/2020 13:42:16', '192.168.1.178', 'BRYANMZ', ' INSERT INTO tipo_inventario VALUES ( 1,  prueba,  prueba de,  1) '),
(50, 1, 1, '04/11/2020 13:44:19', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(51, 1, 3304, '04/11/2020 13:44:19', '192.168.1.178', 'BRYANMZ', ' INSERT INTO estado_produccion VALUES ( 1,  prueba,  prueba,  1) '),
(52, 1, 1, '04/11/2020 13:46:15', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(53, 1, 1, '04/11/2020 13:51:09', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(54, 1, 1, '04/11/2020 13:54:06', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso'),
(55, 1, 1, '04/11/2020 14:02:55', '192.168.1.178', 'BRYANMZ', 'Logeo Exitoso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `pk_id_bodega` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `descripcion_bodega` varchar(45) NOT NULL,
  `dimensiones_bodega` double(5,2) NOT NULL,
  `direccion_bodega` varchar(45) NOT NULL,
  `telefono_bodega` int(8) NOT NULL,
  `estado_bodega` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitacion`
--

CREATE TABLE `capacitacion` (
  `pk_id_capacitacion` int(11) NOT NULL,
  `fk_id_encabezado_capacitacion` int(11) DEFAULT NULL,
  `fk_id_empleado_capacitacion` int(11) DEFAULT NULL,
  `resultado_capacitacion` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `pk_id_categoria_producto` int(10) NOT NULL,
  `nombre_categoria_producto` varchar(35) NOT NULL,
  `descripcion_categoria_producto` varchar(60) NOT NULL,
  `estado_categoria_producto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_tamaño`
--

CREATE TABLE `categoria_tamaño` (
  `pk_id_categoria_tamaño` int(11) NOT NULL,
  `nombre_categoria_tamaño` varchar(45) DEFAULT NULL,
  `descripcion_categoria_tamaño` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_tipo`
--

CREATE TABLE `categoria_tipo` (
  `pk_id_categoria_tipo` int(11) NOT NULL,
  `nombre_categoria_tipo` varchar(45) DEFAULT NULL,
  `descripcion_categoria_tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `pk_id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(45) DEFAULT NULL,
  `apellido_cliente` varchar(45) DEFAULT NULL,
  `fecha_de_nacimiento_cliente` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencia_desarrollo`
--

CREATE TABLE `competencia_desarrollo` (
  `pk_id_competencia_desarrollo` int(11) NOT NULL,
  `fk_id_encabezado_competencia` int(11) NOT NULL,
  `fk_id_tipo_competencia_desarrollo` int(11) DEFAULT NULL,
  `resultado_competencia_desarrollo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_detalle`
--

CREATE TABLE `compra_detalle` (
  `fk_id_compra_encabezado` int(10) NOT NULL,
  `cod_linea_compra_detalle` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad_compra_detalle` int(10) NOT NULL,
  `precio_unitario_compra_detalle` double(8,2) NOT NULL,
  `subtotal_compra_detalle` double(12,2) NOT NULL,
  `estado_compra_detalle` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_encabezado`
--

CREATE TABLE `compra_encabezado` (
  `pk_id_compra_encabezado` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `fec_compra_encabezado_compra` datetime NOT NULL,
  `total_compra_encabezado_compra` double(12,2) NOT NULL,
  `estado_encabezado_compra` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_inteligente`
--

CREATE TABLE `consulta_inteligente` (
  `pk_id_consulta_inteligente` int(11) NOT NULL,
  `nombre_consulta_inteligente` varchar(100) DEFAULT NULL,
  `contenido_consulta_inteligente` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_asistencia`
--

CREATE TABLE `control_asistencia` (
  `pk_id_control_asistencia` int(11) NOT NULL,
  `fk_id_control_asistencia_empleado` int(11) DEFAULT NULL,
  `fk_id_control_asistencia_encabezado_nomina` int(11) DEFAULT NULL,
  `dias_laborados` int(11) DEFAULT NULL,
  `dias_ausente_justificados` int(11) DEFAULT NULL,
  `dias_ausente_injustificados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_calidad`
--

CREATE TABLE `control_calidad` (
  `pk_id_control_calidad` int(10) NOT NULL,
  `fk_id_orden_produccion_control_calidad` int(11) NOT NULL,
  `fk_id_inventario_control_calidad` int(11) NOT NULL,
  `fk_id_responsable_control_calidad` int(10) NOT NULL,
  `resultado_control_calidad` varchar(45) DEFAULT NULL,
  `estado_control_calidad` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_empleado`
--

CREATE TABLE `control_empleado` (
  `pk_idControlEmpleado` int(11) NOT NULL,
  `Horas_Efectivas_De_Trabajo_controlempleado` varchar(45) DEFAULT NULL,
  `Horas_Extras_controlempleado` varchar(45) DEFAULT NULL,
  `Comisiones_controlempleado` varchar(45) DEFAULT NULL,
  `fK_id_empleado_controlempleado` int(11) NOT NULL,
  `fk_id_venta_control_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_horas`
--

CREATE TABLE `control_horas` (
  `pk_id_control_horas` int(11) NOT NULL,
  `fk_id_control_horas_empleado` int(11) DEFAULT NULL,
  `fk_id_control_horas_encabezado_nomina` int(11) DEFAULT NULL,
  `horas_hordinarias` double DEFAULT NULL,
  `horas_extra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_producto`
--

CREATE TABLE `control_producto` (
  `pk_id_control_producto` int(10) NOT NULL,
  `fk_id_orden_produccion_control_producto` int(10) DEFAULT NULL,
  `fk_id_estado_produccion_control_producto` int(10) DEFAULT NULL,
  `resultado_control_producto` varchar(45) DEFAULT NULL,
  `estado_control_producto` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo_cliente`
--

CREATE TABLE `correo_cliente` (
  `pk_id_correo_cliente` int(11) NOT NULL,
  `correo_correo_cliente` varchar(45) DEFAULT NULL,
  `fk_id_cliente_correo_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo_proveedor`
--

CREATE TABLE `correo_proveedor` (
  `pk_id_correo_proveedor` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `correo_correo_proveedor` varchar(50) NOT NULL,
  `estado_correo_proveedor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_por_cobrar`
--

CREATE TABLE `cuentas_por_cobrar` (
  `pk_id_cuenta_po_cobrar` int(11) NOT NULL,
  `cuota_cuentas_por_cobrar` varchar(45) NOT NULL,
  `abono_cuentas_por_cobrar` varchar(45) DEFAULT NULL,
  `fk_id_factura_cuentas_por_cobrar` int(11) NOT NULL,
  `fk_id_cliente_cuentas_por_cobrar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_bancaria`
--

CREATE TABLE `cuenta_bancaria` (
  `pk_id_numero_cuenta_bancaria` int(11) NOT NULL,
  `fk_id_banco` int(11) NOT NULL,
  `fk_id_propietario` int(11) NOT NULL,
  `fk_id_tipo_moneda` int(11) NOT NULL,
  `saldo_cuenta_bancaria` double DEFAULT NULL,
  `fecha_apertura_cuenta_bancaria` datetime DEFAULT NULL,
  `estado_apertura_cuenta_bancaria` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_contable`
--

CREATE TABLE `cuenta_contable` (
  `pk_id_cuenta_contable` int(11) NOT NULL,
  `nombre_cuenta_contable` varchar(75) DEFAULT NULL,
  `nivel_cuenta_contable` int(11) DEFAULT NULL,
  `fk_cuenta_padre_cuenta_contable` int(11) DEFAULT NULL,
  `saldo_anterior_cuenta_contable` double DEFAULT NULL,
  `saldo_actual_cuenta_contable` double DEFAULT NULL,
  `cargo_mes_cuenta_contable` double DEFAULT NULL,
  `abono_mes_cuenta_contable` double DEFAULT NULL,
  `cargo_acumulado_cuenta_contable` double DEFAULT NULL,
  `abono_acumulado_cuenta_contable` double DEFAULT NULL,
  `estado_cuenta_contable` tinyint(4) DEFAULT NULL,
  `fk_id_tipo_cuenta_contable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `pk_id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `capacitador_curso` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deduccion`
--

CREATE TABLE `deduccion` (
  `pk_id_deduccion` int(11) NOT NULL,
  `nombre_deduccion` varchar(45) DEFAULT NULL,
  `monto_deduccion` double DEFAULT NULL,
  `descripcion_deduccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `pk_id_departamento` int(10) NOT NULL,
  `nombre_departamento` varchar(30) NOT NULL,
  `descripcion_departamento` varchar(45) NOT NULL,
  `estado_departamento` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento_empresarial`
--

CREATE TABLE `departamento_empresarial` (
  `pk_id__departamento_empresarial` int(11) NOT NULL,
  `nombre_departamento_empresarial` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_bitacora`
--

CREATE TABLE `detalle_bitacora` (
  `pk_id_detalle_bitacora` int(10) NOT NULL,
  `fk_idbitacora_detalle_bitacora` int(10) DEFAULT NULL,
  `querryantigua_detalle_bitacora` varchar(50) DEFAULT NULL,
  `querrynueva_detalle_bitacora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `pk_id_detalle_factura` int(11) NOT NULL,
  `fk_id_factura_detalle_factura` int(11) NOT NULL,
  `fk_id_producto_detalle_factura` int(11) NOT NULL,
  `cantidad_detalle_factura` int(11) DEFAULT NULL,
  `precio_detalle_factura` float DEFAULT NULL,
  `descuento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_hora_empleado`
--

CREATE TABLE `detalle_hora_empleado` (
  `pk_id_detalle_hora_empleado` int(10) NOT NULL,
  `fk_id_hora_empleado_detalle` int(10) DEFAULT NULL,
  `descripcion_detalle_hora_empleado` varchar(250) DEFAULT NULL,
  `tiempo_detalle_hora_empleado` double DEFAULT NULL,
  `estado_detalle_hora_empleado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_nomina`
--

CREATE TABLE `detalle_nomina` (
  `pk_id_detalle_nomina` int(11) NOT NULL,
  `fk_id_encabezado_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_empleado_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_percepciones_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_deducciones_detalle_nomina` int(11) DEFAULT NULL,
  `salario_base_detalle_nomina` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `pk_id_detalle_pedido` int(11) NOT NULL,
  `cantidad_producto` varchar(45) DEFAULT NULL,
  `fk_id_producto` int(11) NOT NULL,
  `fk_id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_receta`
--

CREATE TABLE `detalle_receta` (
  `pk_id_detalle_detalle_receta` int(10) NOT NULL,
  `fk_id_receta_encabezado_detalle` int(10) DEFAULT NULL,
  `fk_id_estado_produccion_detalle_receta` int(10) DEFAULT NULL,
  `fk_id_activos_mrp_detalle_receta` int(10) DEFAULT NULL,
  `cantidad_detalle_receta` double DEFAULT NULL,
  `costo_unitario_detalle_receta` double DEFAULT NULL,
  `estado_detalle_receta` tinyint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `pk_id_direccion` int(11) NOT NULL,
  `departamento_direccion` varchar(45) DEFAULT NULL,
  `zona_direccion` varchar(7) DEFAULT NULL,
  `municipio_direccion` varchar(100) DEFAULT NULL,
  `residencia_direccion` varchar(45) DEFAULT NULL,
  `fk_empleado_direccion` int(11) DEFAULT NULL,
  `fk_reclutamiento_direccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_cliente`
--

CREATE TABLE `direccion_cliente` (
  `pk_id_direccion_cliente` int(11) NOT NULL,
  `numero_direccion_cliente` varchar(45) DEFAULT NULL,
  `calle_direccion_cliente` varchar(45) DEFAULT NULL,
  `colonia_direccion_cliente` varchar(45) DEFAULT NULL,
  `ciudad_direccion_cliente` varchar(45) DEFAULT NULL,
  `fk_idcliente_direccion_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `pk_id_empleado` int(11) NOT NULL,
  `nombre1_empleado` varchar(45) DEFAULT NULL,
  `nombre2_empleado` varchar(45) DEFAULT NULL,
  `apellido1_empleado` varchar(45) DEFAULT NULL,
  `apellido2_empleado` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_empleado` varchar(10) DEFAULT NULL,
  `dpi_empleado` int(11) DEFAULT NULL,
  `fk_id_genero_empleado` int(11) DEFAULT NULL,
  `fk_id_estado_civil_empleado` int(11) DEFAULT NULL,
  `email_empleado` varchar(125) DEFAULT NULL,
  `telefono_empleado` int(11) DEFAULT NULL,
  `numero_iggs_empleado` int(11) DEFAULT NULL,
  `fk_id_licencia_conducir_empleado` int(11) DEFAULT NULL,
  `fk_id_puesto_empleado` int(11) DEFAULT NULL,
  `cuenta_bancaria_empleado` int(11) DEFAULT NULL,
  `fk_id_departamento_empresarial_empleado` int(11) DEFAULT NULL,
  `estado_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_capacitacion`
--

CREATE TABLE `encabezado_capacitacion` (
  `pk_id_encabezado_capacitacion` int(11) NOT NULL,
  `nombre_encabezado_capacitacion` varchar(45) DEFAULT NULL,
  `fecha_inicio_encabezado_capacitacion` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_capacitacion` varchar(10) DEFAULT NULL,
  `fk_id_curso_encabezado_capacitacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_competencia`
--

CREATE TABLE `encabezado_competencia` (
  `pk_id_encabezado_competencia` int(11) NOT NULL,
  `fk_id_empleado_encabezado_competencia` int(11) DEFAULT NULL,
  `fecha_inicio_encabezado_competencia` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_competencia` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_nomina`
--

CREATE TABLE `encabezado_nomina` (
  `pk_id_encabezado_nomina` int(11) NOT NULL,
  `nombre_encabezado_nomina` varchar(45) DEFAULT NULL,
  `fecha_inicio_encabezado_nomina` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_nomina` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado_bodega`
--

CREATE TABLE `encargado_bodega` (
  `pk_id_encargado_bodega` int(10) NOT NULL,
  `fk_id_empleado` int(10) NOT NULL,
  `fk_id_bodega` int(10) NOT NULL,
  `estado_encargado_bodega` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista`
--

CREATE TABLE `entrevista` (
  `pk_id_entrevista` int(11) NOT NULL,
  `fk_id_empleado_entrevista` int(11) DEFAULT NULL,
  `fk_id_reclutamiento_entrevista` int(11) DEFAULT NULL,
  `fk_id_tipo_entrevista` int(11) DEFAULT NULL,
  `resultado_entrevista` int(11) DEFAULT NULL,
  `comentarios_entrevistador_entrevista` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `pk_id_estado_civil` int(11) NOT NULL,
  `nombre_estado_civil` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_produccion`
--

CREATE TABLE `estado_produccion` (
  `pk_id_estado_produccion` int(10) NOT NULL,
  `nombre_estado_produccion` varchar(45) DEFAULT NULL,
  `duracion_estado_produccion` varchar(45) DEFAULT NULL,
  `estado_estado_produccion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_produccion`
--

INSERT INTO `estado_produccion` (`pk_id_estado_produccion`, `nombre_estado_produccion`, `duracion_estado_produccion`, `estado_estado_produccion`) VALUES
(1, 'prueba', 'prueba', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existencia`
--

CREATE TABLE `existencia` (
  `pk_id_existencia` int(10) NOT NULL,
  `fk_id_bodega` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad_existencia` int(10) NOT NULL,
  `estado_existencia` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabrica`
--

CREATE TABLE `fabrica` (
  `pk_id_fabrica` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `dimensiones_fabrica` double(5,2) NOT NULL,
  `direccion_fabrica` varchar(45) NOT NULL,
  `telefono_fabrica` int(8) NOT NULL,
  `descripcion_fabrica` varchar(45) NOT NULL,
  `estado_fabrica` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `pk_id_factura` int(11) NOT NULL,
  `fk_id_cliente_factura` int(11) NOT NULL,
  `fK_id_empleado_factura` int(11) NOT NULL,
  `fecha_factura` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falta`
--

CREATE TABLE `falta` (
  `pk_id_falta` int(11) NOT NULL,
  `nombre_falta` varchar(45) DEFAULT NULL,
  `descripción_falta` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falta_empleado`
--

CREATE TABLE `falta_empleado` (
  `pk_id_falta_empleado` int(11) NOT NULL,
  `fk_id_empleado_falta_empleado` int(11) DEFAULT NULL,
  `fk_id_tipo_falta_empleado` int(11) DEFAULT NULL,
  `fecha_falta_empleado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_academica`
--

CREATE TABLE `formacion_academica` (
  `pk_id_formacion_academica` int(11) NOT NULL,
  `nombre_formacion_academica` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `pk_id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `pk_id_horario` int(11) NOT NULL,
  `nombre_horario` varchar(45) DEFAULT NULL,
  `descripcion_horario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora_empleado`
--

CREATE TABLE `hora_empleado` (
  `pk_id_hora_empleado` int(10) NOT NULL,
  `fk_id_empleado_hora_empleado` int(10) DEFAULT NULL,
  `fk_id_orden_produccion_hora_empleado` int(11) DEFAULT NULL,
  `fecha_hora_empleado` date DEFAULT NULL,
  `estado_hora_empleado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `pk_id_inventario` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad_inventario` int(10) NOT NULL,
  `estado_inventario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventariocrm`
--

CREATE TABLE `inventariocrm` (
  `pk_id_inventario` int(11) NOT NULL,
  `existencia_inventario` int(11) DEFAULT NULL,
  `fk_idproducto_inventario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventariomrp`
--

CREATE TABLE `inventariomrp` (
  `pk_id_inventario` int(10) NOT NULL,
  `fk_id_activos_mrp_inventario` int(10) DEFAULT NULL,
  `fk_id_tipo_inventario_inventario` int(10) DEFAULT NULL,
  `fecha_inventario` date DEFAULT NULL,
  `cantidad_inventario` int(10) DEFAULT NULL,
  `estado_inventario` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia_conduccion`
--

CREATE TABLE `licencia_conduccion` (
  `pk_id_licencia_conduccion` int(11) NOT NULL,
  `tipo_licencia_conduccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_producto`
--

CREATE TABLE `linea_producto` (
  `pk_id_linea_producto` int(10) NOT NULL,
  `nombre_linea_producto` varchar(25) NOT NULL,
  `descripcion_linea_producto` varchar(50) NOT NULL,
  `estado_linea_producto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `pk_id_login` int(10) NOT NULL,
  `usuario_login` varchar(45) DEFAULT NULL,
  `contraseña_login` varchar(45) DEFAULT NULL,
  `nombreCompleto_login` varchar(100) DEFAULT NULL,
  `estado_login` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`pk_id_login`, `usuario_login`, `contraseña_login`, `nombreCompleto_login`, `estado_login`) VALUES
(1, 'sistema', 'bi0PL96rbxVRPKJQsLJJAg==', 'Usuario de prueba', 1),
(2, 'bjsican', '0FOYy5u5h0djKjzCYqfvkg==', 'Billy Sican', 1),
(3, 'bmaza', 'xTfsC3/XR/CVyDvNr1Fs+g==', 'Bryan Mazariegos', 1),
(4, 'jsican', 'jsican', 'Jeshua Sican', 0),
(5, 'jmorataya', '123', 'Julio Morataya', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `pk_id_marca` int(10) NOT NULL,
  `descripcion_marca` varchar(45) NOT NULL,
  `estado_marca` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `pk_id_modulo` int(10) NOT NULL,
  `nombre_modulo` varchar(30) NOT NULL,
  `descripcion_modulo` varchar(50) NOT NULL,
  `estado_modulo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`pk_id_modulo`, `nombre_modulo`, `descripcion_modulo`, `estado_modulo`) VALUES
(1, 'Seguridad', 'Aplicaciones de seguridad', 1),
(2, 'Consultas', 'Consultas Inteligentes', 1),
(3, 'Reporteador', 'Aplicaciones de Reporteador', 1),
(4, 'HRM', 'Aplicaciones de Recursos Humanos', 1),
(5, 'FRM', 'Aplicaciones de Finanzas', 1),
(6, 'SCM', 'Aplicaciones Control de Inventario', 1),
(7, 'MRP', 'Aplicaciones de Produccion', 1),
(8, 'CRM', 'Aplicaciones de Ventas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_inventario`
--

CREATE TABLE `movimiento_inventario` (
  `pk_id_movimiento_inventario` int(10) NOT NULL,
  `fecha_movimiento_inventario` datetime NOT NULL,
  `fk_id_tipo_movimiento` int(10) NOT NULL,
  `fk_id_ruta` int(10) NOT NULL,
  `fk_id_vehiculo` int(10) NOT NULL,
  `documento_asociado_movimiento_inventario` int(10) NOT NULL,
  `descripcion_movimiento_inventario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_inventario_detalle`
--

CREATE TABLE `movimiento_inventario_detalle` (
  `pk_id_movimiento_inventario_detalle` int(10) NOT NULL,
  `fk_id_movimiento_inventario` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad_inventario_detalle` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `pk_id_municipio` int(10) NOT NULL,
  `fk_id_departamento` int(10) NOT NULL,
  `nombre_municipio` varchar(30) NOT NULL,
  `descripcion_municipio` varchar(45) NOT NULL,
  `estado_municipio` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE `orden_compra` (
  `pk_id_orden_compra` int(10) NOT NULL,
  `fk_id_materia_prima_insumo_orden_compra` int(11) DEFAULT NULL,
  `fecha_envio_orden_compra` date DEFAULT NULL,
  `cantidad_orden_compra` int(11) DEFAULT NULL,
  `estado_orden_compra` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_produccion`
--

CREATE TABLE `orden_produccion` (
  `pk_id_orden_produccion` int(10) NOT NULL,
  `fk_id_tipo_producto_orden_produccion` int(10) DEFAULT NULL,
  `cantidad_orden_produccion` int(10) DEFAULT NULL,
  `fecha_orden_produccion` varchar(45) DEFAULT NULL,
  `estado_orden_produccion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `pk_id_pais` int(10) NOT NULL,
  `nombre_pais` varchar(40) NOT NULL,
  `capital_pais` varchar(40) NOT NULL,
  `estado_pais` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `pk_id_pedido` int(11) NOT NULL,
  `nombre_pedido` varchar(45) DEFAULT NULL,
  `fecha_pedido` varchar(45) DEFAULT NULL,
  `fk_id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `fk_id_pedido_encabezado` int(10) NOT NULL,
  `cod_linea_pedido_detalle` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad_pedido_detalle` int(10) NOT NULL,
  `precio_unitario_pedido_detalle` double(8,2) NOT NULL,
  `subtotal_pedido_detalle` double(12,2) NOT NULL,
  `estado_pedido_detalle` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_encabezado`
--

CREATE TABLE `pedido_encabezado` (
  `pk_id_pedido_encabezado` int(10) NOT NULL,
  `fk_id_fabrica` int(10) NOT NULL,
  `fec_pedido_pedido_encabezado` datetime NOT NULL,
  `total_pedido_encabezado` double(12,2) NOT NULL,
  `estado_pedido_encabezado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `percepcion`
--

CREATE TABLE `percepcion` (
  `pk_id_percepcion` int(11) NOT NULL,
  `nombre_percepcion` varchar(45) DEFAULT NULL,
  `monto_percepcion` double DEFAULT NULL,
  `descripcion_percepcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `pk_id_perfil` int(10) NOT NULL,
  `nombre_perfil` varchar(50) DEFAULT NULL,
  `descripcion_perfil` varchar(100) DEFAULT NULL,
  `estado_perfil` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`pk_id_perfil`, `nombre_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, 'Admin', 'Administracion del programa', 1),
(2, 'Sistema', 'Administrador del sistema', 1),
(3, 'Digitador', 'Digitador para Cuentas', 1),
(4, 'Consultor', 'Unicamente consultas ', 1),
(5, 'Reportes', 'Ingreso y consultas de reportes', 1),
(6, 'Pruebas', 'pruebas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `pk_id_perfil_usuario` int(10) NOT NULL,
  `fk_idusuario_perfil_usuario` int(10) DEFAULT NULL,
  `fk_idperfil_perfil_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`pk_id_perfil_usuario`, `fk_idusuario_perfil_usuario`, `fk_idperfil_perfil_usuario`) VALUES
(1, 1, 1),
(2, 3, 3),
(4, 4, 1),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `pk_id_permiso` int(10) NOT NULL,
  `insertar_permiso` tinyint(1) DEFAULT NULL,
  `modificar_permiso` tinyint(1) DEFAULT NULL,
  `eliminar_permiso` tinyint(1) DEFAULT NULL,
  `consultar_permiso` tinyint(1) DEFAULT NULL,
  `imprimir_permiso` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`pk_id_permiso`, `insertar_permiso`, `modificar_permiso`, `eliminar_permiso`, `consultar_permiso`, `imprimir_permiso`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 0, 0, 1, 1),
(3, 1, 1, 1, 0, 0),
(4, 1, 1, 1, 1, 1),
(5, 1, 1, 1, 1, 1),
(6, 1, 1, 1, 1, 1),
(7, 1, 1, 1, 1, 1),
(8, 1, 0, 1, 0, 0),
(9, 1, 1, 0, 0, 0),
(10, 1, 1, 0, 0, 0),
(11, 1, 1, 1, 1, 1),
(12, 0, 0, 0, 1, 0),
(13, 0, 0, 0, 1, 0),
(14, 0, 0, 0, 0, 0),
(15, 1, 0, 0, 1, 0),
(16, 0, 0, 0, 0, 0),
(17, 1, 1, 0, 0, 0),
(18, 1, 1, 1, 1, 1),
(19, 1, 1, 1, 1, 1),
(20, 1, 1, 1, 1, 1),
(21, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peticion_poliza`
--

CREATE TABLE `peticion_poliza` (
  `pk_id_peticion_poliza` int(11) NOT NULL,
  `concepto_peticion_poliza` varchar(30) DEFAULT NULL,
  `fecha_peticion_poliza` datetime DEFAULT NULL,
  `descripcion_peticion_poliza` varchar(100) DEFAULT NULL,
  `monto_peticion_poliza` double DEFAULT NULL,
  `fk_pk_poliza_encabezado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poliza_detalle`
--

CREATE TABLE `poliza_detalle` (
  `pk_poliza_encabezado` int(11) NOT NULL,
  `pk_id_cuenta_contable` int(11) NOT NULL,
  `monto_poliza_detalle` double DEFAULT NULL,
  `debe_poliza_detalle` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poliza_encabezado`
--

CREATE TABLE `poliza_encabezado` (
  `pk_poliza_encabezado` int(11) NOT NULL,
  `fecha_poliza_encabezado` datetime DEFAULT NULL,
  `descripcion_poliza_encabezado` varchar(75) DEFAULT NULL,
  `estado_poliza_encabezado` tinyint(4) DEFAULT NULL,
  `total_poliza_encabezado` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `pk_id_producto` int(10) NOT NULL,
  `fk_id_linea_producto` int(10) NOT NULL,
  `fk_id_categoria_producto` int(10) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `precio_producto` double(12,2) NOT NULL,
  `medida_producto` double(5,2) NOT NULL,
  `descripcion_producto` varchar(45) NOT NULL,
  `estado_producto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productocrm`
--

CREATE TABLE `productocrm` (
  `pk_id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(45) DEFAULT NULL,
  `precio_producto` varchar(45) DEFAULT NULL,
  `descripcion_producto` varchar(45) DEFAULT NULL,
  `fk_id_categoria_tamaño_producto` int(11) NOT NULL,
  `fk_id_categoria_tipo_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_has_pedidos`
--

CREATE TABLE `producto_has_pedidos` (
  `PRODUCTO_pk_idproducto` int(11) NOT NULL,
  `PEDIDOS_pk_id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `pk_id_propietario` int(11) NOT NULL,
  `nombre_propietario` varchar(45) DEFAULT NULL,
  `descripcion_propietario` varchar(75) DEFAULT NULL,
  `estado_propietario` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `pk_id_proveedor` int(10) NOT NULL,
  `fk_id_pais` int(10) NOT NULL,
  `razon_social_proveedor` varchar(45) NOT NULL,
  `representante_legal_proveedor` varchar(45) NOT NULL,
  `nit_proveedor` varchar(20) NOT NULL,
  `estado_proveedor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `pk_id_puesto` int(11) NOT NULL,
  `nombre_puesto` varchar(45) DEFAULT NULL,
  `salario_puesto` double DEFAULT NULL,
  `fk_id_horario_puesto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas_encabezado`
--

CREATE TABLE `recetas_encabezado` (
  `pk_id_receta_encabezado` int(10) NOT NULL,
  `descripcion_receta_encabezado` varchar(100) DEFAULT NULL,
  `fk_id_activos_mrp_receta_encabezado` int(10) DEFAULT NULL,
  `estado_detalle_receta` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reclutamiento`
--

CREATE TABLE `reclutamiento` (
  `pk_id_reclutamiento` int(11) NOT NULL,
  `fk_id_nivel_estudio_reclutamiento` int(11) DEFAULT NULL,
  `nombre1_reclutamiento` varchar(45) DEFAULT NULL,
  `nombre2_reclutamiento` varchar(45) DEFAULT NULL,
  `apellido1_reclutamiento` varchar(45) DEFAULT NULL,
  `apellido2_reclutamiento` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_reclutamiento` varchar(10) DEFAULT NULL,
  `dpi_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_genero_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_estado_civil_reclutamiento` int(11) DEFAULT NULL,
  `email_reclutamiento` varchar(125) DEFAULT NULL,
  `telefono_reclutamiento` int(11) DEFAULT NULL,
  `numero_igss_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_licencia_conducir_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_puesto_reclutamiento` int(11) DEFAULT NULL,
  `estado_reclutado_entrevista` int(11) DEFAULT NULL,
  `nombre_profesion` varchar(125) DEFAULT NULL,
  `fk_id_departamento_empresarial_reclutamiento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `pk_id_reporte` int(10) NOT NULL,
  `nombre_reporte` varchar(40) NOT NULL,
  `ruta_reporte` varchar(100) NOT NULL,
  `estado_reporte` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_aplicativo`
--

CREATE TABLE `reporte_aplicativo` (
  `fk_id_reporte` int(10) NOT NULL,
  `fk_id_aplicacion` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `estado_reporte_aplicativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_modulo`
--

CREATE TABLE `reporte_modulo` (
  `fk_id_reporte` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `estado_reporte_modulo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `pk_id_ruta` int(10) NOT NULL,
  `origen_ruta` varchar(40) NOT NULL,
  `destino_ruta` varchar(40) NOT NULL,
  `descripcion_ruta` varchar(45) NOT NULL,
  `estado_ruta` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo_historico`
--

CREATE TABLE `saldo_historico` (
  `pk_id_cuenta_contable` int(11) NOT NULL,
  `pk_fecha_saldo_historico` datetime NOT NULL,
  `monto_saldo_historico` double DEFAULT NULL,
  `cargo_saldo_hostorico` double DEFAULT NULL,
  `abono_saldo_historico` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono_cliente`
--

CREATE TABLE `telefono_cliente` (
  `pk_idtelefono` int(11) NOT NULL,
  `Telefono_telefono_cliente` varchar(8) DEFAULT NULL,
  `fk_id_cliente_telefono_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono_proveedor`
--

CREATE TABLE `telefono_proveedor` (
  `pk_id_telefono_proveedor` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `telefono_telefono_proveedor` varchar(20) NOT NULL,
  `estado_telefono_proveedor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_baja`
--

CREATE TABLE `tipo_baja` (
  `pk_id_tipo_baja` int(11) NOT NULL,
  `nombre_tipo_baja` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_competencia`
--

CREATE TABLE `tipo_competencia` (
  `pk_id_tipo_competencia` int(11) NOT NULL,
  `nombre_competencia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta_contable`
--

CREATE TABLE `tipo_cuenta_contable` (
  `pk_id_tipo_cuenta_contable` int(11) NOT NULL,
  `nombre_tipo_cuenta_contable` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_entrevista`
--

CREATE TABLE `tipo_entrevista` (
  `pk_id_tipo_entrevista` int(11) NOT NULL,
  `nombre_tipo_entrevista` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_inventario`
--

CREATE TABLE `tipo_inventario` (
  `pk_id_tipo_inventario` int(10) NOT NULL,
  `nombre_tipo_inventario` varchar(45) DEFAULT NULL,
  `descripcion_tipo_inventario` varchar(45) DEFAULT NULL,
  `estado_tipo_inventario` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_inventario`
--

INSERT INTO `tipo_inventario` (`pk_id_tipo_inventario`, `nombre_tipo_inventario`, `descripcion_tipo_inventario`, `estado_tipo_inventario`) VALUES
(1, 'prueba', 'prueba de', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_moneda`
--

CREATE TABLE `tipo_moneda` (
  `pk_id_tipo_moneda` int(11) NOT NULL,
  `moneda_tipo_moneda` varchar(45) DEFAULT NULL,
  `simbolo_tipo_moneda` varchar(2) DEFAULT NULL,
  `descripcion_tipo_moneda` varchar(75) DEFAULT NULL,
  `estado_tipo_moneda` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movimiento`
--

CREATE TABLE `tipo_movimiento` (
  `pk_id_tipo_movimiento` int(10) NOT NULL,
  `nombre_tipo_movimiento` varchar(45) NOT NULL,
  `signo_tipo_movimiento` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_transaccion`
--

CREATE TABLE `tipo_transaccion` (
  `pk_id_tipo_transaccion` int(11) NOT NULL,
  `nombre_tipo_transaccion` varchar(45) DEFAULT NULL,
  `descripcion_tipo_transaccion` varchar(75) DEFAULT NULL,
  `estado_tipo_transaccion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `pk_id_transaccion` int(11) NOT NULL,
  `fk_id_numero_cuenta_bancaria` int(11) NOT NULL,
  `fecha_transaccion` datetime DEFAULT NULL,
  `fk_id_tipo_transaccion` int(11) NOT NULL,
  `fk_id_tipo_moneda` int(11) NOT NULL,
  `monto_transaccion` double DEFAULT NULL,
  `descripcion_transaccion` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `pk_id_vehiculo` int(10) NOT NULL,
  `fk_id_marca` int(10) NOT NULL,
  `placa_vehiculo` varchar(45) NOT NULL,
  `modelo_vehiculo` varchar(45) NOT NULL,
  `color_vehiculo` varchar(45) NOT NULL,
  `anio_vehiculo` varchar(45) NOT NULL,
  `tipo_combustible_vehiculo` varchar(45) NOT NULL,
  `estado_vehiculo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `pk_idventa` int(11) NOT NULL,
  `fecha_venta` date DEFAULT NULL,
  `fk_id_cliente_venta` int(11) NOT NULL,
  `fk_id_producto_venta` int(11) NOT NULL,
  `Descuento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos_mrp`
--
ALTER TABLE `activos_mrp`
  ADD PRIMARY KEY (`pk_id_activos_mrp`);

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`pk_id_aplicacion`),
  ADD KEY `pk_id_aplicacion` (`pk_id_aplicacion`),
  ADD KEY `fk_aplicacion_modulo` (`fk_id_modulo`);

--
-- Indices de la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  ADD PRIMARY KEY (`pk_id_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_aplicacion` (`fk_idaplicacion_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_perfil` (`fk_idperfil_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_permiso` (`fk_idpermiso_aplicacion_perfil`);

--
-- Indices de la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  ADD PRIMARY KEY (`pk_id_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_login` (`fk_idlogin_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_aplicacion` (`fk_idaplicacion_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_permiso` (`fk_idpermiso_aplicacion_usuario`);

--
-- Indices de la tabla `ascenso`
--
ALTER TABLE `ascenso`
  ADD PRIMARY KEY (`pk_id_ascenso`),
  ADD KEY `fk_ascenso_empleado` (`fk_id_empleado_ascenso`),
  ADD KEY `fk_ascenso_puesto_anterior` (`fk_puesto_anterior_ascenso`),
  ADD KEY `fk_ascenso_depto_anterior` (`fk_departamento_anterior_ascenso`),
  ADD KEY `fk_ascenso_puesto_nuevo` (`fk_puesto_nuevo_ascenso`),
  ADD KEY `fk_ascenso_depto_nuevo` (`fk_departamento_nuevo_ascenso`);

--
-- Indices de la tabla `baja`
--
ALTER TABLE `baja`
  ADD PRIMARY KEY (`pk_id_baja`),
  ADD KEY `fk_bajas_empleado` (`fk_id_empleado_baja`),
  ADD KEY `fk_tipo_bajas` (`fk_id_tipo_baja`);

--
-- Indices de la tabla `balance_detalle`
--
ALTER TABLE `balance_detalle`
  ADD PRIMARY KEY (`pk_id_balance_encabezado`),
  ADD KEY `fk_balance_detalle_cuenta` (`pk_id_cuenta_contable`);

--
-- Indices de la tabla `balance_encabezado`
--
ALTER TABLE `balance_encabezado`
  ADD PRIMARY KEY (`pk_id_balance_encabezado`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`pk_id_banco`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`pk_id_bitacora`),
  ADD KEY `fk_login_bitacora` (`fk_idusuario_bitacora`),
  ADD KEY `fk_aplicacion_bitacora` (`fk_idaplicacion_bitacora`);

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`pk_id_bodega`),
  ADD KEY `pk_id_bodega` (`pk_id_bodega`),
  ADD KEY `fk_bodega_municipio` (`fk_id_municipio`);

--
-- Indices de la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD PRIMARY KEY (`pk_id_capacitacion`),
  ADD KEY `fk_encabezado_capacitacion` (`fk_id_encabezado_capacitacion`),
  ADD KEY `fk_empleado_capacitacion` (`fk_id_empleado_capacitacion`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`pk_id_categoria_producto`),
  ADD KEY `pk_id_categoria_producto` (`pk_id_categoria_producto`);

--
-- Indices de la tabla `categoria_tamaño`
--
ALTER TABLE `categoria_tamaño`
  ADD PRIMARY KEY (`pk_id_categoria_tamaño`);

--
-- Indices de la tabla `categoria_tipo`
--
ALTER TABLE `categoria_tipo`
  ADD PRIMARY KEY (`pk_id_categoria_tipo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`pk_id_cliente`);

--
-- Indices de la tabla `competencia_desarrollo`
--
ALTER TABLE `competencia_desarrollo`
  ADD PRIMARY KEY (`pk_id_competencia_desarrollo`),
  ADD KEY `fk_encabezado_competencia` (`fk_id_encabezado_competencia`),
  ADD KEY `fk_tipo_competencia_desarrollo` (`fk_id_tipo_competencia_desarrollo`);

--
-- Indices de la tabla `compra_detalle`
--
ALTER TABLE `compra_detalle`
  ADD PRIMARY KEY (`fk_id_compra_encabezado`,`cod_linea_compra_detalle`),
  ADD KEY `fk_id_compra_encabezado` (`fk_id_compra_encabezado`,`cod_linea_compra_detalle`),
  ADD KEY `fk_compra_producto` (`fk_id_producto`);

--
-- Indices de la tabla `compra_encabezado`
--
ALTER TABLE `compra_encabezado`
  ADD PRIMARY KEY (`pk_id_compra_encabezado`),
  ADD KEY `pk_id_compra_encabezado` (`pk_id_compra_encabezado`),
  ADD KEY `fk_compra_proveedor` (`fk_id_proveedor`);

--
-- Indices de la tabla `consulta_inteligente`
--
ALTER TABLE `consulta_inteligente`
  ADD PRIMARY KEY (`pk_id_consulta_inteligente`);

--
-- Indices de la tabla `control_asistencia`
--
ALTER TABLE `control_asistencia`
  ADD PRIMARY KEY (`pk_id_control_asistencia`),
  ADD KEY `fk_control_asistencia_empleado` (`fk_id_control_asistencia_empleado`),
  ADD KEY `fk_control_asistencia_encabezado_nomina` (`fk_id_control_asistencia_encabezado_nomina`);

--
-- Indices de la tabla `control_calidad`
--
ALTER TABLE `control_calidad`
  ADD PRIMARY KEY (`pk_id_control_calidad`),
  ADD KEY `fk_CONTROL_CALIDAD_ORDEN_PRODUCCION1` (`fk_id_orden_produccion_control_calidad`),
  ADD KEY `fk_CONTROL_CALIDAD_INVENTARIO1` (`fk_id_inventario_control_calidad`),
  ADD KEY `fk_EMPLEADOS_CONTROLCALIDAD1` (`fk_id_responsable_control_calidad`);

--
-- Indices de la tabla `control_empleado`
--
ALTER TABLE `control_empleado`
  ADD PRIMARY KEY (`pk_idControlEmpleado`),
  ADD KEY `fk_TBL_CONTROL_EMPLEADO_TBL_VENTA1` (`fk_id_venta_control_empleado`),
  ADD KEY `fk_TBL_CONTROL_EMPLEADO_EMPLEADO1` (`fK_id_empleado_controlempleado`);

--
-- Indices de la tabla `control_horas`
--
ALTER TABLE `control_horas`
  ADD PRIMARY KEY (`pk_id_control_horas`),
  ADD KEY `fk_control_horas_empleado` (`fk_id_control_horas_empleado`),
  ADD KEY `fk_control_horas_encabezado_nomina` (`fk_id_control_horas_encabezado_nomina`);

--
-- Indices de la tabla `control_producto`
--
ALTER TABLE `control_producto`
  ADD PRIMARY KEY (`pk_id_control_producto`),
  ADD KEY `fk_CONTROL_PRODUCTO_ORDEN_PRODUCCION1` (`fk_id_orden_produccion_control_producto`),
  ADD KEY `fk_CONTROL_PRODUCTO_ESTADO_PRODUCCION` (`fk_id_estado_produccion_control_producto`);

--
-- Indices de la tabla `correo_cliente`
--
ALTER TABLE `correo_cliente`
  ADD PRIMARY KEY (`pk_id_correo_cliente`),
  ADD KEY `fk_tbl_correo_tbl_cliente1` (`fk_id_cliente_correo_cliente`);

--
-- Indices de la tabla `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  ADD PRIMARY KEY (`pk_id_correo_proveedor`),
  ADD KEY `pk_id_correo_proveedor` (`pk_id_correo_proveedor`),
  ADD KEY `fk_proveedor_correo` (`fk_id_proveedor`);

--
-- Indices de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD PRIMARY KEY (`pk_id_cuenta_po_cobrar`),
  ADD KEY `fk_tbl_cuentasporcobrar_tbl_factura1` (`fk_id_factura_cuentas_por_cobrar`),
  ADD KEY `fk_tbl_cuentasporcobrar_tbl_cliente1` (`fk_id_cliente_cuentas_por_cobrar`);

--
-- Indices de la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD PRIMARY KEY (`pk_id_numero_cuenta_bancaria`),
  ADD KEY `fk_cuenta_bancaria_banco` (`fk_id_banco`),
  ADD KEY `fk_cuenta_bancaria_propietario` (`fk_id_propietario`),
  ADD KEY `fk_cuenta_bancaria_tipomoneda` (`fk_id_tipo_moneda`);

--
-- Indices de la tabla `cuenta_contable`
--
ALTER TABLE `cuenta_contable`
  ADD PRIMARY KEY (`pk_id_cuenta_contable`),
  ADD KEY `fk_cuenta_padre_cuenta_hijo` (`fk_cuenta_padre_cuenta_contable`),
  ADD KEY `fk_tipo_cuenta_cuenta_contable` (`fk_id_tipo_cuenta_contable`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`pk_id_curso`);

--
-- Indices de la tabla `deduccion`
--
ALTER TABLE `deduccion`
  ADD PRIMARY KEY (`pk_id_deduccion`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`pk_id_departamento`),
  ADD KEY `pk_id_departamento` (`pk_id_departamento`);

--
-- Indices de la tabla `departamento_empresarial`
--
ALTER TABLE `departamento_empresarial`
  ADD PRIMARY KEY (`pk_id__departamento_empresarial`);

--
-- Indices de la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  ADD PRIMARY KEY (`pk_id_detalle_bitacora`),
  ADD KEY `fk_bitacora_detallebitacora` (`fk_idbitacora_detalle_bitacora`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`pk_id_detalle_factura`),
  ADD KEY `fk_TBL_DETALLE_FACTURA_TBL_FACTURA1` (`fk_id_factura_detalle_factura`),
  ADD KEY `fk_TBL_DETALLE_FACTURA_TBL_PRODUCTO1` (`fk_id_producto_detalle_factura`);

--
-- Indices de la tabla `detalle_hora_empleado`
--
ALTER TABLE `detalle_hora_empleado`
  ADD PRIMARY KEY (`pk_id_detalle_hora_empleado`),
  ADD KEY `fk_HORA_EMPLEADO_DETALLE_HORA_EMPLEADO` (`fk_id_hora_empleado_detalle`);

--
-- Indices de la tabla `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  ADD PRIMARY KEY (`pk_id_detalle_nomina`),
  ADD KEY `fk_encabezado_detalle_nomina` (`fk_id_encabezado_detalle_nomina`),
  ADD KEY `fk_emplado_detalle_nomina` (`fk_id_empleado_detalle_nomina`),
  ADD KEY `fk_percepcion_detalle_nomina` (`fk_id_percepciones_detalle_nomina`),
  ADD KEY `fk_deduccion_detalle_nomina` (`fk_id_deducciones_detalle_nomina`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`pk_id_detalle_pedido`),
  ADD KEY `fk_DETALE_PEDIDO_PRODUCTO1` (`fk_id_producto`),
  ADD KEY `fk_DETALLE_PEDIDO_PEDIDOS1` (`fk_id_pedido`);

--
-- Indices de la tabla `detalle_receta`
--
ALTER TABLE `detalle_receta`
  ADD PRIMARY KEY (`pk_id_detalle_detalle_receta`),
  ADD KEY `fk_detalle_receta_encabezado` (`fk_id_receta_encabezado_detalle`),
  ADD KEY `fk_estado_produccion_detalle` (`fk_id_estado_produccion_detalle_receta`),
  ADD KEY `fk_activos_detalle` (`fk_id_activos_mrp_detalle_receta`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`pk_id_direccion`),
  ADD KEY `fk_empleado_direccion` (`fk_empleado_direccion`),
  ADD KEY `fk_reclutamiento_direccion` (`fk_reclutamiento_direccion`);

--
-- Indices de la tabla `direccion_cliente`
--
ALTER TABLE `direccion_cliente`
  ADD PRIMARY KEY (`pk_id_direccion_cliente`),
  ADD KEY `fk_tbl_direccionCliente_tbl_cliente1` (`fk_idcliente_direccion_cliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`pk_id_empleado`),
  ADD KEY `fk_genero_empleado1` (`fk_id_genero_empleado`),
  ADD KEY `fk_estado_civil_empleado` (`fk_id_estado_civil_empleado`),
  ADD KEY `fk_licencia_conducir_empleado` (`fk_id_licencia_conducir_empleado`),
  ADD KEY `fk_puesto_empleado` (`fk_id_puesto_empleado`),
  ADD KEY `fk_departamento_empresarial_empleado` (`fk_id_departamento_empresarial_empleado`);

--
-- Indices de la tabla `encabezado_capacitacion`
--
ALTER TABLE `encabezado_capacitacion`
  ADD PRIMARY KEY (`pk_id_encabezado_capacitacion`),
  ADD KEY `fk_curso_encabezado_capacitacion` (`fk_id_curso_encabezado_capacitacion`);

--
-- Indices de la tabla `encabezado_competencia`
--
ALTER TABLE `encabezado_competencia`
  ADD PRIMARY KEY (`pk_id_encabezado_competencia`),
  ADD KEY `fk_empleado_encabezado_competencia` (`fk_id_empleado_encabezado_competencia`);

--
-- Indices de la tabla `encabezado_nomina`
--
ALTER TABLE `encabezado_nomina`
  ADD PRIMARY KEY (`pk_id_encabezado_nomina`);

--
-- Indices de la tabla `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  ADD PRIMARY KEY (`pk_id_encargado_bodega`),
  ADD KEY `pk_id_encargado_bodega` (`pk_id_encargado_bodega`),
  ADD KEY `fk_empleado_bodega` (`fk_id_bodega`),
  ADD KEY `fk_empleado_encargado` (`fk_id_empleado`);

--
-- Indices de la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`pk_id_entrevista`),
  ADD KEY `fk_empleado_entrevista` (`fk_id_empleado_entrevista`),
  ADD KEY `fk_reclutamiento_entrevista` (`fk_id_reclutamiento_entrevista`),
  ADD KEY `fk_tipo_entrevista` (`fk_id_tipo_entrevista`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`pk_id_estado_civil`);

--
-- Indices de la tabla `estado_produccion`
--
ALTER TABLE `estado_produccion`
  ADD PRIMARY KEY (`pk_id_estado_produccion`);

--
-- Indices de la tabla `existencia`
--
ALTER TABLE `existencia`
  ADD PRIMARY KEY (`pk_id_existencia`),
  ADD KEY `pk_id_existencia` (`pk_id_existencia`),
  ADD KEY `fk_inventario_producto` (`fk_id_producto`),
  ADD KEY `fk_inventario_bodega` (`fk_id_bodega`);

--
-- Indices de la tabla `fabrica`
--
ALTER TABLE `fabrica`
  ADD PRIMARY KEY (`pk_id_fabrica`),
  ADD KEY `pk_id_fabrica` (`pk_id_fabrica`),
  ADD KEY `fk_fabrica_municipio` (`fk_id_municipio`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`pk_id_factura`),
  ADD KEY `fk_tbl_factura_tbl_cliente1` (`fk_id_cliente_factura`),
  ADD KEY `fk_TBL_FACTURA_EMPLEADO1` (`fK_id_empleado_factura`);

--
-- Indices de la tabla `falta`
--
ALTER TABLE `falta`
  ADD PRIMARY KEY (`pk_id_falta`);

--
-- Indices de la tabla `falta_empleado`
--
ALTER TABLE `falta_empleado`
  ADD KEY `fk_empleado_falta` (`fk_id_empleado_falta_empleado`),
  ADD KEY `fk_tipo_falta` (`fk_id_tipo_falta_empleado`);

--
-- Indices de la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  ADD PRIMARY KEY (`pk_id_formacion_academica`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`pk_id_genero`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`pk_id_horario`);

--
-- Indices de la tabla `hora_empleado`
--
ALTER TABLE `hora_empleado`
  ADD PRIMARY KEY (`pk_id_hora_empleado`),
  ADD KEY `fk_HORA_EMPLEADO_ORDEN_PRODUCCION1` (`fk_id_orden_produccion_hora_empleado`),
  ADD KEY `fk_HORAEMPLEADO_EMPLEADO` (`fk_id_empleado_hora_empleado`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`pk_id_inventario`),
  ADD KEY `pk_id_inventario` (`pk_id_inventario`),
  ADD KEY `fk_total_inventario` (`fk_id_producto`);

--
-- Indices de la tabla `inventariocrm`
--
ALTER TABLE `inventariocrm`
  ADD PRIMARY KEY (`pk_id_inventario`),
  ADD KEY `fk_tbl_inventario_tbl_producto1` (`fk_idproducto_inventario`);

--
-- Indices de la tabla `inventariomrp`
--
ALTER TABLE `inventariomrp`
  ADD PRIMARY KEY (`pk_id_inventario`),
  ADD KEY `fk_INVENTARIO_ACTIVO_MRP` (`fk_id_activos_mrp_inventario`),
  ADD KEY `fk_INVENTARIO_TIPO_INVENTARIO` (`fk_id_tipo_inventario_inventario`);

--
-- Indices de la tabla `licencia_conduccion`
--
ALTER TABLE `licencia_conduccion`
  ADD PRIMARY KEY (`pk_id_licencia_conduccion`);

--
-- Indices de la tabla `linea_producto`
--
ALTER TABLE `linea_producto`
  ADD PRIMARY KEY (`pk_id_linea_producto`),
  ADD KEY `pk_id_linea_producto` (`pk_id_linea_producto`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_id_login`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`pk_id_marca`),
  ADD KEY `pk_id_marca` (`pk_id_marca`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`pk_id_modulo`),
  ADD KEY `pk_id_modulo` (`pk_id_modulo`);

--
-- Indices de la tabla `movimiento_inventario`
--
ALTER TABLE `movimiento_inventario`
  ADD PRIMARY KEY (`pk_id_movimiento_inventario`),
  ADD KEY `pk_id_movimiento_inventario` (`pk_id_movimiento_inventario`),
  ADD KEY `fk_mov_inventario_tipo` (`fk_id_tipo_movimiento`),
  ADD KEY `fk_mov_inventario_ruta` (`fk_id_ruta`),
  ADD KEY `fk_mov_inventario_vehiculo` (`fk_id_vehiculo`);

--
-- Indices de la tabla `movimiento_inventario_detalle`
--
ALTER TABLE `movimiento_inventario_detalle`
  ADD PRIMARY KEY (`pk_id_movimiento_inventario_detalle`),
  ADD KEY `pk_id_movimiento_inventario_detalle` (`pk_id_movimiento_inventario_detalle`),
  ADD KEY `fk_mov_inventario_detalle_mov` (`fk_id_movimiento_inventario`),
  ADD KEY `fk_mov_inventario_detalle_producto` (`fk_id_producto`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`pk_id_municipio`),
  ADD KEY `pk_id_municipio` (`pk_id_municipio`),
  ADD KEY `fk_municipio_departamento` (`fk_id_departamento`);

--
-- Indices de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD PRIMARY KEY (`pk_id_orden_compra`),
  ADD KEY `fk_ORDEN_COMPRA_MATERIA_PRIMA_INSUMO` (`fk_id_materia_prima_insumo_orden_compra`);

--
-- Indices de la tabla `orden_produccion`
--
ALTER TABLE `orden_produccion`
  ADD PRIMARY KEY (`pk_id_orden_produccion`),
  ADD KEY `fk_ORDEN_PRODUCCION_TIPOINVENTARIO` (`fk_id_tipo_producto_orden_produccion`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`pk_id_pais`),
  ADD KEY `pk_id_pais` (`pk_id_pais`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`pk_id_pedido`),
  ADD KEY `fk_PEDIDOS_EMPLEADO1` (`fk_id_empleado`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`fk_id_pedido_encabezado`,`cod_linea_pedido_detalle`),
  ADD KEY `fk_id_pedido_encabezado` (`fk_id_pedido_encabezado`,`cod_linea_pedido_detalle`),
  ADD KEY `fk_pedido_producto` (`fk_id_producto`);

--
-- Indices de la tabla `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD PRIMARY KEY (`pk_id_pedido_encabezado`),
  ADD KEY `pk_id_pedido_encabezado` (`pk_id_pedido_encabezado`),
  ADD KEY `fk_pedido_fabrica` (`fk_id_fabrica`);

--
-- Indices de la tabla `percepcion`
--
ALTER TABLE `percepcion`
  ADD PRIMARY KEY (`pk_id_percepcion`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`pk_id_perfil`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`pk_id_perfil_usuario`),
  ADD KEY `fk_perfil_usuario_login` (`fk_idusuario_perfil_usuario`),
  ADD KEY `fk_perfil_usuario_perfil` (`fk_idperfil_perfil_usuario`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`pk_id_permiso`);

--
-- Indices de la tabla `peticion_poliza`
--
ALTER TABLE `peticion_poliza`
  ADD PRIMARY KEY (`pk_id_peticion_poliza`);

--
-- Indices de la tabla `poliza_detalle`
--
ALTER TABLE `poliza_detalle`
  ADD PRIMARY KEY (`pk_poliza_encabezado`,`pk_id_cuenta_contable`),
  ADD KEY `fk_poliza_detalle_cuenta` (`pk_id_cuenta_contable`);

--
-- Indices de la tabla `poliza_encabezado`
--
ALTER TABLE `poliza_encabezado`
  ADD PRIMARY KEY (`pk_poliza_encabezado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`pk_id_producto`),
  ADD KEY `pk_id_producto` (`pk_id_producto`),
  ADD KEY `fk_producto_lineaProducto` (`fk_id_linea_producto`),
  ADD KEY `fk_producto_categoriaProducto` (`fk_id_categoria_producto`);

--
-- Indices de la tabla `productocrm`
--
ALTER TABLE `productocrm`
  ADD PRIMARY KEY (`pk_id_producto`),
  ADD KEY `fk_tbl_producto_tbl_categoriatamaño1` (`fk_id_categoria_tamaño_producto`),
  ADD KEY `fk_tbl_producto_tbl_categoriatipo1` (`fk_id_categoria_tipo_producto`);

--
-- Indices de la tabla `producto_has_pedidos`
--
ALTER TABLE `producto_has_pedidos`
  ADD PRIMARY KEY (`PRODUCTO_pk_idproducto`,`PEDIDOS_pk_id_pedido`),
  ADD KEY `fk_PRODUCTO_has_PEDIDOS_PEDIDOS1` (`PEDIDOS_pk_id_pedido`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`pk_id_propietario`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`pk_id_proveedor`),
  ADD KEY `pk_id_proveedor` (`pk_id_proveedor`),
  ADD KEY `fk_proveedor_pais` (`fk_id_pais`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`pk_id_puesto`),
  ADD KEY `fk_horario_puesto` (`fk_id_horario_puesto`);

--
-- Indices de la tabla `recetas_encabezado`
--
ALTER TABLE `recetas_encabezado`
  ADD PRIMARY KEY (`pk_id_receta_encabezado`),
  ADD KEY `fk_recetas_encabezado_activos` (`fk_id_activos_mrp_receta_encabezado`);

--
-- Indices de la tabla `reclutamiento`
--
ALTER TABLE `reclutamiento`
  ADD PRIMARY KEY (`pk_id_reclutamiento`),
  ADD KEY `fk_nivel_estudio_reclutamiento` (`fk_id_nivel_estudio_reclutamiento`),
  ADD KEY `fk_genero_reclutamiento` (`fk_id_genero_reclutamiento`),
  ADD KEY `fk_estado_civil_reclutamiento` (`fk_id_estado_civil_reclutamiento`),
  ADD KEY `fk_licencia_conducir_reclutamiento` (`fk_id_licencia_conducir_reclutamiento`),
  ADD KEY `fk_puesto_reclutamiento` (`fk_id_puesto_reclutamiento`),
  ADD KEY `fk_departamento_empresarial_reclutamiento` (`fk_id_departamento_empresarial_reclutamiento`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`pk_id_reporte`),
  ADD KEY `pk_id_reporte` (`pk_id_reporte`);

--
-- Indices de la tabla `reporte_aplicativo`
--
ALTER TABLE `reporte_aplicativo`
  ADD PRIMARY KEY (`fk_id_reporte`,`fk_id_aplicacion`,`fk_id_modulo`),
  ADD KEY `fk_id_reporte` (`fk_id_reporte`,`fk_id_aplicacion`,`fk_id_modulo`),
  ADD KEY `fk_reporte_aplicativo_modulo` (`fk_id_modulo`),
  ADD KEY `fk_report_aplicativo` (`fk_id_aplicacion`);

--
-- Indices de la tabla `reporte_modulo`
--
ALTER TABLE `reporte_modulo`
  ADD PRIMARY KEY (`fk_id_reporte`,`fk_id_modulo`),
  ADD KEY `fk_id_reporte` (`fk_id_reporte`,`fk_id_modulo`),
  ADD KEY `fk_reporte_de_modulo_reportes` (`fk_id_modulo`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`pk_id_ruta`),
  ADD KEY `pk_id_ruta` (`pk_id_ruta`);

--
-- Indices de la tabla `saldo_historico`
--
ALTER TABLE `saldo_historico`
  ADD PRIMARY KEY (`pk_id_cuenta_contable`,`pk_fecha_saldo_historico`);

--
-- Indices de la tabla `telefono_cliente`
--
ALTER TABLE `telefono_cliente`
  ADD PRIMARY KEY (`pk_idtelefono`),
  ADD KEY `fk_tbl_telefono_tbl_cliente1` (`fk_id_cliente_telefono_cliente`);

--
-- Indices de la tabla `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  ADD PRIMARY KEY (`pk_id_telefono_proveedor`),
  ADD KEY `pk_id_telefono_proveedor` (`pk_id_telefono_proveedor`),
  ADD KEY `fk_proveedor_telefono` (`fk_id_proveedor`);

--
-- Indices de la tabla `tipo_baja`
--
ALTER TABLE `tipo_baja`
  ADD PRIMARY KEY (`pk_id_tipo_baja`);

--
-- Indices de la tabla `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  ADD PRIMARY KEY (`pk_id_tipo_competencia`);

--
-- Indices de la tabla `tipo_cuenta_contable`
--
ALTER TABLE `tipo_cuenta_contable`
  ADD PRIMARY KEY (`pk_id_tipo_cuenta_contable`);

--
-- Indices de la tabla `tipo_entrevista`
--
ALTER TABLE `tipo_entrevista`
  ADD PRIMARY KEY (`pk_id_tipo_entrevista`);

--
-- Indices de la tabla `tipo_inventario`
--
ALTER TABLE `tipo_inventario`
  ADD PRIMARY KEY (`pk_id_tipo_inventario`);

--
-- Indices de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  ADD PRIMARY KEY (`pk_id_tipo_moneda`);

--
-- Indices de la tabla `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  ADD PRIMARY KEY (`pk_id_tipo_movimiento`),
  ADD KEY `pk_id_tipo_movimiento` (`pk_id_tipo_movimiento`);

--
-- Indices de la tabla `tipo_transaccion`
--
ALTER TABLE `tipo_transaccion`
  ADD PRIMARY KEY (`pk_id_tipo_transaccion`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`pk_id_transaccion`),
  ADD KEY `fk_transaccion_numero_cuenta` (`fk_id_numero_cuenta_bancaria`),
  ADD KEY `fk_transaccion_tipo_transaccion` (`fk_id_tipo_transaccion`),
  ADD KEY `fk_transaccion_tipo_moneda` (`fk_id_tipo_moneda`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`pk_id_vehiculo`),
  ADD KEY `pk_id_vehiculo` (`pk_id_vehiculo`),
  ADD KEY `fk_vehiculo_marca` (`fk_id_marca`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`pk_idventa`),
  ADD KEY `fk_tbl_venta_tbl_cliente` (`fk_id_cliente_venta`),
  ADD KEY `fk_tbl_venta_tbl_producto1` (`fk_id_producto_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activos_mrp`
--
ALTER TABLE `activos_mrp`
  MODIFY `pk_id_activos_mrp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  MODIFY `pk_id_aplicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3305;
--
-- AUTO_INCREMENT de la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  MODIFY `pk_id_aplicacion_perfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  MODIFY `pk_id_aplicacion_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `pk_id_bitacora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `bodega`
--
ALTER TABLE `bodega`
  MODIFY `pk_id_bodega` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `pk_id_categoria_producto` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoria_tipo`
--
ALTER TABLE `categoria_tipo`
  MODIFY `pk_id_categoria_tipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `pk_id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `consulta_inteligente`
--
ALTER TABLE `consulta_inteligente`
  MODIFY `pk_id_consulta_inteligente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `control_calidad`
--
ALTER TABLE `control_calidad`
  MODIFY `pk_id_control_calidad` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `control_empleado`
--
ALTER TABLE `control_empleado`
  MODIFY `pk_idControlEmpleado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `control_producto`
--
ALTER TABLE `control_producto`
  MODIFY `pk_id_control_producto` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `correo_cliente`
--
ALTER TABLE `correo_cliente`
  MODIFY `pk_id_correo_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  MODIFY `pk_id_correo_proveedor` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  MODIFY `pk_id_cuenta_po_cobrar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `pk_id_departamento` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  MODIFY `pk_id_detalle_bitacora` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `pk_id_detalle_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_hora_empleado`
--
ALTER TABLE `detalle_hora_empleado`
  MODIFY `pk_id_detalle_hora_empleado` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `pk_id_detalle_pedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_receta`
--
ALTER TABLE `detalle_receta`
  MODIFY `pk_id_detalle_detalle_receta` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `direccion_cliente`
--
ALTER TABLE `direccion_cliente`
  MODIFY `pk_id_direccion_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  MODIFY `pk_id_encargado_bodega` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estado_produccion`
--
ALTER TABLE `estado_produccion`
  MODIFY `pk_id_estado_produccion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `existencia`
--
ALTER TABLE `existencia`
  MODIFY `pk_id_existencia` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fabrica`
--
ALTER TABLE `fabrica`
  MODIFY `pk_id_fabrica` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `pk_id_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `hora_empleado`
--
ALTER TABLE `hora_empleado`
  MODIFY `pk_id_hora_empleado` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `pk_id_inventario` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventariocrm`
--
ALTER TABLE `inventariocrm`
  MODIFY `pk_id_inventario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inventariomrp`
--
ALTER TABLE `inventariomrp`
  MODIFY `pk_id_inventario` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `linea_producto`
--
ALTER TABLE `linea_producto`
  MODIFY `pk_id_linea_producto` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `pk_id_login` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `pk_id_marca` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `pk_id_modulo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `pk_id_municipio` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  MODIFY `pk_id_orden_compra` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orden_produccion`
--
ALTER TABLE `orden_produccion`
  MODIFY `pk_id_orden_produccion` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `pk_id_pais` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `pk_id_pedido` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `pk_id_perfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `pk_id_perfil_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `pk_id_permiso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `pk_id_producto` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productocrm`
--
ALTER TABLE `productocrm`
  MODIFY `pk_id_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `pk_id_proveedor` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `recetas_encabezado`
--
ALTER TABLE `recetas_encabezado`
  MODIFY `pk_id_receta_encabezado` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `pk_id_reporte` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `pk_id_ruta` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `telefono_cliente`
--
ALTER TABLE `telefono_cliente`
  MODIFY `pk_idtelefono` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  MODIFY `pk_id_telefono_proveedor` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_inventario`
--
ALTER TABLE `tipo_inventario`
  MODIFY `pk_id_tipo_inventario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `pk_id_vehiculo` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `pk_idventa` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD CONSTRAINT `fk_aplicacion_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`);

--
-- Filtros para la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  ADD CONSTRAINT `fk_aplicacionperfil_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_perfil`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_perfil` FOREIGN KEY (`fk_idperfil_aplicacion_perfil`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_perfil`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  ADD CONSTRAINT `fk_aplicacionusuario_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_usuario`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_login` FOREIGN KEY (`fk_idlogin_aplicacion_usuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_usuario`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ascenso`
--
ALTER TABLE `ascenso`
  ADD CONSTRAINT `fk_ascenso_depto_anterior` FOREIGN KEY (`fk_departamento_anterior_ascenso`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ascenso_depto_nuevo` FOREIGN KEY (`fk_departamento_nuevo_ascenso`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ascenso_empleado` FOREIGN KEY (`fk_id_empleado_ascenso`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ascenso_puesto_anterior` FOREIGN KEY (`fk_puesto_anterior_ascenso`) REFERENCES `puesto` (`pk_id_puesto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ascenso_puesto_nuevo` FOREIGN KEY (`fk_puesto_nuevo_ascenso`) REFERENCES `puesto` (`pk_id_puesto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `baja`
--
ALTER TABLE `baja`
  ADD CONSTRAINT `fk_bajas_empleado` FOREIGN KEY (`fk_id_empleado_baja`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_bajas` FOREIGN KEY (`fk_id_tipo_baja`) REFERENCES `tipo_baja` (`pk_id_tipo_baja`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `balance_detalle`
--
ALTER TABLE `balance_detalle`
  ADD CONSTRAINT `fk_balance_detalle_cuenta_contable` FOREIGN KEY (`pk_id_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_balance_encabezado_detalle` FOREIGN KEY (`pk_id_balance_encabezado`) REFERENCES `balance_encabezado` (`pk_id_balance_encabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `fk_aplicacion_bitacora` FOREIGN KEY (`fk_idaplicacion_bitacora`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_login_bitacora` FOREIGN KEY (`fk_idusuario_bitacora`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD CONSTRAINT `fk_bodega_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`);

--
-- Filtros para la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD CONSTRAINT `fk_empleado_capacitacion` FOREIGN KEY (`fk_id_empleado_capacitacion`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_encabezado_capacitacion` FOREIGN KEY (`fk_id_encabezado_capacitacion`) REFERENCES `encabezado_capacitacion` (`pk_id_encabezado_capacitacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `competencia_desarrollo`
--
ALTER TABLE `competencia_desarrollo`
  ADD CONSTRAINT `fk_encabezado_competencia` FOREIGN KEY (`fk_id_encabezado_competencia`) REFERENCES `encabezado_competencia` (`pk_id_encabezado_competencia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_competencia_desarrollo` FOREIGN KEY (`fk_id_tipo_competencia_desarrollo`) REFERENCES `tipo_competencia` (`pk_id_tipo_competencia`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra_detalle`
--
ALTER TABLE `compra_detalle`
  ADD CONSTRAINT `fk_compra_detalle` FOREIGN KEY (`fk_id_compra_encabezado`) REFERENCES `compra_encabezado` (`pk_id_compra_encabezado`),
  ADD CONSTRAINT `fk_compra_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`);

--
-- Filtros para la tabla `compra_encabezado`
--
ALTER TABLE `compra_encabezado`
  ADD CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`);

--
-- Filtros para la tabla `control_asistencia`
--
ALTER TABLE `control_asistencia`
  ADD CONSTRAINT `fk_control_asistencia_empleado` FOREIGN KEY (`fk_id_control_asistencia_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_control_asistencia_encabezado_nomina` FOREIGN KEY (`fk_id_control_asistencia_encabezado_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `control_calidad`
--
ALTER TABLE `control_calidad`
  ADD CONSTRAINT `fk_CONTROL_CALIDAD_INVENTARIO1` FOREIGN KEY (`fk_id_inventario_control_calidad`) REFERENCES `inventariomrp` (`pk_id_inventario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROL_CALIDAD_ORDEN_PRODUCCION1` FOREIGN KEY (`fk_id_orden_produccion_control_calidad`) REFERENCES `orden_produccion` (`pk_id_orden_produccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EMPLEADOS_CONTROLCALIDAD1` FOREIGN KEY (`fk_id_responsable_control_calidad`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `control_empleado`
--
ALTER TABLE `control_empleado`
  ADD CONSTRAINT `fk_TBL_CONTROL_EMPLEADO_EMPLEADO1` FOREIGN KEY (`fK_id_empleado_controlempleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_CONTROL_EMPLEADO_TBL_VENTA1` FOREIGN KEY (`fk_id_venta_control_empleado`) REFERENCES `venta` (`pk_idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `control_horas`
--
ALTER TABLE `control_horas`
  ADD CONSTRAINT `fk_control_horas_empleado` FOREIGN KEY (`fk_id_control_horas_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_control_horas_encabezado_nomina` FOREIGN KEY (`fk_id_control_horas_encabezado_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `control_producto`
--
ALTER TABLE `control_producto`
  ADD CONSTRAINT `fk_CONTROL_PRODUCTO_ESTADO_PRODUCCION` FOREIGN KEY (`fk_id_estado_produccion_control_producto`) REFERENCES `estado_produccion` (`pk_id_estado_produccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROL_PRODUCTO_ORDEN_PRODUCCION1` FOREIGN KEY (`fk_id_orden_produccion_control_producto`) REFERENCES `orden_produccion` (`pk_id_orden_produccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `correo_cliente`
--
ALTER TABLE `correo_cliente`
  ADD CONSTRAINT `fk_tbl_correo_tbl_cliente1` FOREIGN KEY (`fk_id_cliente_correo_cliente`) REFERENCES `cliente` (`pk_id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  ADD CONSTRAINT `fk_proveedor_correo` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`);

--
-- Filtros para la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD CONSTRAINT `fk_tbl_cuentasporcobrar_tbl_cliente1` FOREIGN KEY (`fk_id_cliente_cuentas_por_cobrar`) REFERENCES `cliente` (`pk_id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_cuentasporcobrar_tbl_factura1` FOREIGN KEY (`fk_id_factura_cuentas_por_cobrar`) REFERENCES `factura` (`pk_id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD CONSTRAINT `fk_cuenta_bancaria_banco` FOREIGN KEY (`fk_id_banco`) REFERENCES `banco` (`pk_id_banco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuenta_bancaria_propietario` FOREIGN KEY (`fk_id_propietario`) REFERENCES `propietario` (`pk_id_propietario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuenta_bancaria_tipomoneda` FOREIGN KEY (`fk_id_tipo_moneda`) REFERENCES `tipo_moneda` (`pk_id_tipo_moneda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuenta_contable`
--
ALTER TABLE `cuenta_contable`
  ADD CONSTRAINT `fk_cuenta_padre_cuenta_hijo` FOREIGN KEY (`fk_cuenta_padre_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_cuenta_contable` FOREIGN KEY (`fk_id_tipo_cuenta_contable`) REFERENCES `tipo_cuenta_contable` (`pk_id_tipo_cuenta_contable`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  ADD CONSTRAINT `fk_bitacora_detallebitacora` FOREIGN KEY (`fk_idbitacora_detalle_bitacora`) REFERENCES `bitacora` (`pk_id_bitacora`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `fk_TBL_DETALLE_FACTURA_TBL_FACTURA1` FOREIGN KEY (`fk_id_factura_detalle_factura`) REFERENCES `factura` (`pk_id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TBL_DETALLE_FACTURA_TBL_PRODUCTO1` FOREIGN KEY (`fk_id_producto_detalle_factura`) REFERENCES `producto` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_hora_empleado`
--
ALTER TABLE `detalle_hora_empleado`
  ADD CONSTRAINT `fk_HORA_EMPLEADO_DETALLE_HORA_EMPLEADO` FOREIGN KEY (`fk_id_hora_empleado_detalle`) REFERENCES `hora_empleado` (`pk_id_hora_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  ADD CONSTRAINT `fk_deduccion_detalle_nomina` FOREIGN KEY (`fk_id_deducciones_detalle_nomina`) REFERENCES `deduccion` (`pk_id_deduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_emplado_detalle_nomina` FOREIGN KEY (`fk_id_empleado_detalle_nomina`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_encabezado_detalle_nomina` FOREIGN KEY (`fk_id_encabezado_detalle_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_percepcion_detalle_nomina` FOREIGN KEY (`fk_id_percepciones_detalle_nomina`) REFERENCES `percepcion` (`pk_id_percepcion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `fk_DETALE_PEDIDO_PRODUCTO1` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DETALLE_PEDIDO_PEDIDOS1` FOREIGN KEY (`fk_id_pedido`) REFERENCES `pedidos` (`pk_id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_receta`
--
ALTER TABLE `detalle_receta`
  ADD CONSTRAINT `fk_activos_detalle` FOREIGN KEY (`fk_id_activos_mrp_detalle_receta`) REFERENCES `activos_mrp` (`pk_id_activos_mrp`),
  ADD CONSTRAINT `fk_detalle_receta_encabezado` FOREIGN KEY (`fk_id_receta_encabezado_detalle`) REFERENCES `recetas_encabezado` (`pk_id_receta_encabezado`),
  ADD CONSTRAINT `fk_estado_produccion_detalle` FOREIGN KEY (`fk_id_estado_produccion_detalle_receta`) REFERENCES `estado_produccion` (`pk_id_estado_produccion`);

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `fk_empleado_direccion` FOREIGN KEY (`fk_empleado_direccion`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reclutamiento_direccion` FOREIGN KEY (`fk_reclutamiento_direccion`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `direccion_cliente`
--
ALTER TABLE `direccion_cliente`
  ADD CONSTRAINT `fk_tbl_direccionCliente_tbl_cliente1` FOREIGN KEY (`fk_idcliente_direccion_cliente`) REFERENCES `cliente` (`pk_id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_departamento_empresarial_empleado` FOREIGN KEY (`fk_id_departamento_empresarial_empleado`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estado_civil_empleado` FOREIGN KEY (`fk_id_estado_civil_empleado`) REFERENCES `estado_civil` (`pk_id_estado_civil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_genero_empleado1` FOREIGN KEY (`fk_id_genero_empleado`) REFERENCES `genero` (`pk_id_genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_licencia_conducir_empleado` FOREIGN KEY (`fk_id_licencia_conducir_empleado`) REFERENCES `licencia_conduccion` (`pk_id_licencia_conduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_puesto_empleado` FOREIGN KEY (`fk_id_puesto_empleado`) REFERENCES `puesto` (`pk_id_puesto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `encabezado_capacitacion`
--
ALTER TABLE `encabezado_capacitacion`
  ADD CONSTRAINT `fk_curso_encabezado_capacitacion` FOREIGN KEY (`fk_id_curso_encabezado_capacitacion`) REFERENCES `curso` (`pk_id_curso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `encabezado_competencia`
--
ALTER TABLE `encabezado_competencia`
  ADD CONSTRAINT `fk_empleado_encabezado_competencia` FOREIGN KEY (`fk_id_empleado_encabezado_competencia`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  ADD CONSTRAINT `fk_empleado_bodega` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`),
  ADD CONSTRAINT `fk_empleado_encargado` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`);

--
-- Filtros para la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD CONSTRAINT `fk_empleado_entrevista` FOREIGN KEY (`fk_id_empleado_entrevista`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reclutamiento_entrevista` FOREIGN KEY (`fk_id_reclutamiento_entrevista`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_entrevista` FOREIGN KEY (`fk_id_tipo_entrevista`) REFERENCES `tipo_entrevista` (`pk_id_tipo_entrevista`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `existencia`
--
ALTER TABLE `existencia`
  ADD CONSTRAINT `fk_inventario_bodega` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`),
  ADD CONSTRAINT `fk_inventario_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`);

--
-- Filtros para la tabla `fabrica`
--
ALTER TABLE `fabrica`
  ADD CONSTRAINT `fk_fabrica_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_TBL_FACTURA_EMPLEADO1` FOREIGN KEY (`fK_id_empleado_factura`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_factura_tbl_cliente1` FOREIGN KEY (`fk_id_cliente_factura`) REFERENCES `cliente` (`pk_id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `falta_empleado`
--
ALTER TABLE `falta_empleado`
  ADD CONSTRAINT `fk_empleado_falta` FOREIGN KEY (`fk_id_empleado_falta_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_falta` FOREIGN KEY (`fk_id_tipo_falta_empleado`) REFERENCES `falta` (`pk_id_falta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `hora_empleado`
--
ALTER TABLE `hora_empleado`
  ADD CONSTRAINT `fk_HORAEMPLEADO_EMPLEADO` FOREIGN KEY (`fk_id_empleado_hora_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_HORA_EMPLEADO_ORDEN_PRODUCCION1` FOREIGN KEY (`fk_id_orden_produccion_hora_empleado`) REFERENCES `orden_produccion` (`pk_id_orden_produccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_total_inventario` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`);

--
-- Filtros para la tabla `inventariocrm`
--
ALTER TABLE `inventariocrm`
  ADD CONSTRAINT `fk_tbl_inventario_tbl_producto1` FOREIGN KEY (`fk_idproducto_inventario`) REFERENCES `producto` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventariomrp`
--
ALTER TABLE `inventariomrp`
  ADD CONSTRAINT `fk_INVENTARIO_ACTIVO_MRP` FOREIGN KEY (`fk_id_activos_mrp_inventario`) REFERENCES `activos_mrp` (`pk_id_activos_mrp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_INVENTARIO_TIPO_INVENTARIO` FOREIGN KEY (`fk_id_tipo_inventario_inventario`) REFERENCES `tipo_inventario` (`pk_id_tipo_inventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `movimiento_inventario`
--
ALTER TABLE `movimiento_inventario`
  ADD CONSTRAINT `fk_mov_inventario_ruta` FOREIGN KEY (`fk_id_ruta`) REFERENCES `ruta` (`pk_id_ruta`),
  ADD CONSTRAINT `fk_mov_inventario_tipo` FOREIGN KEY (`fk_id_tipo_movimiento`) REFERENCES `tipo_movimiento` (`pk_id_tipo_movimiento`),
  ADD CONSTRAINT `fk_mov_inventario_vehiculo` FOREIGN KEY (`fk_id_vehiculo`) REFERENCES `vehiculo` (`pk_id_vehiculo`);

--
-- Filtros para la tabla `movimiento_inventario_detalle`
--
ALTER TABLE `movimiento_inventario_detalle`
  ADD CONSTRAINT `fk_mov_inventario_detalle_mov` FOREIGN KEY (`fk_id_movimiento_inventario`) REFERENCES `movimiento_inventario` (`pk_id_movimiento_inventario`),
  ADD CONSTRAINT `fk_mov_inventario_detalle_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_municipio_departamento` FOREIGN KEY (`fk_id_departamento`) REFERENCES `departamento` (`pk_id_departamento`);

--
-- Filtros para la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `fk_ORDEN_COMPRA_MATERIA_PRIMA_INSUMO` FOREIGN KEY (`fk_id_materia_prima_insumo_orden_compra`) REFERENCES `activos_mrp` (`pk_id_activos_mrp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orden_produccion`
--
ALTER TABLE `orden_produccion`
  ADD CONSTRAINT `fk_ORDEN_PRODUCCION_TIPOINVENTARIO` FOREIGN KEY (`fk_id_tipo_producto_orden_produccion`) REFERENCES `tipo_inventario` (`pk_id_tipo_inventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_PEDIDOS_EMPLEADO1` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD CONSTRAINT `fk_encabezado_pedido` FOREIGN KEY (`fk_id_pedido_encabezado`) REFERENCES `pedido_encabezado` (`pk_id_pedido_encabezado`),
  ADD CONSTRAINT `fk_pedido_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `producto` (`pk_id_producto`);

--
-- Filtros para la tabla `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD CONSTRAINT `fk_pedido_fabrica` FOREIGN KEY (`fk_id_fabrica`) REFERENCES `fabrica` (`pk_id_fabrica`);

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `fk_perfil_usuario_login` FOREIGN KEY (`fk_idusuario_perfil_usuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_perfil_usuario_perfil` FOREIGN KEY (`fk_idperfil_perfil_usuario`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `poliza_detalle`
--
ALTER TABLE `poliza_detalle`
  ADD CONSTRAINT `fk_poliza_detalle_cuenta` FOREIGN KEY (`pk_id_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_poliza_detalle_poliza_encabezado` FOREIGN KEY (`pk_poliza_encabezado`) REFERENCES `poliza_encabezado` (`pk_poliza_encabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoriaProducto` FOREIGN KEY (`fk_id_categoria_producto`) REFERENCES `categoria_producto` (`pk_id_categoria_producto`),
  ADD CONSTRAINT `fk_producto_lineaProducto` FOREIGN KEY (`fk_id_linea_producto`) REFERENCES `linea_producto` (`pk_id_linea_producto`);

--
-- Filtros para la tabla `productocrm`
--
ALTER TABLE `productocrm`
  ADD CONSTRAINT `fk_tbl_producto_tbl_categoriatamaño1` FOREIGN KEY (`fk_id_categoria_tamaño_producto`) REFERENCES `categoria_tamaño` (`pk_id_categoria_tamaño`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_producto_tbl_categoriatipo1` FOREIGN KEY (`fk_id_categoria_tipo_producto`) REFERENCES `categoria_tipo` (`pk_id_categoria_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto_has_pedidos`
--
ALTER TABLE `producto_has_pedidos`
  ADD CONSTRAINT `fk_PRODUCTO_has_PEDIDOS_PEDIDOS1` FOREIGN KEY (`PEDIDOS_pk_id_pedido`) REFERENCES `pedidos` (`pk_id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PRODUCTO_has_PEDIDOS_PRODUCTO1` FOREIGN KEY (`PRODUCTO_pk_idproducto`) REFERENCES `producto` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_proveedor_pais` FOREIGN KEY (`fk_id_pais`) REFERENCES `pais` (`pk_id_pais`);

--
-- Filtros para la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD CONSTRAINT `fk_horario_puesto` FOREIGN KEY (`fk_id_horario_puesto`) REFERENCES `horario` (`pk_id_horario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `recetas_encabezado`
--
ALTER TABLE `recetas_encabezado`
  ADD CONSTRAINT `fk_recetas_encabezado_activos` FOREIGN KEY (`fk_id_activos_mrp_receta_encabezado`) REFERENCES `activos_mrp` (`pk_id_activos_mrp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reclutamiento`
--
ALTER TABLE `reclutamiento`
  ADD CONSTRAINT `fk_departamento_empresarial_reclutamiento` FOREIGN KEY (`fk_id_departamento_empresarial_reclutamiento`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estado_civil_reclutamiento` FOREIGN KEY (`fk_id_estado_civil_reclutamiento`) REFERENCES `estado_civil` (`pk_id_estado_civil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_genero_reclutamiento` FOREIGN KEY (`fk_id_genero_reclutamiento`) REFERENCES `genero` (`pk_id_genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_licencia_conducir_reclutamiento` FOREIGN KEY (`fk_id_licencia_conducir_reclutamiento`) REFERENCES `licencia_conduccion` (`pk_id_licencia_conduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nivel_estudio_reclutamiento` FOREIGN KEY (`fk_id_nivel_estudio_reclutamiento`) REFERENCES `formacion_academica` (`pk_id_formacion_academica`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_puesto_reclutamiento` FOREIGN KEY (`fk_id_puesto_reclutamiento`) REFERENCES `puesto` (`pk_id_puesto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte_aplicativo`
--
ALTER TABLE `reporte_aplicativo`
  ADD CONSTRAINT `fk_report_aplicativo` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `aplicacion` (`pk_id_aplicacion`),
  ADD CONSTRAINT `fk_reporte_aplicativo_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`),
  ADD CONSTRAINT `fk_reporte_aplicativo_reporte` FOREIGN KEY (`fk_id_reporte`) REFERENCES `reporte` (`pk_id_reporte`);

--
-- Filtros para la tabla `reporte_modulo`
--
ALTER TABLE `reporte_modulo`
  ADD CONSTRAINT `fk_reporte_de_modulo` FOREIGN KEY (`fk_id_reporte`) REFERENCES `reporte` (`pk_id_reporte`),
  ADD CONSTRAINT `fk_reporte_de_modulo_reportes` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`);

--
-- Filtros para la tabla `saldo_historico`
--
ALTER TABLE `saldo_historico`
  ADD CONSTRAINT `fk_saldo_cuenta_contable` FOREIGN KEY (`pk_id_cuenta_contable`) REFERENCES `cuenta_contable` (`pk_id_cuenta_contable`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefono_cliente`
--
ALTER TABLE `telefono_cliente`
  ADD CONSTRAINT `fk_tbl_telefono_tbl_cliente1` FOREIGN KEY (`fk_id_cliente_telefono_cliente`) REFERENCES `cliente` (`pk_id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  ADD CONSTRAINT `fk_proveedor_telefono` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`);

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `fk_encabezado_transaccion_numero_cuenta` FOREIGN KEY (`fk_id_numero_cuenta_bancaria`) REFERENCES `cuenta_bancaria` (`pk_id_numero_cuenta_bancaria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_transaccion_tipo_transaccion` FOREIGN KEY (`fk_id_tipo_transaccion`) REFERENCES `tipo_transaccion` (`pk_id_tipo_transaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_vehiculo_marca` FOREIGN KEY (`fk_id_marca`) REFERENCES `marca` (`pk_id_marca`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_tbl_venta_tbl_cliente` FOREIGN KEY (`fk_id_cliente_venta`) REFERENCES `cliente` (`pk_id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_venta_tbl_producto1` FOREIGN KEY (`fk_id_producto_venta`) REFERENCES `producto` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
