--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

-- Started on 2021-10-12 20:35:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE dbtienda;
--
-- TOC entry 3694 (class 1262 OID 16394)
-- Name: dbtienda; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE dbtienda WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE dbtienda OWNER TO postgres;

\connect dbtienda

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16421)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16420)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 218 (class 1259 OID 16430)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16429)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 214 (class 1259 OID 16414)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16413)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 220 (class 1259 OID 16437)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16446)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16445)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 219 (class 1259 OID 16436)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 224 (class 1259 OID 16453)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16452)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 226 (class 1259 OID 16512)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16511)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 212 (class 1259 OID 16405)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16404)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 210 (class 1259 OID 16396)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16395)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 227 (class 1259 OID 16541)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16551)
-- Name: tienda_categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_categoria (
    id bigint NOT NULL,
    nombre character varying(200) NOT NULL,
    descripcion character varying(255),
    estado boolean NOT NULL
);


ALTER TABLE public.tienda_categoria OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16550)
-- Name: tienda_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 228
-- Name: tienda_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_categoria_id_seq OWNED BY public.tienda_categoria.id;


--
-- TOC entry 231 (class 1259 OID 16560)
-- Name: tienda_ciudad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_ciudad (
    id bigint NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.tienda_ciudad OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16559)
-- Name: tienda_ciudad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_ciudad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_ciudad_id_seq OWNER TO postgres;

--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 230
-- Name: tienda_ciudad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_ciudad_id_seq OWNED BY public.tienda_ciudad.id;


--
-- TOC entry 233 (class 1259 OID 16569)
-- Name: tienda_departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_departamento (
    id bigint NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.tienda_departamento OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16568)
-- Name: tienda_departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_departamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_departamento_id_seq OWNER TO postgres;

--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 232
-- Name: tienda_departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_departamento_id_seq OWNED BY public.tienda_departamento.id;


--
-- TOC entry 261 (class 1259 OID 16699)
-- Name: tienda_detalleingreso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_detalleingreso (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    ingreso_id bigint NOT NULL,
    producto_id bigint NOT NULL
);


ALTER TABLE public.tienda_detalleingreso OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 16698)
-- Name: tienda_detalleingreso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_detalleingreso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_detalleingreso_id_seq OWNER TO postgres;

--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 260
-- Name: tienda_detalleingreso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_detalleingreso_id_seq OWNED BY public.tienda_detalleingreso.id;


--
-- TOC entry 259 (class 1259 OID 16692)
-- Name: tienda_detalleventa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_detalleventa (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    descuento numeric(4,2) NOT NULL,
    producto_id bigint NOT NULL,
    ventas_id bigint NOT NULL
);


ALTER TABLE public.tienda_detalleventa OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 16691)
-- Name: tienda_detalleventa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_detalleventa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_detalleventa_id_seq OWNER TO postgres;

--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 258
-- Name: tienda_detalleventa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_detalleventa_id_seq OWNED BY public.tienda_detalleventa.id;


--
-- TOC entry 257 (class 1259 OID 16685)
-- Name: tienda_ingreso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_ingreso (
    id bigint NOT NULL,
    serie_comprobante character varying(50) NOT NULL,
    numero_comprobante character varying(50) NOT NULL,
    fecha date NOT NULL,
    impuesto numeric(4,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    estado boolean NOT NULL,
    moneda_id bigint NOT NULL,
    proveedor_id bigint NOT NULL,
    tipo_comprobante_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.tienda_ingreso OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 16684)
-- Name: tienda_ingreso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_ingreso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_ingreso_id_seq OWNER TO postgres;

--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 256
-- Name: tienda_ingreso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_ingreso_id_seq OWNED BY public.tienda_ingreso.id;


--
-- TOC entry 235 (class 1259 OID 16578)
-- Name: tienda_moneda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_moneda (
    id bigint NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.tienda_moneda OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16577)
-- Name: tienda_moneda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_moneda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_moneda_id_seq OWNER TO postgres;

--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 234
-- Name: tienda_moneda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_moneda_id_seq OWNED BY public.tienda_moneda.id;


--
-- TOC entry 237 (class 1259 OID 16587)
-- Name: tienda_pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_pais (
    id bigint NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.tienda_pais OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16586)
-- Name: tienda_pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_pais_id_seq OWNER TO postgres;

--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 236
-- Name: tienda_pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_pais_id_seq OWNED BY public.tienda_pais.id;


--
-- TOC entry 255 (class 1259 OID 16674)
-- Name: tienda_producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_producto (
    id bigint NOT NULL,
    nombre character varying(200) NOT NULL,
    descripcion character varying(255) NOT NULL,
    precio_venta numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    imagen character varying(100),
    estado boolean NOT NULL,
    categoria_id bigint NOT NULL,
    moneda_id bigint NOT NULL,
    proveedor_id bigint NOT NULL,
    unidad_medida_id bigint NOT NULL
);


ALTER TABLE public.tienda_producto OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 16673)
-- Name: tienda_producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_producto_id_seq OWNER TO postgres;

--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 254
-- Name: tienda_producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_producto_id_seq OWNED BY public.tienda_producto.id;


--
-- TOC entry 253 (class 1259 OID 16661)
-- Name: tienda_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_proveedor (
    id bigint NOT NULL,
    razon_social character varying(200) NOT NULL,
    representante character varying(50) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(20),
    email character varying(50) NOT NULL,
    estado boolean NOT NULL,
    ciudad_id bigint NOT NULL,
    departamento_id bigint NOT NULL,
    pais_id bigint NOT NULL
);


ALTER TABLE public.tienda_proveedor OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 16660)
-- Name: tienda_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_proveedor_id_seq OWNER TO postgres;

--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 252
-- Name: tienda_proveedor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_proveedor_id_seq OWNED BY public.tienda_proveedor.id;


--
-- TOC entry 239 (class 1259 OID 16596)
-- Name: tienda_rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_rol (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(255) NOT NULL,
    estado boolean NOT NULL
);


ALTER TABLE public.tienda_rol OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16595)
-- Name: tienda_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_rol_id_seq OWNER TO postgres;

--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 238
-- Name: tienda_rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_rol_id_seq OWNED BY public.tienda_rol.id;


--
-- TOC entry 241 (class 1259 OID 16605)
-- Name: tienda_tipocomprobante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_tipocomprobante (
    id bigint NOT NULL,
    nombre character varying(200) NOT NULL
);


ALTER TABLE public.tienda_tipocomprobante OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16604)
-- Name: tienda_tipocomprobante_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_tipocomprobante_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_tipocomprobante_id_seq OWNER TO postgres;

--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 240
-- Name: tienda_tipocomprobante_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_tipocomprobante_id_seq OWNED BY public.tienda_tipocomprobante.id;


--
-- TOC entry 243 (class 1259 OID 16614)
-- Name: tienda_tipodocumento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_tipodocumento (
    id bigint NOT NULL,
    nombre character varying(200) NOT NULL
);


ALTER TABLE public.tienda_tipodocumento OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16613)
-- Name: tienda_tipodocumento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_tipodocumento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_tipodocumento_id_seq OWNER TO postgres;

--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 242
-- Name: tienda_tipodocumento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_tipodocumento_id_seq OWNED BY public.tienda_tipodocumento.id;


--
-- TOC entry 245 (class 1259 OID 16623)
-- Name: tienda_tipousuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_tipousuario (
    id bigint NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.tienda_tipousuario OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16622)
-- Name: tienda_tipousuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_tipousuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_tipousuario_id_seq OWNER TO postgres;

--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 244
-- Name: tienda_tipousuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_tipousuario_id_seq OWNED BY public.tienda_tipousuario.id;


--
-- TOC entry 247 (class 1259 OID 16632)
-- Name: tienda_unidadmedida; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_unidadmedida (
    id bigint NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.tienda_unidadmedida OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16631)
-- Name: tienda_unidadmedida_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_unidadmedida_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_unidadmedida_id_seq OWNER TO postgres;

--
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 246
-- Name: tienda_unidadmedida_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_unidadmedida_id_seq OWNED BY public.tienda_unidadmedida.id;


