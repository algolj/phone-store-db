--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-12-16 19:37:17

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
-- TOC entry 200 (class 1259 OID 25162)
-- Name: body_material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.body_material (
    body_material character varying(20) NOT NULL
);


ALTER TABLE public.body_material OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25172)
-- Name: brand_name; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brand_name (
    brand_name character varying(20) NOT NULL
);


ALTER TABLE public.brand_name OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 25224)
-- Name: camera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.camera (
    camera_id integer NOT NULL,
    direction boolean NOT NULL,
    matrix_model character varying(20),
    matrix_size integer,
    lens_material character varying(20),
    stabilazer character varying(20)
);


ALTER TABLE public.camera OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 25222)
-- Name: camera_camera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.camera_camera_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.camera_camera_id_seq OWNER TO postgres;

--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 212
-- Name: camera_camera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.camera_camera_id_seq OWNED BY public.camera.camera_id;


--
-- TOC entry 221 (class 1259 OID 25331)
-- Name: cashiers_check; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cashiers_check (
    check_id integer NOT NULL,
    customer_id integer NOT NULL,
    payment_type character varying(20) NOT NULL,
    sale_date date
);


ALTER TABLE public.cashiers_check OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25329)
-- Name: cashiers_check_check_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cashiers_check_check_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cashiers_check_check_id_seq OWNER TO postgres;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 220
-- Name: cashiers_check_check_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cashiers_check_check_id_seq OWNED BY public.cashiers_check.check_id;


--
-- TOC entry 222 (class 1259 OID 25342)
-- Name: check_body; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.check_body (
    check_id integer NOT NULL,
    device_id integer NOT NULL,
    selling_price money
);


ALTER TABLE public.check_body OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 25177)
-- Name: color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.color (
    color character varying(10) NOT NULL
);


ALTER TABLE public.color OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25265)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(20)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25263)
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_customer_id_seq OWNER TO postgres;

--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 216
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;


--
-- TOC entry 219 (class 1259 OID 25273)
-- Name: device; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.device (
    device_id bigint NOT NULL,
    brand_name character varying(20) NOT NULL,
    name character varying(30) NOT NULL,
    modification character varying(40),
    body_material character varying(20),
    color character varying(10),
    type character varying(10) NOT NULL,
    os character varying(10) NOT NULL,
    ram character varying(20) NOT NULL,
    rom character varying(20),
    camera integer,
    type_charge character varying(20) NOT NULL,
    screen integer NOT NULL,
    price money NOT NULL,
    "other_ specifications" character varying(100)
);


ALTER TABLE public.device OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25271)
-- Name: devise_devise_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devise_devise_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devise_devise_id_seq OWNER TO postgres;

--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 218
-- Name: devise_devise_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devise_devise_id_seq OWNED BY public.device.device_id;


--
-- TOC entry 204 (class 1259 OID 25182)
-- Name: lens_material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lens_material (
    lens_material character varying(20) NOT NULL
);


ALTER TABLE public.lens_material OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 25187)
-- Name: memory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.memory (
    memory character varying(20) NOT NULL
);


ALTER TABLE public.memory OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 25167)
-- Name: os; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os (
    os character varying(10) NOT NULL
);


ALTER TABLE public.os OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 25192)
-- Name: payment_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_type (
    payment_type character varying(20) NOT NULL
);


ALTER TABLE public.payment_type OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25242)
-- Name: screen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.screen (
    screen_id integer NOT NULL,
    screen_size character varying(20) NOT NULL,
    screen_type character varying(20)
);


ALTER TABLE public.screen OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 25240)
-- Name: screen_screen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.screen_screen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.screen_screen_id_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 214
-- Name: screen_screen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.screen_screen_id_seq OWNED BY public.screen.screen_id;


--
-- TOC entry 207 (class 1259 OID 25197)
-- Name: screen_size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.screen_size (
    screen_size character varying(20) NOT NULL
);


ALTER TABLE public.screen_size OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 25202)
-- Name: screen_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.screen_type (
    screen_type character varying(20) NOT NULL
);


ALTER TABLE public.screen_type OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 25207)
-- Name: stabilazer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stabilazer (
    stabilazer character varying(20) NOT NULL
);


