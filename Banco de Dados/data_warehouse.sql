PGDMP             
            {            data_warehouse    14.0    14.0 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    70228    data_warehouse    DATABASE     n   CREATE DATABASE data_warehouse WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE data_warehouse;
                postgres    false            �            1259    70257    dim_forma_pagamento    TABLE     h   CREATE TABLE public.dim_forma_pagamento (
    id_forma_pagamento integer NOT NULL,
    vendedor text
);
 '   DROP TABLE public.dim_forma_pagamento;
       public         heap    postgres    false            �            1259    70256 *   dim_forma_pagamento_id_forma_pagamento_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_forma_pagamento_id_forma_pagamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.dim_forma_pagamento_id_forma_pagamento_seq;
       public          postgres    false    216                       0    0 *   dim_forma_pagamento_id_forma_pagamento_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.dim_forma_pagamento_id_forma_pagamento_seq OWNED BY public.dim_forma_pagamento.id_forma_pagamento;
          public          postgres    false    215            �            1259    70239    dim_produto    TABLE     k   CREATE TABLE public.dim_produto (
    id_produto integer NOT NULL,
    produto text,
    categoria text
);
    DROP TABLE public.dim_produto;
       public         heap    postgres    false            �            1259    70238    dim_produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.dim_produto_id_produto_seq;
       public          postgres    false    212                       0    0    dim_produto_id_produto_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.dim_produto_id_produto_seq OWNED BY public.dim_produto.id_produto;
          public          postgres    false    211            �            1259    70230 	   dim_tempo    TABLE     �   CREATE TABLE public.dim_tempo (
    id_tempo integer NOT NULL,
    data_inteira date,
    ano integer,
    mes integer,
    dia integer,
    mes_abrev text,
    mes_extenso text
);
    DROP TABLE public.dim_tempo;
       public         heap    postgres    false            �            1259    70229    dim_tempo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_tempo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.dim_tempo_id_seq;
       public          postgres    false    210                       0    0    dim_tempo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.dim_tempo_id_seq OWNED BY public.dim_tempo.id_tempo;
          public          postgres    false    209            �            1259    70248    dim_vendedor    TABLE     Z   CREATE TABLE public.dim_vendedor (
    id_vendedor integer NOT NULL,
    vendedor text
);
     DROP TABLE public.dim_vendedor;
       public         heap    postgres    false            �            1259    70247    dim_vendedor_id_vendedor_seq    SEQUENCE     �   CREATE SEQUENCE public.dim_vendedor_id_vendedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.dim_vendedor_id_vendedor_seq;
       public          postgres    false    214                       0    0    dim_vendedor_id_vendedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.dim_vendedor_id_vendedor_seq OWNED BY public.dim_vendedor.id_vendedor;
          public          postgres    false    213            �            1259    70266    fato_vendas    TABLE     w  CREATE TABLE public.fato_vendas (
    id integer NOT NULL,
    id_tempo integer NOT NULL,
    id_vendedor integer,
    id_produto integer,
    id_forma_pagto integer,
    valor_custo numeric(18,2),
    valor_venda numeric(18,2),
    valor_venda_real numeric(18,2),
    valor_total_nf numeric(18,2),
    quantidade_vendida integer,
    data_etl timestamp without time zone
);
    DROP TABLE public.fato_vendas;
       public         heap    postgres    false            �            1259    70265    fato_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.fato_id_seq;
       public          postgres    false    218                       0    0    fato_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.fato_id_seq OWNED BY public.fato_vendas.id;
          public          postgres    false    217            s           2604    70260 &   dim_forma_pagamento id_forma_pagamento    DEFAULT     �   ALTER TABLE ONLY public.dim_forma_pagamento ALTER COLUMN id_forma_pagamento SET DEFAULT nextval('public.dim_forma_pagamento_id_forma_pagamento_seq'::regclass);
 U   ALTER TABLE public.dim_forma_pagamento ALTER COLUMN id_forma_pagamento DROP DEFAULT;
       public          postgres    false    215    216    216            q           2604    70242    dim_produto id_produto    DEFAULT     �   ALTER TABLE ONLY public.dim_produto ALTER COLUMN id_produto SET DEFAULT nextval('public.dim_produto_id_produto_seq'::regclass);
 E   ALTER TABLE public.dim_produto ALTER COLUMN id_produto DROP DEFAULT;
       public          postgres    false    212    211    212            p           2604    70233    dim_tempo id_tempo    DEFAULT     r   ALTER TABLE ONLY public.dim_tempo ALTER COLUMN id_tempo SET DEFAULT nextval('public.dim_tempo_id_seq'::regclass);
 A   ALTER TABLE public.dim_tempo ALTER COLUMN id_tempo DROP DEFAULT;
       public          postgres    false    209    210    210            r           2604    70251    dim_vendedor id_vendedor    DEFAULT     �   ALTER TABLE ONLY public.dim_vendedor ALTER COLUMN id_vendedor SET DEFAULT nextval('public.dim_vendedor_id_vendedor_seq'::regclass);
 G   ALTER TABLE public.dim_vendedor ALTER COLUMN id_vendedor DROP DEFAULT;
       public          postgres    false    213    214    214            t           2604    70269    fato_vendas id    DEFAULT     i   ALTER TABLE ONLY public.fato_vendas ALTER COLUMN id SET DEFAULT nextval('public.fato_id_seq'::regclass);
 =   ALTER TABLE public.fato_vendas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                      0    70257    dim_forma_pagamento 
   TABLE DATA           K   COPY public.dim_forma_pagamento (id_forma_pagamento, vendedor) FROM stdin;
    public          postgres    false    216   �,                 0    70239    dim_produto 
   TABLE DATA           E   COPY public.dim_produto (id_produto, produto, categoria) FROM stdin;
    public          postgres    false    212   �,                 0    70230 	   dim_tempo 
   TABLE DATA           b   COPY public.dim_tempo (id_tempo, data_inteira, ano, mes, dia, mes_abrev, mes_extenso) FROM stdin;
    public          postgres    false    210   �,                 0    70248    dim_vendedor 
   TABLE DATA           =   COPY public.dim_vendedor (id_vendedor, vendedor) FROM stdin;
    public          postgres    false    214   �,                 0    70266    fato_vendas 
   TABLE DATA           �   COPY public.fato_vendas (id, id_tempo, id_vendedor, id_produto, id_forma_pagto, valor_custo, valor_venda, valor_venda_real, valor_total_nf, quantidade_vendida, data_etl) FROM stdin;
    public          postgres    false    218   �,                  0    0 *   dim_forma_pagamento_id_forma_pagamento_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.dim_forma_pagamento_id_forma_pagamento_seq', 1, false);
          public          postgres    false    215                        0    0    dim_produto_id_produto_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.dim_produto_id_produto_seq', 1, false);
          public          postgres    false    211            !           0    0    dim_tempo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.dim_tempo_id_seq', 1, false);
          public          postgres    false    209            "           0    0    dim_vendedor_id_vendedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.dim_vendedor_id_vendedor_seq', 1, false);
          public          postgres    false    213            #           0    0    fato_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.fato_id_seq', 1, false);
          public          postgres    false    217            |           2606    70264 ,   dim_forma_pagamento dim_forma_pagamento_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.dim_forma_pagamento
    ADD CONSTRAINT dim_forma_pagamento_pkey PRIMARY KEY (id_forma_pagamento);
 V   ALTER TABLE ONLY public.dim_forma_pagamento DROP CONSTRAINT dim_forma_pagamento_pkey;
       public            postgres    false    216            x           2606    70246    dim_produto dim_produto_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.dim_produto
    ADD CONSTRAINT dim_produto_pkey PRIMARY KEY (id_produto);
 F   ALTER TABLE ONLY public.dim_produto DROP CONSTRAINT dim_produto_pkey;
       public            postgres    false    212            v           2606    70237    dim_tempo dim_tempo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dim_tempo
    ADD CONSTRAINT dim_tempo_pkey PRIMARY KEY (id_tempo);
 B   ALTER TABLE ONLY public.dim_tempo DROP CONSTRAINT dim_tempo_pkey;
       public            postgres    false    210            z           2606    70255    dim_vendedor dim_vendedor_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.dim_vendedor
    ADD CONSTRAINT dim_vendedor_pkey PRIMARY KEY (id_vendedor);
 H   ALTER TABLE ONLY public.dim_vendedor DROP CONSTRAINT dim_vendedor_pkey;
       public            postgres    false    214            ~           2606    70271    fato_vendas fato_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.fato_vendas
    ADD CONSTRAINT fato_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.fato_vendas DROP CONSTRAINT fato_pkey;
       public            postgres    false    218                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     