--
-- TOC entry 249 (class 1259 OID 16641)
-- Name: tienda_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_usuario (
    id bigint NOT NULL,
    nombre character varying(200) NOT NULL,
    numro_documento character varying(25) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(20) NOT NULL,
    email character varying(50),
    username character varying(50) NOT NULL,
    clave character varying(50) NOT NULL,
    estado boolean NOT NULL,
    rol_id bigint NOT NULL,
    tipo_documento_id bigint NOT NULL,
    tipo_usuario_id bigint NOT NULL
);


ALTER TABLE public.tienda_usuario OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16640)
-- Name: tienda_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 248
-- Name: tienda_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_usuario_id_seq OWNED BY public.tienda_usuario.id;


--
-- TOC entry 251 (class 1259 OID 16654)
-- Name: tienda_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda_venta (
    id bigint NOT NULL,
    serie_comprobante character varying(50) NOT NULL,
    numero_comprobante character varying(50) NOT NULL,
    fecha date NOT NULL,
    impuesto numeric(4,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    estado boolean NOT NULL,
    moneda_id bigint NOT NULL,
    tipo_comprobante_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);


ALTER TABLE public.tienda_venta OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 16653)
-- Name: tienda_venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_venta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_venta_id_seq OWNER TO postgres;

--
-- TOC entry 3720 (class 0 OID 0)
-- Dependencies: 250
-- Name: tienda_venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_venta_id_seq OWNED BY public.tienda_venta.id;


--
-- TOC entry 3296 (class 2604 OID 16424)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3297 (class 2604 OID 16433)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3295 (class 2604 OID 16417)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3298 (class 2604 OID 16440)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3299 (class 2604 OID 16449)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3300 (class 2604 OID 16456)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3301 (class 2604 OID 16515)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3294 (class 2604 OID 16408)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3293 (class 2604 OID 16399)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 16554)
-- Name: tienda_categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_categoria ALTER COLUMN id SET DEFAULT nextval('public.tienda_categoria_id_seq'::regclass);


--
-- TOC entry 3304 (class 2604 OID 16563)
-- Name: tienda_ciudad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ciudad ALTER COLUMN id SET DEFAULT nextval('public.tienda_ciudad_id_seq'::regclass);


--
-- TOC entry 3305 (class 2604 OID 16572)
-- Name: tienda_departamento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_departamento ALTER COLUMN id SET DEFAULT nextval('public.tienda_departamento_id_seq'::regclass);


--
-- TOC entry 3319 (class 2604 OID 16702)
-- Name: tienda_detalleingreso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleingreso ALTER COLUMN id SET DEFAULT nextval('public.tienda_detalleingreso_id_seq'::regclass);


--
-- TOC entry 3318 (class 2604 OID 16695)
-- Name: tienda_detalleventa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleventa ALTER COLUMN id SET DEFAULT nextval('public.tienda_detalleventa_id_seq'::regclass);


--
-- TOC entry 3317 (class 2604 OID 16688)
-- Name: tienda_ingreso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ingreso ALTER COLUMN id SET DEFAULT nextval('public.tienda_ingreso_id_seq'::regclass);


--
-- TOC entry 3306 (class 2604 OID 16581)
-- Name: tienda_moneda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_moneda ALTER COLUMN id SET DEFAULT nextval('public.tienda_moneda_id_seq'::regclass);


--
-- TOC entry 3307 (class 2604 OID 16590)
-- Name: tienda_pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_pais ALTER COLUMN id SET DEFAULT nextval('public.tienda_pais_id_seq'::regclass);


--
-- TOC entry 3316 (class 2604 OID 16677)
-- Name: tienda_producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto ALTER COLUMN id SET DEFAULT nextval('public.tienda_producto_id_seq'::regclass);