ALTER TABLE public.stabilazer OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 25212)
-- Name: type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type (
    type character varying(10) NOT NULL
);


ALTER TABLE public.type OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 25217)
-- Name: type_charge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_charge (
    type_charge character varying(20) NOT NULL
);


ALTER TABLE public.type_charge OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 33331)
-- Name: warehouse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warehouse (
    warehouse_id integer NOT NULL,
    device_id integer NOT NULL,
    seller integer NOT NULL,
    parchase_price money NOT NULL
);


ALTER TABLE public.warehouse OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 33329)
-- Name: warehouse_warehouse_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.warehouse_warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warehouse_warehouse_id_seq OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 224
-- Name: warehouse_warehouse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.warehouse_warehouse_id_seq OWNED BY public.warehouse.warehouse_id;


--
-- TOC entry 223 (class 1259 OID 33324)
-- Name: wholesale_supplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wholesale_supplier (
    personal_account integer NOT NULL,
    title character varying(30) NOT NULL,
    address character varying(50),
    phone_number character varying(12),
    email character varying(20),
    bunk_account character varying(20)
);


ALTER TABLE public.wholesale_supplier OWNER TO postgres;

--
-- TOC entry 2936 (class 2604 OID 25227)
-- Name: camera camera_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camera ALTER COLUMN camera_id SET DEFAULT nextval('public.camera_camera_id_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 25334)
-- Name: cashiers_check check_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cashiers_check ALTER COLUMN check_id SET DEFAULT nextval('public.cashiers_check_check_id_seq'::regclass);


--
-- TOC entry 2938 (class 2604 OID 25268)
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 25276)
-- Name: device device_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device ALTER COLUMN device_id SET DEFAULT nextval('public.devise_devise_id_seq'::regclass);


--
-- TOC entry 2937 (class 2604 OID 25245)
-- Name: screen screen_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screen ALTER COLUMN screen_id SET DEFAULT nextval('public.screen_screen_id_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 33334)
-- Name: warehouse warehouse_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouse ALTER COLUMN warehouse_id SET DEFAULT nextval('public.warehouse_warehouse_id_seq'::regclass);


--
-- TOC entry 3131 (class 0 OID 25162)
-- Dependencies: 200
-- Data for Name: body_material; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3133 (class 0 OID 25172)
-- Dependencies: 202
-- Data for Name: brand_name; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brand_name (brand_name) VALUES ('Apple');
INSERT INTO public.brand_name (brand_name) VALUES ('Sony');
INSERT INTO public.brand_name (brand_name) VALUES ('Nokia');


--
-- TOC entry 3144 (class 0 OID 25224)
-- Dependencies: 213
-- Data for Name: camera; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3152 (class 0 OID 25331)
-- Dependencies: 221
-- Data for Name: cashiers_check; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3153 (class 0 OID 25342)
-- Dependencies: 222
-- Data for Name: check_body; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3134 (class 0 OID 25177)
-- Dependencies: 203
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.color (color) VALUES ('green');
INSERT INTO public.color (color) VALUES ('black');


--
-- TOC entry 3148 (class 0 OID 25265)
-- Dependencies: 217
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3150 (class 0 OID 25273)
-- Dependencies: 219
-- Data for Name: device; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3135 (class 0 OID 25182)
-- Dependencies: 204
-- Data for Name: lens_material; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3136 (class 0 OID 25187)
-- Dependencies: 205
-- Data for Name: memory; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3132 (class 0 OID 25167)
-- Dependencies: 201
-- Data for Name: os; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3137 (class 0 OID 25192)
-- Dependencies: 206
-- Data for Name: payment_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3146 (class 0 OID 25242)
-- Dependencies: 215
-- Data for Name: screen; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3138 (class 0 OID 25197)
-- Dependencies: 207
-- Data for Name: screen_size; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3139 (class 0 OID 25202)
-- Dependencies: 208
-- Data for Name: screen_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3140 (class 0 OID 25207)
-- Dependencies: 209
-- Data for Name: stabilazer; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3141 (class 0 OID 25212)
-- Dependencies: 210
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3142 (class 0 OID 25217)
-- Dependencies: 211
-- Data for Name: type_charge; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3156 (class 0 OID 33331)
-- Dependencies: 225
-- Data for Name: warehouse; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3154 (class 0 OID 33324)
-- Dependencies: 223
-- Data for Name: wholesale_supplier; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 212
-- Name: camera_camera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.camera_camera_id_seq', 1, false);


--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 220
-- Name: cashiers_check_check_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cashiers_check_check_id_seq', 1, false);


--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 216
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);


