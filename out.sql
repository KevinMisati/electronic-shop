PGDMP                     
    y            electronics_shop    13.4    13.4 l    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    16573    electronics_shop    DATABASE     u   CREATE DATABASE electronics_shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
     DROP DATABASE electronics_shop;
                postgres    false            ?            1259    16605 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16603    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            F           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    16615    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16613    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            G           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    16597    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16595    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            H           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    16649    authentication_customuser    TABLE     ?  CREATE TABLE public.authentication_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL
);
 -   DROP TABLE public.authentication_customuser;
       public         heap    postgres    false            ?            1259    16662     authentication_customuser_groups    TABLE     ?   CREATE TABLE public.authentication_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);
 4   DROP TABLE public.authentication_customuser_groups;
       public         heap    postgres    false            ?            1259    16660 '   authentication_customuser_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.authentication_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.authentication_customuser_groups_id_seq;
       public          postgres    false    213            I           0    0 '   authentication_customuser_groups_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.authentication_customuser_groups_id_seq OWNED BY public.authentication_customuser_groups.id;
          public          postgres    false    212            ?            1259    16647     authentication_customuser_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.authentication_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.authentication_customuser_id_seq;
       public          postgres    false    211            J           0    0     authentication_customuser_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.authentication_customuser_id_seq OWNED BY public.authentication_customuser.id;
          public          postgres    false    210            ?            1259    16670 *   authentication_customuser_user_permissions    TABLE     ?   CREATE TABLE public.authentication_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 >   DROP TABLE public.authentication_customuser_user_permissions;
       public         heap    postgres    false            ?            1259    16668 1   authentication_customuser_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.authentication_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.authentication_customuser_user_permissions_id_seq;
       public          postgres    false    215            K           0    0 1   authentication_customuser_user_permissions_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.authentication_customuser_user_permissions_id_seq OWNED BY public.authentication_customuser_user_permissions.id;
          public          postgres    false    214            ?            1259    16731    backend_product    TABLE     ?  CREATE TABLE public.backend_product (
    id bigint NOT NULL,
    code character varying(8) NOT NULL,
    title character varying(200) NOT NULL,
    new_price numeric(15,2) NOT NULL,
    old_price numeric(15,2) NOT NULL,
    company character varying(150) NOT NULL,
    info text NOT NULL,
    top_selling boolean NOT NULL,
    favourite boolean NOT NULL,
    img character varying(100) NOT NULL,
    category character varying(200) NOT NULL
);
 #   DROP TABLE public.backend_product;
       public         heap    postgres    false            ?            1259    16729    backend_product_id_seq    SEQUENCE        CREATE SEQUENCE public.backend_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.backend_product_id_seq;
       public          postgres    false    219            L           0    0    backend_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.backend_product_id_seq OWNED BY public.backend_product.id;
          public          postgres    false    218            ?            1259    16707    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16705    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            M           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    16587    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16585    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            N           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    16576    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16574    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            O           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    16743    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            d           2604    16608    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            e           2604    16618    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            c           2604    16600    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            f           2604    16652    authentication_customuser id    DEFAULT     ?   ALTER TABLE ONLY public.authentication_customuser ALTER COLUMN id SET DEFAULT nextval('public.authentication_customuser_id_seq'::regclass);
 K   ALTER TABLE public.authentication_customuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            g           2604    16665 #   authentication_customuser_groups id    DEFAULT     ?   ALTER TABLE ONLY public.authentication_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.authentication_customuser_groups_id_seq'::regclass);
 R   ALTER TABLE public.authentication_customuser_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            h           2604    16673 -   authentication_customuser_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.authentication_customuser_user_permissions_id_seq'::regclass);
 \   ALTER TABLE public.authentication_customuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            k           2604    16734    backend_product id    DEFAULT     x   ALTER TABLE ONLY public.backend_product ALTER COLUMN id SET DEFAULT nextval('public.backend_product_id_seq'::regclass);
 A   ALTER TABLE public.backend_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            i           2604    16710    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            b           2604    16590    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            a           2604    16579    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            2          0    16605 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   5?       4          0    16615    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   R?       0          0    16597    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   o?       6          0    16649    authentication_customuser 
   TABLE DATA           ?   COPY public.authentication_customuser (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, email) FROM stdin;
    public          postgres    false    211   ??       8          0    16662     authentication_customuser_groups 
   TABLE DATA           W   COPY public.authentication_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          postgres    false    213   ј       :          0    16670 *   authentication_customuser_user_permissions 
   TABLE DATA           f   COPY public.authentication_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          postgres    false    215   ??       >          0    16731    backend_product 
   TABLE DATA           ?   COPY public.backend_product (id, code, title, new_price, old_price, company, info, top_selling, favourite, img, category) FROM stdin;
    public          postgres    false    219   ?       <          0    16707    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ??       .          0    16587    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   q?       ,          0    16576    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ??       ?          0    16743    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   U?       P           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            Q           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            R           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public          postgres    false    204            S           0    0 '   authentication_customuser_groups_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.authentication_customuser_groups_id_seq', 1, false);
          public          postgres    false    212            T           0    0     authentication_customuser_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.authentication_customuser_id_seq', 3, true);
          public          postgres    false    210            U           0    0 1   authentication_customuser_user_permissions_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.authentication_customuser_user_permissions_id_seq', 1, false);
          public          postgres    false    214            V           0    0    backend_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.backend_product_id_seq', 32, true);
          public          postgres    false    218            W           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 52, true);
          public          postgres    false    216            X           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public          postgres    false    202            Y           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);
          public          postgres    false    200            y           2606    16645    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ~           2606    16631 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    16620 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            {           2606    16610    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            t           2606    16622 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            v           2606    16602 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    16678 ^   authentication_customuser_groups authentication_customuse_customuser_id_group_id_8a637646_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_groups
    ADD CONSTRAINT authentication_customuse_customuser_id_group_id_8a637646_uniq UNIQUE (customuser_id, group_id);
 ?   ALTER TABLE ONLY public.authentication_customuser_groups DROP CONSTRAINT authentication_customuse_customuser_id_group_id_8a637646_uniq;
       public            postgres    false    213    213            ?           2606    16692 j   authentication_customuser_user_permissions authentication_customuse_customuser_id_permission_923704b1_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions
    ADD CONSTRAINT authentication_customuse_customuser_id_permission_923704b1_uniq UNIQUE (customuser_id, permission_id);
 ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions DROP CONSTRAINT authentication_customuse_customuser_id_permission_923704b1_uniq;
       public            postgres    false    215    215            ?           2606    16659 =   authentication_customuser authentication_customuser_email_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.authentication_customuser
    ADD CONSTRAINT authentication_customuser_email_key UNIQUE (email);
 g   ALTER TABLE ONLY public.authentication_customuser DROP CONSTRAINT authentication_customuser_email_key;
       public            postgres    false    211            ?           2606    16667 F   authentication_customuser_groups authentication_customuser_groups_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_groups
    ADD CONSTRAINT authentication_customuser_groups_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.authentication_customuser_groups DROP CONSTRAINT authentication_customuser_groups_pkey;
       public            postgres    false    213            ?           2606    16657 8   authentication_customuser authentication_customuser_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.authentication_customuser
    ADD CONSTRAINT authentication_customuser_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.authentication_customuser DROP CONSTRAINT authentication_customuser_pkey;
       public            postgres    false    211            ?           2606    16675 Z   authentication_customuser_user_permissions authentication_customuser_user_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions
    ADD CONSTRAINT authentication_customuser_user_permissions_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions DROP CONSTRAINT authentication_customuser_user_permissions_pkey;
       public            postgres    false    215            ?           2606    16741 (   backend_product backend_product_code_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.backend_product
    ADD CONSTRAINT backend_product_code_key UNIQUE (code);
 R   ALTER TABLE ONLY public.backend_product DROP CONSTRAINT backend_product_code_key;
       public            postgres    false    219            ?           2606    16739 $   backend_product backend_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.backend_product
    ADD CONSTRAINT backend_product_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.backend_product DROP CONSTRAINT backend_product_pkey;
       public            postgres    false    219            ?           2606    16716 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            o           2606    16594 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            q           2606    16592 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            m           2606    16584 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    16750 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            w           1259    16646    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            |           1259    16642 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209                       1259    16643 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            r           1259    16628 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    16703 1   authentication_customuser__customuser_id_33d2a5f7    INDEX     ?   CREATE INDEX authentication_customuser__customuser_id_33d2a5f7 ON public.authentication_customuser_user_permissions USING btree (customuser_id);
 E   DROP INDEX public.authentication_customuser__customuser_id_33d2a5f7;
       public            postgres    false    215            ?           1259    16704 1   authentication_customuser__permission_id_e47332af    INDEX     ?   CREATE INDEX authentication_customuser__permission_id_e47332af ON public.authentication_customuser_user_permissions USING btree (permission_id);
 E   DROP INDEX public.authentication_customuser__permission_id_e47332af;
       public            postgres    false    215            ?           1259    16676 -   authentication_customuser_email_a127f886_like    INDEX     ?   CREATE INDEX authentication_customuser_email_a127f886_like ON public.authentication_customuser USING btree (email varchar_pattern_ops);
 A   DROP INDEX public.authentication_customuser_email_a127f886_like;
       public            postgres    false    211            ?           1259    16689 7   authentication_customuser_groups_customuser_id_a7d1343c    INDEX     ?   CREATE INDEX authentication_customuser_groups_customuser_id_a7d1343c ON public.authentication_customuser_groups USING btree (customuser_id);
 K   DROP INDEX public.authentication_customuser_groups_customuser_id_a7d1343c;
       public            postgres    false    213            ?           1259    16690 2   authentication_customuser_groups_group_id_c5ef1d10    INDEX     ?   CREATE INDEX authentication_customuser_groups_group_id_c5ef1d10 ON public.authentication_customuser_groups USING btree (group_id);
 F   DROP INDEX public.authentication_customuser_groups_group_id_c5ef1d10;
       public            postgres    false    213            ?           1259    16742 "   backend_product_code_ef241cfb_like    INDEX     r   CREATE INDEX backend_product_code_ef241cfb_like ON public.backend_product USING btree (code varchar_pattern_ops);
 6   DROP INDEX public.backend_product_code_ef241cfb_like;
       public            postgres    false    219            ?           1259    16727 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    16728 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    16752 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            ?           1259    16751 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            ?           2606    16637 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    2934    209            ?           2606    16632 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2939    209    207            ?           2606    16623 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2929    205    203            ?           2606    16693 c   authentication_customuser_user_permissions authentication_custo_customuser_id_33d2a5f7_fk_authentic    FK CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions
    ADD CONSTRAINT authentication_custo_customuser_id_33d2a5f7_fk_authentic FOREIGN KEY (customuser_id) REFERENCES public.authentication_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions DROP CONSTRAINT authentication_custo_customuser_id_33d2a5f7_fk_authentic;
       public          postgres    false    211    2950    215            ?           2606    16679 Y   authentication_customuser_groups authentication_custo_customuser_id_a7d1343c_fk_authentic    FK CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_groups
    ADD CONSTRAINT authentication_custo_customuser_id_a7d1343c_fk_authentic FOREIGN KEY (customuser_id) REFERENCES public.authentication_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.authentication_customuser_groups DROP CONSTRAINT authentication_custo_customuser_id_a7d1343c_fk_authentic;
       public          postgres    false    2950    211    213            ?           2606    16684 T   authentication_customuser_groups authentication_custo_group_id_c5ef1d10_fk_auth_grou    FK CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_groups
    ADD CONSTRAINT authentication_custo_group_id_c5ef1d10_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.authentication_customuser_groups DROP CONSTRAINT authentication_custo_group_id_c5ef1d10_fk_auth_grou;
       public          postgres    false    207    213    2939            ?           2606    16698 c   authentication_customuser_user_permissions authentication_custo_permission_id_e47332af_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions
    ADD CONSTRAINT authentication_custo_permission_id_e47332af_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.authentication_customuser_user_permissions DROP CONSTRAINT authentication_custo_permission_id_e47332af_fk_auth_perm;
       public          postgres    false    215    205    2934            ?           2606    16717 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    2929    203            ?           2606    16722 ?   django_admin_log django_admin_log_user_id_c564eba6_fk_authentic    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_authentic FOREIGN KEY (user_id) REFERENCES public.authentication_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_authentic;
       public          postgres    false    217    2950    211            2      x?????? ? ?      4      x?????? ? ?      0   3  x?]?Kn?0???}