--
-- TOC entry 3315 (class 2604 OID 16664)
-- Name: tienda_proveedor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_proveedor ALTER COLUMN id SET DEFAULT nextval('public.tienda_proveedor_id_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 16599)
-- Name: tienda_rol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_rol ALTER COLUMN id SET DEFAULT nextval('public.tienda_rol_id_seq'::regclass);


--
-- TOC entry 3309 (class 2604 OID 16608)
-- Name: tienda_tipocomprobante id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipocomprobante ALTER COLUMN id SET DEFAULT nextval('public.tienda_tipocomprobante_id_seq'::regclass);


--
-- TOC entry 3310 (class 2604 OID 16617)
-- Name: tienda_tipodocumento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipodocumento ALTER COLUMN id SET DEFAULT nextval('public.tienda_tipodocumento_id_seq'::regclass);


--
-- TOC entry 3311 (class 2604 OID 16626)
-- Name: tienda_tipousuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipousuario ALTER COLUMN id SET DEFAULT nextval('public.tienda_tipousuario_id_seq'::regclass);


--
-- TOC entry 3312 (class 2604 OID 16635)
-- Name: tienda_unidadmedida id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_unidadmedida ALTER COLUMN id SET DEFAULT nextval('public.tienda_unidadmedida_id_seq'::regclass);


--
-- TOC entry 3313 (class 2604 OID 16644)
-- Name: tienda_usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_usuario ALTER COLUMN id SET DEFAULT nextval('public.tienda_usuario_id_seq'::regclass);


--
-- TOC entry 3314 (class 2604 OID 16657)
-- Name: tienda_venta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_venta ALTER COLUMN id SET DEFAULT nextval('public.tienda_venta_id_seq'::regclass);


--
-- TOC entry 3643 (class 0 OID 16421)
-- Dependencies: 216
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3645 (class 0 OID 16430)
-- Dependencies: 218
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3641 (class 0 OID 16414)
-- Dependencies: 214
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add categoria', 7, 'add_categoria');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change categoria', 7, 'change_categoria');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete categoria', 7, 'delete_categoria');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view categoria', 7, 'view_categoria');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add ciudad', 8, 'add_ciudad');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change ciudad', 8, 'change_ciudad');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete ciudad', 8, 'delete_ciudad');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view ciudad', 8, 'view_ciudad');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add departamento', 9, 'add_departamento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change departamento', 9, 'change_departamento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete departamento', 9, 'delete_departamento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view departamento', 9, 'view_departamento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add moneda', 10, 'add_moneda');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change moneda', 10, 'change_moneda');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete moneda', 10, 'delete_moneda');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view moneda', 10, 'view_moneda');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add pais', 11, 'add_pais');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change pais', 11, 'change_pais');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete pais', 11, 'delete_pais');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view pais', 11, 'view_pais');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add rol', 12, 'add_rol');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change rol', 12, 'change_rol');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete rol', 12, 'delete_rol');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view rol', 12, 'view_rol');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add tipo comprobante', 13, 'add_tipocomprobante');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change tipo comprobante', 13, 'change_tipocomprobante');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete tipo comprobante', 13, 'delete_tipocomprobante');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view tipo comprobante', 13, 'view_tipocomprobante');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add tipo documento', 14, 'add_tipodocumento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change tipo documento', 14, 'change_tipodocumento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete tipo documento', 14, 'delete_tipodocumento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view tipo documento', 14, 'view_tipodocumento');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add tipo usuario', 15, 'add_tipousuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change tipo usuario', 15, 'change_tipousuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete tipo usuario', 15, 'delete_tipousuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view tipo usuario', 15, 'view_tipousuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add unidad medida', 16, 'add_unidadmedida');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change unidad medida', 16, 'change_unidadmedida');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete unidad medida', 16, 'delete_unidadmedida');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view unidad medida', 16, 'view_unidadmedida');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can add usuario', 17, 'add_usuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can change usuario', 17, 'change_usuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can delete usuario', 17, 'delete_usuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can view usuario', 17, 'view_usuario');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can add venta', 18, 'add_venta');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can change venta', 18, 'change_venta');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can delete venta', 18, 'delete_venta');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can view venta', 18, 'view_venta');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can add proveedor', 19, 'add_proveedor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can change proveedor', 19, 'change_proveedor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can delete proveedor', 19, 'delete_proveedor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (76, 'Can view proveedor', 19, 'view_proveedor');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (77, 'Can add producto', 20, 'add_producto');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (78, 'Can change producto', 20, 'change_producto');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (79, 'Can delete producto', 20, 'delete_producto');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (80, 'Can view producto', 20, 'view_producto');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (81, 'Can add ingreso', 21, 'add_ingreso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (82, 'Can change ingreso', 21, 'change_ingreso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (83, 'Can delete ingreso', 21, 'delete_ingreso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (84, 'Can view ingreso', 21, 'view_ingreso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (85, 'Can add detalle venta', 22, 'add_detalleventa');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (86, 'Can change detalle venta', 22, 'change_detalleventa');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (87, 'Can delete detalle venta', 22, 'delete_detalleventa');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (88, 'Can view detalle venta', 22, 'view_detalleventa');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (89, 'Can add detalle ingreso', 23, 'add_detalleingreso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (90, 'Can change detalle ingreso', 23, 'change_detalleingreso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (91, 'Can delete detalle ingreso', 23, 'delete_detalleingreso');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (92, 'Can view detalle ingreso', 23, 'view_detalleingreso');


--
-- TOC entry 3647 (class 0 OID 16437)
-- Dependencies: 220
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$260000$y2CI0Yhk0Gnvv5OiBhqNnU$hTSOu4/UvhdHC7r0rRWoaoQ7TUUnLqLZsxQueKvfpQw=', '2021-10-10 10:39:27.47113-05', true, 'NIELS', 'NIELS', 'SALVADOR', 'niels@outlook.com', true, true, '2021-10-05 13:42:01-05');


--
-- TOC entry 3649 (class 0 OID 16446)
-- Dependencies: 222
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3651 (class 0 OID 16453)
-- Dependencies: 224
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3653 (class 0 OID 16512)
-- Dependencies: 226
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2021-10-05 13:47:17.091606-05', '1', 'CELULARES', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2021-10-05 14:04:53.622477-05', '1', 'PERU', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2021-10-05 14:05:00.75007-05', '1', 'LIMA', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2021-10-05 14:05:10.276411-05', '1', 'LIMA', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2021-10-05 14:05:29.781547-05', '1', 'Razon social 1', 1, '[{"added": {}}]', 19, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2021-10-05 14:06:00.519705-05', '1', 'UND', 1, '[{"added": {}}]', 16, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2021-10-05 14:06:13.325991-05', '1', 'soles', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2021-10-05 14:06:27.27205-05', '1', 'SAMSUNG GALAXY A20S', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2021-10-05 14:14:01.789179-05', '1', 'SAMSUNG GALAXY A20S', 2, '[{"changed": {"fields": ["Image"]}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2021-10-05 17:49:16.692813-05', '2', 'BRAZIL', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2021-10-05 17:49:31.592564-05', '2', 'SAO PAULO', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2021-10-05 17:49:44.74125-05', '2', 'SAO PAULO', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2021-10-05 17:49:58.204865-05', '2', 'Razon social 2', 1, '[{"added": {}}]', 19, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2021-10-05 17:50:35.504017-05', '2', 'DOLARES', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2021-10-05 17:50:58.22772-05', '1', 'SOLES', 2, '[{"changed": {"fields": ["Nombre"]}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2021-10-05 17:51:15.423206-05', '2', 'XIOMI NOTE 9', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2021-10-05 17:54:25.954703-05', '3', 'Iphone-11-pro-max-gris', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2021-10-05 17:55:56.716146-05', '3', 'Iphone-11-pro-max-gris', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2021-10-05 18:47:55.315098-05', '2', 'MONITORES', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2021-10-05 18:48:27.559381-05', '3', 'SMARTV', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2021-10-05 18:49:04.848713-05', '4', 'NOTEBOOK', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2021-10-06 02:51:38.838756-05', '4', 'MONITOR SAMSUNG', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2021-10-06 02:52:18.659194-05', '5', 'MONITOR LG LED', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2021-10-06 14:19:27.746213-05', '6', 'SMART TV KM2300', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2021-10-06 14:22:51.420358-05', '7', 'SMART TV ZS2300', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2021-10-06 14:25:15.298847-05', '8', 'NOTEBOOK HP 23001', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2021-10-06 14:26:10.828453-05', '9', 'NOTEBOOK DELL G4300', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2021-10-06 22:39:38.585651-05', '1', 'nilstar80@hotmail.com', 2, '[{"changed": {"fields": ["Username", "First name", "Last name"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2021-10-06 22:50:56.294444-05', '1', 'NIELS', 2, '[{"changed": {"fields": ["Username"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2021-10-06 22:53:25.282093-05', '1', 'NATURAL', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2021-10-06 22:53:38.70938-05', '2', 'RUC', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2021-10-06 22:53:57.18344-05', '1', 'CARNET EXTRANJERIA', 2, '[{"changed": {"fields": ["Nombre"]}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2021-10-06 22:54:15.091519-05', '3', 'DNI', 1, '[{"added": {}}]', 14, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2021-10-06 22:54:49.647366-05', '1', 'NATURAL', 1, '[{"added": {}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2021-10-06 22:54:57.096983-05', '2', 'JURIDICO', 1, '[{"added": {}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2021-10-06 22:56:55.974203-05', '1', 'VENDEDOR', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2021-10-07 23:04:48.729731-05', '4', 'niels', 2, '[{"changed": {"fields": ["Nombre"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2021-10-07 23:05:21.249858-05', '4', 'niels', 2, '[{"changed": {"fields": ["Username"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2021-10-07 23:05:35.617711-05', '4', 'niels', 2, '[{"changed": {"fields": ["Email"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2021-10-07 23:06:10.053271-05', '4', 'NIELS', 2, '[{"changed": {"fields": ["Nombre"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2021-10-08 03:50:44.269518-05', '5', 'IMPRESORAS', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2021-10-08 03:51:49.266945-05', '10', 'IMPRESORA HP 2200', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2021-10-08 03:52:35.200774-05', '11', 'IMPRESORA CANON 3300', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2021-10-08 03:53:38.523717-05', '12', 'IMPRESORA EPSON 1323', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2021-10-08 20:37:31.890796-05', '1', 'BOLETA', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2021-10-08 20:37:39.78877-05', '2', 'FACTURA', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2021-10-09 18:41:24.529724-05', '13', 'IMPRESORA INDUSTRIAL EPSON 2345', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2021-10-09 18:44:13.613825-05', '14', 'IMPRESORA INDUSTRIAL LEXMARK', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2021-10-09 18:48:04.427948-05', '15', 'IMPRESORA INDUSTRIAL CANON', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2021-10-10 00:28:10.548663-05', '16', 'SSD HP 480G', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2021-10-10 00:28:59.73217-05', '6', 'ALMACENAMIENTO', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2021-10-10 00:29:20.618999-05', '16', 'SSD HP 480G', 2, '[{"changed": {"fields": ["Categoria"]}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2021-10-10 00:30:38.303062-05', '17', 'SSD KINGSTON 480G', 1, '[{"added": {}}]', 20, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2021-10-12 01:04:59.783669-05', '7', 'JHON', 2, '[{"changed": {"fields": ["Nombre"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (55, '2021-10-12 19:34:24.022658-05', '7', 'EQUIPO SONIDO', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (56, '2021-10-12 19:36:23.92228-05', '18', 'PANASONIC M3456', 1, '[{"added": {}}]', 20, 1);


--
-- TOC entry 3639 (class 0 OID 16405)
-- Dependencies: 212
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'tienda', 'categoria');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'tienda', 'ciudad');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'tienda', 'departamento');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'tienda', 'moneda');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'tienda', 'pais');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'tienda', 'rol');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'tienda', 'tipocomprobante');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'tienda', 'tipodocumento');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'tienda', 'tipousuario');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'tienda', 'unidadmedida');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'tienda', 'usuario');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'tienda', 'venta');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'tienda', 'proveedor');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'tienda', 'producto');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (21, 'tienda', 'ingreso');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (22, 'tienda', 'detalleventa');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (23, 'tienda', 'detalleingreso');