--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 218
-- Name: devise_devise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devise_devise_id_seq', 1, false);


--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 214
-- Name: screen_screen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.screen_screen_id_seq', 1, false);


--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 224
-- Name: warehouse_warehouse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warehouse_warehouse_id_seq', 1, false);


--
-- TOC entry 2943 (class 2606 OID 25166)
-- Name: body_material body_material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.body_material
    ADD CONSTRAINT body_material_pkey PRIMARY KEY (body_material);


--
-- TOC entry 2947 (class 2606 OID 25176)
-- Name: brand_name brand_name_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand_name
    ADD CONSTRAINT brand_name_pkey PRIMARY KEY (brand_name);


--
-- TOC entry 2967 (class 2606 OID 25229)
-- Name: camera camera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camera
    ADD CONSTRAINT camera_pkey PRIMARY KEY (camera_id);


--
-- TOC entry 2975 (class 2606 OID 25336)
-- Name: cashiers_check cashiers_check_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cashiers_check
    ADD CONSTRAINT cashiers_check_pkey PRIMARY KEY (check_id);


--
-- TOC entry 2977 (class 2606 OID 25346)
-- Name: check_body check_body_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.check_body
    ADD CONSTRAINT check_body_pkey PRIMARY KEY (check_id);


--
-- TOC entry 2949 (class 2606 OID 25181)
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (color);


--
-- TOC entry 2971 (class 2606 OID 25270)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 2973 (class 2606 OID 25278)
-- Name: device devise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_pkey PRIMARY KEY (device_id);


--
-- TOC entry 2951 (class 2606 OID 25186)
-- Name: lens_material lens_material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lens_material
    ADD CONSTRAINT lens_material_pkey PRIMARY KEY (lens_material);


--
-- TOC entry 2953 (class 2606 OID 25191)
-- Name: memory memory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memory
    ADD CONSTRAINT memory_pkey PRIMARY KEY (memory);


--
-- TOC entry 2945 (class 2606 OID 25171)
-- Name: os os_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os
    ADD CONSTRAINT os_pkey PRIMARY KEY (os);


--
-- TOC entry 2955 (class 2606 OID 25196)
-- Name: payment_type payment_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_type
    ADD CONSTRAINT payment_type_pkey PRIMARY KEY (payment_type);


--
-- TOC entry 2969 (class 2606 OID 25247)
-- Name: screen screen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screen
    ADD CONSTRAINT screen_pkey PRIMARY KEY (screen_id);


--
-- TOC entry 2957 (class 2606 OID 25201)
-- Name: screen_size screen_size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screen_size
    ADD CONSTRAINT screen_size_pkey PRIMARY KEY (screen_size);


--
-- TOC entry 2959 (class 2606 OID 25206)
-- Name: screen_type screen_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screen_type
    ADD CONSTRAINT screen_type_pkey PRIMARY KEY (screen_type);


--
-- TOC entry 2961 (class 2606 OID 25211)
-- Name: stabilazer stabilazer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stabilazer
    ADD CONSTRAINT stabilazer_pkey PRIMARY KEY (stabilazer);


--
-- TOC entry 2965 (class 2606 OID 25221)
-- Name: type_charge type_charge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_charge
    ADD CONSTRAINT type_charge_pkey PRIMARY KEY (type_charge);


--
-- TOC entry 2963 (class 2606 OID 25216)
-- Name: type type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (type);


--
-- TOC entry 2981 (class 2606 OID 33336)
-- Name: warehouse warehouse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_pkey PRIMARY KEY (device_id);


--
-- TOC entry 2979 (class 2606 OID 33328)
-- Name: wholesale_supplier wholesale_supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wholesale_supplier
    ADD CONSTRAINT wholesale_supplier_pkey PRIMARY KEY (personal_account);