NP?敬{?J?"%?i???c??x????Q??\t?P<?X?9?oe?q?>?p?H??ͣ*?? ?tA?8"X??ܟ`??P?????m???,??@7<N@?c??}?b ?wJ?{??q???J????x\??]HoJs?XJI *?s?z????+?{q???m*?s?X%|??.?o(???W?6Wo.??5?I?;?%???=x#1?K??(?Tebh?V??}PM\?x?V?2i???XZ??? ?+z??V??ݷ?_?@[??h?E2&?Y?????#??F??Ck??RnT      6     x?m??n?@E??S?`g$??0CbRjX?,??Z?#?Z?????]M{????I????Z????~O	3Tb?5????VE<?
???+#?uT?O?,?+_?_g=u?g? ?<??>}rˍݜ?}???)"@??	?#35?%c??Ahhs?E?E?f
n???*?N~V?Z?? ?U*??ݡR???,u??1Kh???v?n??m?;_?X?w9?v&|?xa?(?~z?ȼ??Ћ?)?.Q???7?e?6r??T??`Q?1?_?[ѭ?(?ord?      8      x?????? ? ?      :      x?????? ? ?      >   w  x????n?6ǯ٧8??6?vD}Z???%Fm4????L[?%Q??4~?RN7??H )ŏ????4&a???Lr?`?6Bq????eC???#?#4?<sgX?,?????*??R*`? w;V¦?y?}?D-?]???٦??g?V??6?y!?a? ,?+?#??5|?DΡUB??`X??r?J?Cy??_??R???l??????B%5k8???4l8v?eJc	?`?˒???8ֺ?#XK??=|??X?^cݠ?qX0???Ӏ?|?5UW??r4??k?5????Z????
Ǌ??%gu???rj???j ???;CK?w,/:???B???=????J>?{Q?(w;Ρ?Ý ?? v???
ͯD?J
{[??㳅 ??`9???-?c?9???_-UeF?3?S??????????T?G?(?;??D????00d??m{`F_?=B????>???H%?????,a?oz?}?Ǎ?q? ?)	-_w???,???~v}+4w?9?,m;?'?p*?É?װ??zQ4????p(???!e1?JG??q`9?,XE??afXyT@?$??ܬ?@=?Мб???EI??%?Rϒ?3?Y??lm?H?^?X=???????R+?je1????}뼞?P-??HE?>?}??e?Z?|?G?c??j;??kV??#?|???85??????P?JG???????d{?L???L?(?$ ?Ri ,e?rb?B???g????n9??3Y??$S???4ӯ?U+!?4L19\ug??fB×?u*??z?`??d?,??,??$?89[͊H??/J-Zn????s+?(??o????I{Y?Z>H??{L ?5FP0?%Wh?!??%??f?b\7Y?$Q?[???3?˒?? SJ????$??-?W#JۀC?-#?B?z2f?Ŭ:??#?8?"?|?꣘~???͒k?4???"?Ѿy??z?T??o?\&g1>Z~??>?Dk????쀦!???????????az!QhCK֞`y??M??y????3LrL
?m???tۖ??>?]?ϥjo???Ѓ???H?}$^?d?4????f~n?$?)????nK8??2Z/T?b?1w?(yb$?8????-g?B`???h?????????y9?*$!M?q`v????S?|W???*?8L??Ԭ??}?xn????n?zf'??c?s?̡?0??Q[u6??Bß?ޖr#??K???GX?3??SM[Pʆ5??o?i?;?-?q??tD?Ddk+Z?&??Q:&????ܮ???wqZE?6a??Q????חf=m??]?`?v??,a??s?9?,y???iϡ$?8%_??O?9??\?2?˳N?/???0%??I?/`???U????"O????^?&??ϣ??p?9?,|????y?????c?5?k	+;?? ?Q??=??i??י??j??m QO? q??!?
?i????M?j?B??!k?4fg뺁?Ɇ???;Q??^? @?[??ACf?d?Dq)???O*??????s:-?'????EgR?A??\??Vҵ????_?????:f??O.??D?y??x??m??x|:??8:??`??)+???>??8?}"?????????0?tw?ƽ ^?6?I??ݡK<f??x?L?m?Y????ݻw?'?O      <   ?  x??X[o?H~v~ň??*????7.i?6l?@???}00	V???6?????&m㤤?"?????w??G1%B:?!??&}e0&?3?x?0D?;D?>??wq???>~??G??{???\k?|?y?Q?e< ?g?(I???[?s ???
?s;o??۷??????Ӭ?{??w;E?ߙ?	e?Vn????,??&?d?rE&??????J?<??(?F?c?????"Ln+??Md??>~lM?<??O???W>?FH????m???~A?,??/????K?]?????8Ln?????a?v?R?>????R??%C?k???p?IiC??Mr???8?z?Ɣ7d??Ec$?ܗSQ??'}D0????(?M@?*??J]?p??
Qމ????.OWMX?ł?`Ӣ????n??l?h??/{?MìI.?????a???O?ug6C??*??Krr?}lլDS?x???I8m?E?F5%?????|^vgP? Stf??|??
?ӀR_?X???z???i?/?xe?;?5????,?W??wP???I???%R???͛?\q(_?S-H?*%;YM8?0?` ?+???8??0]????(y?2??P?J|?????,?e?EG?k-_???l??V?_`???{?^?'z??N*??ג?j4??~???4?????T??2N?kҳ?B?)`5`?(??Et ???p?3?D?J??R.?.j?T??iH??$D??c??g?=???Y??|i@F?p??HP19?ہ$?N"?ň??ԧ???%0?>5JUry?????do
?&??WnI{Xj?7?6?????@W???
?kL??m????{??. ;?y?	???/vK?#}X??(Z????^w?*??ziz????a?2?b???o??զ??9{w?[f\?2???+x?]?$????܆?p?X?iG??m`P?% ?%T)?k{?ɦ?za??4m?Fk?p??fM?.'.80H??&#~???©?%b?????`\m?Bx??0?m??6?Y??;????` ?8???;*ZI???/몯??pv??Qa?z??.?g?1???D???t?????
j?"?]???-??????8?kPf??N??v?L?????6p?3??݆?i.\ZV\?(FV{??????n?H1?O???????,~wB?Y????x<8??k5y*]J^l?DIV?R?+??_??=D?X?\&??
P{????]???XYh??>???
I?񲻀/?????a??ib˯)??V?????K?۸?ظt??#?o=5??Β??0?C???/??ˊ?m??Ǡ????џm$*?6зǫl3??,?6ipX`??˔C?(-??d??DI??r?6b?d?{a???1??I???b-?K]S??`V]?aY????Η2????z{>h??/??~?y=Q|???M	"p?du???[??????d8y78E?C?_^???@?
?ɶ?5????hy       .   o   x?M?I1??c????%8?A???a~O4h$nݭ?>B??	|ta	[?%???7????߲????JL4???_?
Λ?{?<?Y*Ӛx?ΦҨ?D??C{:>??{2?      ,   U  x???Mr?0??3??>eJ???,?R) ?? "\??G̐	l؈?I??uå????a?w??B?Tm5T?? Axx%?H"?<?T????Mp??pf90Ӊim?vP2#??	E/vޏ.?j?$?lU??????\h???|?n4??4?ko??=%Z	:????j???5??)??E???L????>???8!???[Dm????V???z?1?s?je?hƯ?
??&3ul!???[?2???[W?|??-K?B??4??????*?I?Yqj?3G-VZ?8????tŀJ!
?P@?-??;?? ?Jс5? f?b??????oҸ??????Q?V?V??eI?O!?9??쪰C???#%s0?%q?p?T'4J2"t?ȇ??ƫ??kķ?)0;?8՚?	Q}@???b?¼??f?w_?qK0??ϖ??[?tmyT? U?qH.?[?:?q???$??e?&
??!?]???Cp?s? z??A2Z,K?n???ⰳe?"?? s??g=???	=??Y4????? ????V??????????3N???????U?????!g/?? 9???3<ɿg???7?y]      ?     x???n?0  ???{_0m?????Fp?0F?,E??P???NNM.7?/?V69Q@;I???.z;??(~?W?9L??4???`n??חf???-뢡?u????E?KZ?7??? Gp??ŉ2w6j?]???$~q??,1???I????*?c|?甅O]????1??c????,?? ?X??4o?? ??5T??&lk?L???4& ?????d8?tg?H)?B?}<3??k??xC A??ޡa*?T??? ?@~W? ?	?_?     