--
-- TOC entry 3637 (class 0 OID 16396)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2021-10-05 13:40:47.957058-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2021-10-05 13:40:48.109416-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2021-10-05 13:40:48.161446-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-10-05 13:40:48.175437-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-05 13:40:48.198422-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-10-05 13:40:48.25139-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2021-10-05 13:40:48.277374-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2021-10-05 13:40:48.30136-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2021-10-05 13:40:48.326345-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2021-10-05 13:40:48.34833-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2021-10-05 13:40:48.353327-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2021-10-05 13:40:48.374244-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2021-10-05 13:40:48.401671-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2021-10-05 13:40:48.419661-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2021-10-05 13:40:48.436649-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2021-10-05 13:40:48.458636-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2021-10-05 13:40:48.482621-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2021-10-05 13:40:48.510605-05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'tienda', '0001_initial', '2021-10-05 13:40:49.10456-05');


--
-- TOC entry 3654 (class 0 OID 16541)
-- Dependencies: 227
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('dk81mrkwp2qkkdcs51v8lght06pk0aka', '.eJxVjEEOwiAQRe_C2hCgFKpL9z1DM8PMSNVAUtqV8e7apAvd_vfef6kJtjVPW-NlmkldlFWn3w0hPbjsgO5QblWnWtZlRr0r-qBNj5X4eT3cv4MMLX9rRAGMMgCz9ygkFLpgzHAGayAFAS8-MvZCaBwbtDYJdEHYheh6Mer9ATFCOW0:1mZav9:ri-yYhDzNULL-itw3FmJi5OPcfcdrSaOKmlUe64Sgxo', '2021-10-24 10:39:27.476129-05');


--
-- TOC entry 3656 (class 0 OID 16551)
-- Dependencies: 229
-- Data for Name: tienda_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_categoria (id, nombre, descripcion, estado) VALUES (1, 'CELULARES', 'Alta gama', true);
INSERT INTO public.tienda_categoria (id, nombre, descripcion, estado) VALUES (2, 'MONITORES', 'MONITORES ALTA CALIDAD', true);
INSERT INTO public.tienda_categoria (id, nombre, descripcion, estado) VALUES (3, 'SMARTV', 'TELEVISOR INTELIGENTE', true);
INSERT INTO public.tienda_categoria (id, nombre, descripcion, estado) VALUES (4, 'NOTEBOOK', 'ALGA GAMA', true);
INSERT INTO public.tienda_categoria (id, nombre, descripcion, estado) VALUES (5, 'IMPRESORAS', 'TINTA LIQUIDA', true);
INSERT INTO public.tienda_categoria (id, nombre, descripcion, estado) VALUES (6, 'ALMACENAMIENTO', 'DISPOCITIVOS DE ALMACENAMIENTO', true);
INSERT INTO public.tienda_categoria (id, nombre, descripcion, estado) VALUES (7, 'EQUIPO SONIDO', 'MUSICA', true);


--
-- TOC entry 3658 (class 0 OID 16560)
-- Dependencies: 231
-- Data for Name: tienda_ciudad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_ciudad (id, nombre) VALUES (1, 'LIMA');
INSERT INTO public.tienda_ciudad (id, nombre) VALUES (2, 'SAO PAULO');


--
-- TOC entry 3660 (class 0 OID 16569)
-- Dependencies: 233
-- Data for Name: tienda_departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_departamento (id, nombre) VALUES (1, 'LIMA');
INSERT INTO public.tienda_departamento (id, nombre) VALUES (2, 'SAO PAULO');


--
-- TOC entry 3688 (class 0 OID 16699)
-- Dependencies: 261
-- Data for Name: tienda_detalleingreso; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3686 (class 0 OID 16692)
-- Dependencies: 259
-- Data for Name: tienda_detalleventa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (1, 2, 2000.00, 0.00, 2, 7);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (2, 1, 1000.00, 0.00, 3, 8);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (3, 4, 2000.00, 0.00, 1, 9);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (4, 3, 2000.00, 0.00, 2, 9);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (5, 3, 1000.00, 0.00, 3, 9);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (6, 1, 2000.00, 0.00, 2, 10);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (7, 1, 10000.00, 0.00, 14, 10);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (8, 1, 3000.00, 0.00, 15, 10);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (9, 1, 2000.00, 0.00, 10, 11);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (10, 1, 1500.00, 0.00, 16, 12);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (11, 2, 200.00, 0.00, 17, 13);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (12, 1, 1500.00, 0.00, 11, 14);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (13, 1, 1212.00, 0.00, 12, 14);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (14, 1, 1000.00, 0.00, 18, 15);
INSERT INTO public.tienda_detalleventa (id, cantidad, precio, descuento, producto_id, ventas_id) VALUES (15, 1, 1000.00, 0.00, 9, 15);


--
-- TOC entry 3684 (class 0 OID 16685)
-- Dependencies: 257
-- Data for Name: tienda_ingreso; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3662 (class 0 OID 16578)
-- Dependencies: 235
-- Data for Name: tienda_moneda; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_moneda (id, nombre) VALUES (2, 'DOLARES');
INSERT INTO public.tienda_moneda (id, nombre) VALUES (1, 'SOLES');


--
-- TOC entry 3664 (class 0 OID 16587)
-- Dependencies: 237
-- Data for Name: tienda_pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_pais (id, nombre) VALUES (1, 'PERU');
INSERT INTO public.tienda_pais (id, nombre) VALUES (2, 'BRAZIL');