--
-- TOC entry 2982 (class 2606 OID 25230)
-- Name: camera camera_lens_material_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camera
    ADD CONSTRAINT camera_lens_material_fkey FOREIGN KEY (lens_material) REFERENCES public.lens_material(lens_material);


--
-- TOC entry 2983 (class 2606 OID 25235)
-- Name: camera camera_stabilazer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camera
    ADD CONSTRAINT camera_stabilazer_fkey FOREIGN KEY (stabilazer) REFERENCES public.stabilazer(stabilazer);


--
-- TOC entry 2996 (class 2606 OID 25337)
-- Name: cashiers_check cashiers_check_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cashiers_check
    ADD CONSTRAINT cashiers_check_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);


--
-- TOC entry 2997 (class 2606 OID 25347)
-- Name: check_body check_body_check_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.check_body
    ADD CONSTRAINT check_body_check_id_fkey FOREIGN KEY (check_id) REFERENCES public.cashiers_check(check_id);


--
-- TOC entry 2998 (class 2606 OID 25352)
-- Name: check_body check_body_device_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.check_body
    ADD CONSTRAINT check_body_device_id_fkey FOREIGN KEY (device_id) REFERENCES public.device(device_id) NOT VALID;


--
-- TOC entry 2987 (class 2606 OID 25284)
-- Name: device devise_body_material_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_body_material_fkey FOREIGN KEY (body_material) REFERENCES public.body_material(body_material);


--
-- TOC entry 2986 (class 2606 OID 25279)
-- Name: device devise_brand_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_brand_name_fkey FOREIGN KEY (brand_name) REFERENCES public.brand_name(brand_name);


--
-- TOC entry 2995 (class 2606 OID 25324)
-- Name: device devise_camera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_camera_fkey FOREIGN KEY (camera) REFERENCES public.camera(camera_id);


--
-- TOC entry 2988 (class 2606 OID 25289)
-- Name: device devise_color_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_color_fkey FOREIGN KEY (color) REFERENCES public.color(color);


--
-- TOC entry 2990 (class 2606 OID 25299)
-- Name: device devise_os_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_os_fkey FOREIGN KEY (os) REFERENCES public.os(os);


--
-- TOC entry 2993 (class 2606 OID 25314)
-- Name: device devise_ram_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_ram_fkey FOREIGN KEY (ram) REFERENCES public.memory(memory);


--
-- TOC entry 2994 (class 2606 OID 25319)
-- Name: device devise_rom_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_rom_fkey FOREIGN KEY (rom) REFERENCES public.memory(memory);


--
-- TOC entry 2992 (class 2606 OID 25309)
-- Name: device devise_screen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_screen_fkey FOREIGN KEY (screen) REFERENCES public.screen(screen_id);


--
-- TOC entry 2991 (class 2606 OID 25304)
-- Name: device devise_type_charge_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_type_charge_fkey FOREIGN KEY (type_charge) REFERENCES public.type_charge(type_charge);


--
-- TOC entry 2989 (class 2606 OID 25294)
-- Name: device devise_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device
    ADD CONSTRAINT devise_type_fkey FOREIGN KEY (type) REFERENCES public.type(type);


--
-- TOC entry 2984 (class 2606 OID 25248)
-- Name: screen screen_screen_size_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screen
    ADD CONSTRAINT screen_screen_size_fkey FOREIGN KEY (screen_size) REFERENCES public.screen_size(screen_size);


--
-- TOC entry 2985 (class 2606 OID 25253)
-- Name: screen screen_screen_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.screen
    ADD CONSTRAINT screen_screen_type_fkey FOREIGN KEY (screen_type) REFERENCES public.screen_type(screen_type);


--
-- TOC entry 2999 (class 2606 OID 33337)
-- Name: warehouse warehouse_device_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_device_id_fkey FOREIGN KEY (device_id) REFERENCES public.device(device_id);


--
-- TOC entry 3000 (class 2606 OID 33342)
-- Name: warehouse warehouse_seller_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouse
    ADD CONSTRAINT warehouse_seller_fkey FOREIGN KEY (seller) REFERENCES public.wholesale_supplier(personal_account);


-- Completed on 2021-12-16 19:37:17

--
-- PostgreSQL database dump complete
--