--
-- TOC entry 3682 (class 0 OID 16674)
-- Dependencies: 255
-- Data for Name: tienda_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (1, 'SAMSUNG GALAXY A20S', 'Alta gama', 2000.00, 100, 'image/upload/v1633461241/hhf9rh9dwz0mgpgcxx8t.jpg', true, 1, 1, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (2, 'XIOMI NOTE 9', 'Alta gama', 2000.00, 100, 'image/upload/v1633474275/zmlduxh3rsrjrqdiblhq.jpg', true, 1, 2, 2, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (3, 'Iphone-11-pro-max-gris', 'Iphone-11-pro-max-gris Núcleo de cuarta generación', 1000.00, 100, 'image/upload/v1633474466/j3ol21rvh1rvarlivfl7.jpg', true, 1, 2, 2, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (4, 'MONITOR SAMSUNG', 'MONITOR LED', 1500.00, 50, 'image/upload/v1633506699/hjxinxghyyeblvvhqxmi.jpg', true, 2, 1, 2, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (5, 'MONITOR LG LED', 'MONITOR LG', 200.00, 100, 'image/upload/v1633506739/vnl1oholf44lnwjfyuak.jpg', true, 2, 2, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (6, 'SMART TV KM2300', 'ULTRA HD', 1000.00, 100, 'image/upload/v1633547968/qogh7ved66fzs5ddfx99.jpg', true, 3, 2, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (7, 'SMART TV ZS2300', 'TELEVISOR INTELIGENTE', 1800.00, 200, 'image/upload/v1633548172/sapnebqtgr612xziqazx.jpg', true, 3, 2, 2, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (8, 'NOTEBOOK HP 23001', 'NOTEBOOK ALTA GAMA', 1900.00, 50, 'image/upload/v1633548316/yik95kllliuajx3ncmji.jpg', true, 4, 2, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (9, 'NOTEBOOK DELL G4300', 'NOTEBOOK ALTA GAMA', 1000.00, 60, 'image/upload/v1633548372/cnsqvhjqsozvh5mdvu6p.jpg', true, 4, 2, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (10, 'IMPRESORA HP 2200', 'TINTA LIQUIDA', 2000.00, 50, 'image/upload/v1633683110/kwaofl1zdyhqbcdptzri.jpg', true, 5, 1, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (11, 'IMPRESORA CANON 3300', 'TINTA LIQUIDA', 1500.00, 55, 'image/upload/v1633683155/n0zalq8eza43f4pxbsww.jpg', true, 5, 1, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (12, 'IMPRESORA EPSON 1323', 'TINTA LIQUIDA', 1212.00, 25, 'image/upload/v1633683219/qfc7nffinmw1dumns4tc.jpg', true, 5, 1, 2, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (13, 'IMPRESORA INDUSTRIAL EPSON 2345', 'IMPRESORA INSUDTRIAL', 3000.00, 100, 'image/upload/v1633822884/n9tnievkwaalvpcc0aoz.jpg', true, 5, 2, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (14, 'IMPRESORA INDUSTRIAL LEXMARK', 'IMPRESORA INDUSTRIAL', 10000.00, 50, 'image/upload/v1633823053/fjbbwsh1wh1tzruy14fj.jpg', true, 5, 1, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (15, 'IMPRESORA INDUSTRIAL CANON', 'IMPRESORA INDUSTRIAL', 3000.00, 10, 'image/upload/v1633823284/lsorayr1z6bglwcmirwe.jpg', true, 5, 2, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (16, 'SSD HP 480G', 'DISCO DE ESTADO SOLIDO', 1500.00, 100, 'image/upload/v1633843690/hhmpgv8yjbpslydvd9vu.jpg', true, 6, 1, 1, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (17, 'SSD KINGSTON 480G', 'DISCO DE ESTADO SOLIDO', 200.00, 100, 'image/upload/v1633843835/nz2scrzamithbkbhbezg.jpg', true, 6, 1, 2, 1);
INSERT INTO public.tienda_producto (id, nombre, descripcion, precio_venta, stock, imagen, estado, categoria_id, moneda_id, proveedor_id, unidad_medida_id) VALUES (18, 'PANASONIC M3456', 'EQUIPO DE AUDIO', 1000.00, 100, 'image/upload/v1634085385/aqjitwjwpxrki30kn1n1.jpg', true, 7, 1, 1, 1);


--
-- TOC entry 3680 (class 0 OID 16661)
-- Dependencies: 253
-- Data for Name: tienda_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_proveedor (id, razon_social, representante, direccion, telefono, email, estado, ciudad_id, departamento_id, pais_id) VALUES (1, 'Razon social 1', 'JHON', 'A.V. Gonzalo Pizarro #831', '+51980400440', 'niels_us@outlook.com', true, 1, 1, 1);
INSERT INTO public.tienda_proveedor (id, razon_social, representante, direccion, telefono, email, estado, ciudad_id, departamento_id, pais_id) VALUES (2, 'Razon social 2', 'JHON', 'A.V. Gonzalo Pizarro #831', '+51980400440', 'nilstar80@hotmail.com', true, 2, 2, 2);


--
-- TOC entry 3666 (class 0 OID 16596)
-- Dependencies: 239
-- Data for Name: tienda_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_rol (id, nombre, descripcion, estado) VALUES (1, 'VENDEDOR', 'VENDEDOR FULLSTACK', true);


--
-- TOC entry 3668 (class 0 OID 16605)
-- Dependencies: 241
-- Data for Name: tienda_tipocomprobante; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_tipocomprobante (id, nombre) VALUES (1, 'BOLETA');
INSERT INTO public.tienda_tipocomprobante (id, nombre) VALUES (2, 'FACTURA');


--
-- TOC entry 3670 (class 0 OID 16614)
-- Dependencies: 243
-- Data for Name: tienda_tipodocumento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_tipodocumento (id, nombre) VALUES (2, 'RUC');
INSERT INTO public.tienda_tipodocumento (id, nombre) VALUES (1, 'CARNET EXTRANJERIA');
INSERT INTO public.tienda_tipodocumento (id, nombre) VALUES (3, 'DNI');


--
-- TOC entry 3672 (class 0 OID 16623)
-- Dependencies: 245
-- Data for Name: tienda_tipousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_tipousuario (id, nombre) VALUES (1, 'NATURAL');
INSERT INTO public.tienda_tipousuario (id, nombre) VALUES (2, 'JURIDICO');


--
-- TOC entry 3674 (class 0 OID 16632)
-- Dependencies: 247
-- Data for Name: tienda_unidadmedida; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_unidadmedida (id, nombre) VALUES (1, 'UND');


--
-- TOC entry 3676 (class 0 OID 16641)
-- Dependencies: 249
-- Data for Name: tienda_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (2, 'JUAN', '5555555555', 'A.V. Gonzalo Pizarro #831', '+51980400440', 'juan@hotmail.com', 'JUAN', '123', true, 1, 1, 1);
INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (4, 'NIELS', '234523452351', 'A.V. Gonzalo Pizarro #831', '+51980400440', 'nilstar80@hotmniail.com', 'niels', '123', true, 1, 2, 1);
INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (5, 'Raul Torres', '234523452351', 'A.V. Gonzalo Pizarro #831LIMA', '+349804004403', 'Raul_19953@hotmail.com', 'Raul', '123', true, 1, 1, 2);
INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (8, 'PEDRO', '3454523452345', 'A.V. Gonzalo Pizarro #831LIMA', '+34980400440', 'PEDRO@hotmail.com', 'PEDRO', '123456', true, 1, 2, 1);
INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (9, 'juan', '342433423432', 'A.V. Gonzalo Pizarro #900', '+51980400442', 'juan@gmail.com', 'juan', '123', true, 1, 3, 1);
INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (7, 'JHON', '12345678', 'A.V JHON MITCHEL 555', '33333344567', 'JHONMITCHEL@OUTLOOK.COM', 'JMITCHEL', '123456', true, 1, 3, 1);
INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (11, 'omar', '23452345235', 'A.V. Gonzalo Pizarro #900', '+51980400442', 'omar@gmail.com', 'omar', '123', true, 1, 3, 1);
INSERT INTO public.tienda_usuario (id, nombre, numro_documento, direccion, telefono, email, username, clave, estado, rol_id, tipo_documento_id, tipo_usuario_id) VALUES (12, 'alexander', '2345234523519', 'A.V. Gonzalo Pizarro #900', '+51980400442', 'alexander@gmail.com', 'alexander', '123', true, 1, 3, 1);


--
-- TOC entry 3678 (class 0 OID 16654)
-- Dependencies: 251
-- Data for Name: tienda_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (2, '0001', '1', '2021-10-09', 0.18, 5000.00, true, 2, 1, 7);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (3, '0001', '1', '2021-10-09', 0.18, 3000.00, true, 2, 1, 7);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (4, '0001', '1', '2021-10-09', 0.18, 4712.00, true, 2, 2, 7);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (5, '0001', '1', '2021-10-09', 0.18, 1500.00, true, 1, 2, 8);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (6, '0001', '1', '2021-10-11', 0.00, 2000.00, true, 2, 1, 4);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (7, '0001', '1', '2021-10-11', 0.00, 4000.00, true, 2, 1, 4);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (8, '0001', '1', '2021-10-11', 0.00, 1000.00, true, 1, 1, 4);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (9, '0001', '1', '2021-10-12', 0.00, 17000.00, true, 1, 1, 4);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (10, '0001', '1', '2021-10-12', 0.00, 15000.00, true, 1, 1, 4);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (11, '0001', '1', '2021-10-12', 0.00, 2000.00, true, 1, 1, 4);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (12, '0001', '1', '2021-10-12', 0.00, 1500.00, true, 2, 1, 9);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (13, '0001', '1', '2021-10-12', 61.02, 400.00, true, 1, 2, 7);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (14, '0001', '1', '2021-10-13', 0.00, 2712.00, true, 1, 1, 11);
INSERT INTO public.tienda_venta (id, serie_comprobante, numero_comprobante, fecha, impuesto, total, estado, moneda_id, tipo_comprobante_id, usuario_id) VALUES (15, '0001', '1', '2021-10-13', 0.00, 2000.00, true, 1, 1, 12);


--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 56, true);


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 228
-- Name: tienda_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_categoria_id_seq', 7, true);


--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 230
-- Name: tienda_ciudad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_ciudad_id_seq', 2, true);


--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 232
-- Name: tienda_departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_departamento_id_seq', 2, true);


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 260
-- Name: tienda_detalleingreso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_detalleingreso_id_seq', 1, false);


--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 258
-- Name: tienda_detalleventa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_detalleventa_id_seq', 15, true);


--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 256
-- Name: tienda_ingreso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_ingreso_id_seq', 1, false);


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 234
-- Name: tienda_moneda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_moneda_id_seq', 2, true);


--
-- TOC entry 3737 (class 0 OID 0)
-- Dependencies: 236
-- Name: tienda_pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_pais_id_seq', 2, true);


--
-- TOC entry 3738 (class 0 OID 0)
-- Dependencies: 254
-- Name: tienda_producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_producto_id_seq', 18, true);


--
-- TOC entry 3739 (class 0 OID 0)
-- Dependencies: 252
-- Name: tienda_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_proveedor_id_seq', 2, true);


--
-- TOC entry 3740 (class 0 OID 0)
-- Dependencies: 238
-- Name: tienda_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_rol_id_seq', 1, true);


--
-- TOC entry 3741 (class 0 OID 0)
-- Dependencies: 240
-- Name: tienda_tipocomprobante_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_tipocomprobante_id_seq', 2, true);


--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 242
-- Name: tienda_tipodocumento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_tipodocumento_id_seq', 3, true);


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 244
-- Name: tienda_tipousuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_tipousuario_id_seq', 2, true);


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 246
-- Name: tienda_unidadmedida_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_unidadmedida_id_seq', 1, true);


--
-- TOC entry 3745 (class 0 OID 0)
-- Dependencies: 248
-- Name: tienda_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_usuario_id_seq', 12, true);


--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 250
-- Name: tienda_venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_venta_id_seq', 15, true);


--
-- TOC entry 3333 (class 2606 OID 16539)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3338 (class 2606 OID 16469)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3341 (class 2606 OID 16435)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3335 (class 2606 OID 16426)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 16460)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3330 (class 2606 OID 16419)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 16451)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 16484)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3343 (class 2606 OID 16442)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 16458)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3358 (class 2606 OID 16498)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3346 (class 2606 OID 16534)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3361 (class 2606 OID 16520)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 16412)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3325 (class 2606 OID 16410)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3321 (class 2606 OID 16403)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 16547)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3369 (class 2606 OID 16558)
-- Name: tienda_categoria tienda_categoria_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_categoria
    ADD CONSTRAINT tienda_categoria_nombre_key UNIQUE (nombre);


--
-- TOC entry 3371 (class 2606 OID 16556)
-- Name: tienda_categoria tienda_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_categoria
    ADD CONSTRAINT tienda_categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3374 (class 2606 OID 16567)
-- Name: tienda_ciudad tienda_ciudad_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ciudad
    ADD CONSTRAINT tienda_ciudad_nombre_key UNIQUE (nombre);


--
-- TOC entry 3376 (class 2606 OID 16565)
-- Name: tienda_ciudad tienda_ciudad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ciudad
    ADD CONSTRAINT tienda_ciudad_pkey PRIMARY KEY (id);


--
-- TOC entry 3379 (class 2606 OID 16576)
-- Name: tienda_departamento tienda_departamento_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_departamento
    ADD CONSTRAINT tienda_departamento_nombre_key UNIQUE (nombre);


--
-- TOC entry 3381 (class 2606 OID 16574)
-- Name: tienda_departamento tienda_departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_departamento
    ADD CONSTRAINT tienda_departamento_pkey PRIMARY KEY (id);


--
-- TOC entry 3465 (class 2606 OID 16704)
-- Name: tienda_detalleingreso tienda_detalleingreso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleingreso
    ADD CONSTRAINT tienda_detalleingreso_pkey PRIMARY KEY (id);


--
-- TOC entry 3460 (class 2606 OID 16697)
-- Name: tienda_detalleventa tienda_detalleventa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleventa
    ADD CONSTRAINT tienda_detalleventa_pkey PRIMARY KEY (id);


--
-- TOC entry 3455 (class 2606 OID 16690)
-- Name: tienda_ingreso tienda_ingreso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ingreso
    ADD CONSTRAINT tienda_ingreso_pkey PRIMARY KEY (id);


--
-- TOC entry 3384 (class 2606 OID 16585)
-- Name: tienda_moneda tienda_moneda_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_moneda
    ADD CONSTRAINT tienda_moneda_nombre_key UNIQUE (nombre);


--
-- TOC entry 3386 (class 2606 OID 16583)
-- Name: tienda_moneda tienda_moneda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_moneda
    ADD CONSTRAINT tienda_moneda_pkey PRIMARY KEY (id);


--
-- TOC entry 3389 (class 2606 OID 16594)
-- Name: tienda_pais tienda_pais_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_pais
    ADD CONSTRAINT tienda_pais_nombre_key UNIQUE (nombre);


--
-- TOC entry 3391 (class 2606 OID 16592)
-- Name: tienda_pais tienda_pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_pais
    ADD CONSTRAINT tienda_pais_pkey PRIMARY KEY (id);


--
-- TOC entry 3448 (class 2606 OID 16683)
-- Name: tienda_producto tienda_producto_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_nombre_key UNIQUE (nombre);


--
-- TOC entry 3450 (class 2606 OID 16681)
-- Name: tienda_producto tienda_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_pkey PRIMARY KEY (id);


--
-- TOC entry 3437 (class 2606 OID 16672)
-- Name: tienda_proveedor tienda_proveedor_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_proveedor
    ADD CONSTRAINT tienda_proveedor_email_key UNIQUE (email);


--
-- TOC entry 3440 (class 2606 OID 16668)
-- Name: tienda_proveedor tienda_proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_proveedor
    ADD CONSTRAINT tienda_proveedor_pkey PRIMARY KEY (id);


--
-- TOC entry 3443 (class 2606 OID 16670)
-- Name: tienda_proveedor tienda_proveedor_razon_social_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_proveedor
    ADD CONSTRAINT tienda_proveedor_razon_social_key UNIQUE (razon_social);


--
-- TOC entry 3394 (class 2606 OID 16603)
-- Name: tienda_rol tienda_rol_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_rol
    ADD CONSTRAINT tienda_rol_nombre_key UNIQUE (nombre);


--
-- TOC entry 3396 (class 2606 OID 16601)
-- Name: tienda_rol tienda_rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_rol
    ADD CONSTRAINT tienda_rol_pkey PRIMARY KEY (id);


--
-- TOC entry 3399 (class 2606 OID 16612)
-- Name: tienda_tipocomprobante tienda_tipocomprobante_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipocomprobante
    ADD CONSTRAINT tienda_tipocomprobante_nombre_key UNIQUE (nombre);


--
-- TOC entry 3401 (class 2606 OID 16610)
-- Name: tienda_tipocomprobante tienda_tipocomprobante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipocomprobante
    ADD CONSTRAINT tienda_tipocomprobante_pkey PRIMARY KEY (id);


--
-- TOC entry 3404 (class 2606 OID 16621)
-- Name: tienda_tipodocumento tienda_tipodocumento_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipodocumento
    ADD CONSTRAINT tienda_tipodocumento_nombre_key UNIQUE (nombre);


--
-- TOC entry 3406 (class 2606 OID 16619)
-- Name: tienda_tipodocumento tienda_tipodocumento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipodocumento
    ADD CONSTRAINT tienda_tipodocumento_pkey PRIMARY KEY (id);


--
-- TOC entry 3409 (class 2606 OID 16630)
-- Name: tienda_tipousuario tienda_tipousuario_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipousuario
    ADD CONSTRAINT tienda_tipousuario_nombre_key UNIQUE (nombre);


--
-- TOC entry 3411 (class 2606 OID 16628)
-- Name: tienda_tipousuario tienda_tipousuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_tipousuario
    ADD CONSTRAINT tienda_tipousuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3414 (class 2606 OID 16639)
-- Name: tienda_unidadmedida tienda_unidadmedida_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_unidadmedida
    ADD CONSTRAINT tienda_unidadmedida_nombre_key UNIQUE (nombre);


--
-- TOC entry 3416 (class 2606 OID 16637)
-- Name: tienda_unidadmedida tienda_unidadmedida_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_unidadmedida
    ADD CONSTRAINT tienda_unidadmedida_pkey PRIMARY KEY (id);


--
-- TOC entry 3419 (class 2606 OID 16650)
-- Name: tienda_usuario tienda_usuario_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_usuario
    ADD CONSTRAINT tienda_usuario_nombre_key UNIQUE (nombre);


--
-- TOC entry 3421 (class 2606 OID 16648)
-- Name: tienda_usuario tienda_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_usuario
    ADD CONSTRAINT tienda_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3427 (class 2606 OID 16652)
-- Name: tienda_usuario tienda_usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_usuario
    ADD CONSTRAINT tienda_usuario_username_key UNIQUE (username);


--
-- TOC entry 3430 (class 2606 OID 16659)
-- Name: tienda_venta tienda_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_venta
    ADD CONSTRAINT tienda_venta_pkey PRIMARY KEY (id);


--
-- TOC entry 3331 (class 1259 OID 16540)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3336 (class 1259 OID 16480)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3339 (class 1259 OID 16481)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3326 (class 1259 OID 16466)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3347 (class 1259 OID 16496)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3350 (class 1259 OID 16495)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3353 (class 1259 OID 16510)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3356 (class 1259 OID 16509)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3344 (class 1259 OID 16535)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3359 (class 1259 OID 16531)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3362 (class 1259 OID 16532)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3363 (class 1259 OID 16549)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3366 (class 1259 OID 16548)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3367 (class 1259 OID 16705)
-- Name: tienda_categoria_nombre_b1ccbede_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_categoria_nombre_b1ccbede_like ON public.tienda_categoria USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3372 (class 1259 OID 16706)
-- Name: tienda_ciudad_nombre_caea87f0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_ciudad_nombre_caea87f0_like ON public.tienda_ciudad USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3377 (class 1259 OID 16707)
-- Name: tienda_departamento_nombre_0fd37222_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_departamento_nombre_0fd37222_like ON public.tienda_departamento USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3463 (class 1259 OID 16844)
-- Name: tienda_detalleingreso_ingreso_id_922102dc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_detalleingreso_ingreso_id_922102dc ON public.tienda_detalleingreso USING btree (ingreso_id);


--
-- TOC entry 3466 (class 1259 OID 16845)
-- Name: tienda_detalleingreso_producto_id_45a653ce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_detalleingreso_producto_id_45a653ce ON public.tienda_detalleingreso USING btree (producto_id);


--
-- TOC entry 3461 (class 1259 OID 16832)
-- Name: tienda_detalleventa_producto_id_1a351895; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_detalleventa_producto_id_1a351895 ON public.tienda_detalleventa USING btree (producto_id);


--
-- TOC entry 3462 (class 1259 OID 16833)
-- Name: tienda_detalleventa_ventas_id_c44290eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_detalleventa_ventas_id_c44290eb ON public.tienda_detalleventa USING btree (ventas_id);


--
-- TOC entry 3453 (class 1259 OID 16818)
-- Name: tienda_ingreso_moneda_id_fa9d7ca4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_ingreso_moneda_id_fa9d7ca4 ON public.tienda_ingreso USING btree (moneda_id);


--
-- TOC entry 3456 (class 1259 OID 16819)
-- Name: tienda_ingreso_proveedor_id_f474bcf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_ingreso_proveedor_id_f474bcf9 ON public.tienda_ingreso USING btree (proveedor_id);


--
-- TOC entry 3457 (class 1259 OID 16820)
-- Name: tienda_ingreso_tipo_comprobante_id_942e9aae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_ingreso_tipo_comprobante_id_942e9aae ON public.tienda_ingreso USING btree (tipo_comprobante_id);


--
-- TOC entry 3458 (class 1259 OID 16821)
-- Name: tienda_ingreso_usuario_id_e7efe0d0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_ingreso_usuario_id_e7efe0d0 ON public.tienda_ingreso USING btree (usuario_id);


--
-- TOC entry 3382 (class 1259 OID 16708)
-- Name: tienda_moneda_nombre_b08f550f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_moneda_nombre_b08f550f_like ON public.tienda_moneda USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3387 (class 1259 OID 16709)
-- Name: tienda_pais_nombre_695168bc_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_pais_nombre_695168bc_like ON public.tienda_pais USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3444 (class 1259 OID 16794)
-- Name: tienda_producto_categoria_id_6dc179b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_producto_categoria_id_6dc179b4 ON public.tienda_producto USING btree (categoria_id);


--
-- TOC entry 3445 (class 1259 OID 16795)
-- Name: tienda_producto_moneda_id_febbdfcd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_producto_moneda_id_febbdfcd ON public.tienda_producto USING btree (moneda_id);


--
-- TOC entry 3446 (class 1259 OID 16793)
-- Name: tienda_producto_nombre_37872338_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_producto_nombre_37872338_like ON public.tienda_producto USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3451 (class 1259 OID 16796)
-- Name: tienda_producto_proveedor_id_3a56c069; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_producto_proveedor_id_3a56c069 ON public.tienda_producto USING btree (proveedor_id);


--
-- TOC entry 3452 (class 1259 OID 16797)
-- Name: tienda_producto_unidad_medida_id_c38c0315; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_producto_unidad_medida_id_c38c0315 ON public.tienda_producto USING btree (unidad_medida_id);


--
-- TOC entry 3433 (class 1259 OID 16770)
-- Name: tienda_proveedor_ciudad_id_ac5447d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_proveedor_ciudad_id_ac5447d3 ON public.tienda_proveedor USING btree (ciudad_id);


--
-- TOC entry 3434 (class 1259 OID 16771)
-- Name: tienda_proveedor_departamento_id_f6d0560d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_proveedor_departamento_id_f6d0560d ON public.tienda_proveedor USING btree (departamento_id);


--
-- TOC entry 3435 (class 1259 OID 16769)
-- Name: tienda_proveedor_email_d6af5006_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_proveedor_email_d6af5006_like ON public.tienda_proveedor USING btree (email varchar_pattern_ops);


--
-- TOC entry 3438 (class 1259 OID 16772)
-- Name: tienda_proveedor_pais_id_2436cae1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_proveedor_pais_id_2436cae1 ON public.tienda_proveedor USING btree (pais_id);


--
-- TOC entry 3441 (class 1259 OID 16768)
-- Name: tienda_proveedor_razon_social_cb6ce89d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_proveedor_razon_social_cb6ce89d_like ON public.tienda_proveedor USING btree (razon_social varchar_pattern_ops);


--
-- TOC entry 3392 (class 1259 OID 16710)
-- Name: tienda_rol_nombre_f0600eef_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_rol_nombre_f0600eef_like ON public.tienda_rol USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3397 (class 1259 OID 16711)
-- Name: tienda_tipocomprobante_nombre_2832536c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_tipocomprobante_nombre_2832536c_like ON public.tienda_tipocomprobante USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3402 (class 1259 OID 16712)
-- Name: tienda_tipodocumento_nombre_c9e4fd0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_tipodocumento_nombre_c9e4fd0f_like ON public.tienda_tipodocumento USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3407 (class 1259 OID 16713)
-- Name: tienda_tipousuario_nombre_b84e2290_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_tipousuario_nombre_b84e2290_like ON public.tienda_tipousuario USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3412 (class 1259 OID 16714)
-- Name: tienda_unidadmedida_nombre_ae3a2adc_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_unidadmedida_nombre_ae3a2adc_like ON public.tienda_unidadmedida USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3417 (class 1259 OID 16730)
-- Name: tienda_usuario_nombre_a8afddd1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_usuario_nombre_a8afddd1_like ON public.tienda_usuario USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 3422 (class 1259 OID 16732)
-- Name: tienda_usuario_rol_id_a9b3145c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_usuario_rol_id_a9b3145c ON public.tienda_usuario USING btree (rol_id);


--
-- TOC entry 3423 (class 1259 OID 16733)
-- Name: tienda_usuario_tipo_documento_id_c8c9f0d2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_usuario_tipo_documento_id_c8c9f0d2 ON public.tienda_usuario USING btree (tipo_documento_id);


--
-- TOC entry 3424 (class 1259 OID 16734)
-- Name: tienda_usuario_tipo_usuario_id_20e2f0b9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_usuario_tipo_usuario_id_20e2f0b9 ON public.tienda_usuario USING btree (tipo_usuario_id);


--
-- TOC entry 3425 (class 1259 OID 16731)
-- Name: tienda_usuario_username_3abcb598_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_usuario_username_3abcb598_like ON public.tienda_usuario USING btree (username varchar_pattern_ops);


--
-- TOC entry 3428 (class 1259 OID 16750)
-- Name: tienda_venta_moneda_id_dbfbfec2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_venta_moneda_id_dbfbfec2 ON public.tienda_venta USING btree (moneda_id);


--
-- TOC entry 3431 (class 1259 OID 16751)
-- Name: tienda_venta_tipo_comprobante_id_6b5b2972; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_venta_tipo_comprobante_id_6b5b2972 ON public.tienda_venta USING btree (tipo_comprobante_id);


--
-- TOC entry 3432 (class 1259 OID 16752)
-- Name: tienda_venta_usuario_id_86c9ccf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tienda_venta_usuario_id_86c9ccf9 ON public.tienda_venta USING btree (usuario_id);


--
-- TOC entry 3469 (class 2606 OID 16475)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3468 (class 2606 OID 16470)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3467 (class 2606 OID 16461)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3471 (class 2606 OID 16490)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3470 (class 2606 OID 16485)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3473 (class 2606 OID 16504)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3472 (class 2606 OID 16499)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3474 (class 2606 OID 16521)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3475 (class 2606 OID 16526)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3496 (class 2606 OID 16839)
-- Name: tienda_detalleingreso tienda_detalleingres_producto_id_45a653ce_fk_tienda_pr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleingreso
    ADD CONSTRAINT tienda_detalleingres_producto_id_45a653ce_fk_tienda_pr FOREIGN KEY (producto_id) REFERENCES public.tienda_producto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3495 (class 2606 OID 16834)
-- Name: tienda_detalleingreso tienda_detalleingreso_ingreso_id_922102dc_fk_tienda_ingreso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleingreso
    ADD CONSTRAINT tienda_detalleingreso_ingreso_id_922102dc_fk_tienda_ingreso_id FOREIGN KEY (ingreso_id) REFERENCES public.tienda_ingreso(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3493 (class 2606 OID 16822)
-- Name: tienda_detalleventa tienda_detalleventa_producto_id_1a351895_fk_tienda_producto_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleventa
    ADD CONSTRAINT tienda_detalleventa_producto_id_1a351895_fk_tienda_producto_id FOREIGN KEY (producto_id) REFERENCES public.tienda_producto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3494 (class 2606 OID 16827)
-- Name: tienda_detalleventa tienda_detalleventa_ventas_id_c44290eb_fk_tienda_venta_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_detalleventa
    ADD CONSTRAINT tienda_detalleventa_ventas_id_c44290eb_fk_tienda_venta_id FOREIGN KEY (ventas_id) REFERENCES public.tienda_venta(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3489 (class 2606 OID 16798)
-- Name: tienda_ingreso tienda_ingreso_moneda_id_fa9d7ca4_fk_tienda_moneda_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ingreso
    ADD CONSTRAINT tienda_ingreso_moneda_id_fa9d7ca4_fk_tienda_moneda_id FOREIGN KEY (moneda_id) REFERENCES public.tienda_moneda(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3490 (class 2606 OID 16803)
-- Name: tienda_ingreso tienda_ingreso_proveedor_id_f474bcf9_fk_tienda_proveedor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ingreso
    ADD CONSTRAINT tienda_ingreso_proveedor_id_f474bcf9_fk_tienda_proveedor_id FOREIGN KEY (proveedor_id) REFERENCES public.tienda_proveedor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3491 (class 2606 OID 16808)
-- Name: tienda_ingreso tienda_ingreso_tipo_comprobante_id_942e9aae_fk_tienda_ti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ingreso
    ADD CONSTRAINT tienda_ingreso_tipo_comprobante_id_942e9aae_fk_tienda_ti FOREIGN KEY (tipo_comprobante_id) REFERENCES public.tienda_tipocomprobante(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3492 (class 2606 OID 16813)
-- Name: tienda_ingreso tienda_ingreso_usuario_id_e7efe0d0_fk_tienda_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_ingreso
    ADD CONSTRAINT tienda_ingreso_usuario_id_e7efe0d0_fk_tienda_usuario_id FOREIGN KEY (usuario_id) REFERENCES public.tienda_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3485 (class 2606 OID 16773)
-- Name: tienda_producto tienda_producto_categoria_id_6dc179b4_fk_tienda_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_categoria_id_6dc179b4_fk_tienda_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.tienda_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3486 (class 2606 OID 16778)
-- Name: tienda_producto tienda_producto_moneda_id_febbdfcd_fk_tienda_moneda_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_moneda_id_febbdfcd_fk_tienda_moneda_id FOREIGN KEY (moneda_id) REFERENCES public.tienda_moneda(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3487 (class 2606 OID 16783)
-- Name: tienda_producto tienda_producto_proveedor_id_3a56c069_fk_tienda_proveedor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_proveedor_id_3a56c069_fk_tienda_proveedor_id FOREIGN KEY (proveedor_id) REFERENCES public.tienda_proveedor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3488 (class 2606 OID 16788)
-- Name: tienda_producto tienda_producto_unidad_medida_id_c38c0315_fk_tienda_un; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_producto
    ADD CONSTRAINT tienda_producto_unidad_medida_id_c38c0315_fk_tienda_un FOREIGN KEY (unidad_medida_id) REFERENCES public.tienda_unidadmedida(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3482 (class 2606 OID 16753)
-- Name: tienda_proveedor tienda_proveedor_ciudad_id_ac5447d3_fk_tienda_ciudad_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_proveedor
    ADD CONSTRAINT tienda_proveedor_ciudad_id_ac5447d3_fk_tienda_ciudad_id FOREIGN KEY (ciudad_id) REFERENCES public.tienda_ciudad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3483 (class 2606 OID 16758)
-- Name: tienda_proveedor tienda_proveedor_departamento_id_f6d0560d_fk_tienda_de; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_proveedor
    ADD CONSTRAINT tienda_proveedor_departamento_id_f6d0560d_fk_tienda_de FOREIGN KEY (departamento_id) REFERENCES public.tienda_departamento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3484 (class 2606 OID 16763)
-- Name: tienda_proveedor tienda_proveedor_pais_id_2436cae1_fk_tienda_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_proveedor
    ADD CONSTRAINT tienda_proveedor_pais_id_2436cae1_fk_tienda_pais_id FOREIGN KEY (pais_id) REFERENCES public.tienda_pais(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3476 (class 2606 OID 16715)
-- Name: tienda_usuario tienda_usuario_rol_id_a9b3145c_fk_tienda_rol_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_usuario
    ADD CONSTRAINT tienda_usuario_rol_id_a9b3145c_fk_tienda_rol_id FOREIGN KEY (rol_id) REFERENCES public.tienda_rol(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3477 (class 2606 OID 16720)
-- Name: tienda_usuario tienda_usuario_tipo_documento_id_c8c9f0d2_fk_tienda_ti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_usuario
    ADD CONSTRAINT tienda_usuario_tipo_documento_id_c8c9f0d2_fk_tienda_ti FOREIGN KEY (tipo_documento_id) REFERENCES public.tienda_tipodocumento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3478 (class 2606 OID 16725)
-- Name: tienda_usuario tienda_usuario_tipo_usuario_id_20e2f0b9_fk_tienda_ti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_usuario
    ADD CONSTRAINT tienda_usuario_tipo_usuario_id_20e2f0b9_fk_tienda_ti FOREIGN KEY (tipo_usuario_id) REFERENCES public.tienda_tipousuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3479 (class 2606 OID 16735)
-- Name: tienda_venta tienda_venta_moneda_id_dbfbfec2_fk_tienda_moneda_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_venta
    ADD CONSTRAINT tienda_venta_moneda_id_dbfbfec2_fk_tienda_moneda_id FOREIGN KEY (moneda_id) REFERENCES public.tienda_moneda(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3480 (class 2606 OID 16740)
-- Name: tienda_venta tienda_venta_tipo_comprobante_id_6b5b2972_fk_tienda_ti; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_venta
    ADD CONSTRAINT tienda_venta_tipo_comprobante_id_6b5b2972_fk_tienda_ti FOREIGN KEY (tipo_comprobante_id) REFERENCES public.tienda_tipocomprobante(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3481 (class 2606 OID 16745)
-- Name: tienda_venta tienda_venta_usuario_id_86c9ccf9_fk_tienda_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda_venta
    ADD CONSTRAINT tienda_venta_usuario_id_86c9ccf9_fk_tienda_usuario_id FOREIGN KEY (usuario_id) REFERENCES public.tienda_usuario(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-10-12 20:35:17

--
-- PostgreSQL database dump complete
--

