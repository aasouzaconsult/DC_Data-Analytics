PGDMP                         {            dw_northwind    14.6    14.6 V    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    30222    dw_northwind    DATABASE     l   CREATE DATABASE dw_northwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE dw_northwind;
                postgres    false                        2615    30223    data_warehouse    SCHEMA        CREATE SCHEMA data_warehouse;
    DROP SCHEMA data_warehouse;
                postgres    false            �            1259    30224    dim_produto    TABLE     �   CREATE TABLE data_warehouse.dim_produto (
    id integer NOT NULL,
    nome text NOT NULL,
    categoria text NOT NULL,
    fornecedor text NOT NULL
);
 '   DROP TABLE data_warehouse.dim_produto;
       data_warehouse         heap    postgres    false    6            �            1259    30229    dim_produto_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE data_warehouse.dim_produto_id_seq;
       data_warehouse          postgres    false    210    6            x           0    0    dim_produto_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE data_warehouse.dim_produto_id_seq OWNED BY data_warehouse.dim_produto.id;
          data_warehouse          postgres    false    211            �            1259    30230 
   dim_regiao    TABLE     �   CREATE TABLE data_warehouse.dim_regiao (
    id integer NOT NULL,
    pais text NOT NULL,
    estado text,
    cidade text,
    regiao text
);
 &   DROP TABLE data_warehouse.dim_regiao;
       data_warehouse         heap    postgres    false    6            �            1259    30235    dim_regiao_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_regiao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE data_warehouse.dim_regiao_id_seq;
       data_warehouse          postgres    false    212    6            y           0    0    dim_regiao_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE data_warehouse.dim_regiao_id_seq OWNED BY data_warehouse.dim_regiao.id;
          data_warehouse          postgres    false    213            �            1259    30236 	   dim_tempo    TABLE     �   CREATE TABLE data_warehouse.dim_tempo (
    id integer NOT NULL,
    data date NOT NULL,
    ano integer NOT NULL,
    mes integer NOT NULL,
    dia_da_semana text,
    mes_extenso text,
    dia integer
);
 %   DROP TABLE data_warehouse.dim_tempo;
       data_warehouse         heap    postgres    false    6            �            1259    30241    dim_tempo_id_tempo_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_tempo_id_tempo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE data_warehouse.dim_tempo_id_tempo_seq;
       data_warehouse          postgres    false    6    214            z           0    0    dim_tempo_id_tempo_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE data_warehouse.dim_tempo_id_tempo_seq OWNED BY data_warehouse.dim_tempo.id;
          data_warehouse          postgres    false    215            �            1259    30248    fato_vendas    TABLE     �   CREATE TABLE data_warehouse.fato_vendas (
    id integer NOT NULL,
    id_tempo integer NOT NULL,
    id_produto integer,
    id_regiao integer,
    quantidade integer NOT NULL,
    venda numeric(18,2) NOT NULL,
    custo numeric(18,2) NOT NULL
);
 '   DROP TABLE data_warehouse.fato_vendas;
       data_warehouse         heap    postgres    false    6            �            1259    30251    fato_vendas_id_venda_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.fato_vendas_id_venda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE data_warehouse.fato_vendas_id_venda_seq;
       data_warehouse          postgres    false    216    6            {           0    0    fato_vendas_id_venda_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE data_warehouse.fato_vendas_id_venda_seq OWNED BY data_warehouse.fato_vendas.id;
          data_warehouse          postgres    false    217            �            1259    30252 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id_1 smallint,
    nome character varying(15) NOT NULL,
    descricao text,
    imagem bytea,
    ano integer,
    id integer NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    30257    categorias_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.categorias_id_categoria_seq;
       public          postgres    false    218            |           0    0    categorias_id_categoria_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.categorias_id_categoria_seq OWNED BY public.categorias.id;
          public          postgres    false    219            �            1259    30258    clientes    TABLE     �  CREATE TABLE public.clientes (
    id bpchar NOT NULL,
    nome_empresa character varying(40) NOT NULL,
    nome_contato character varying(30),
    titulo_contato character varying(30),
    endereco character varying(60),
    cidade character varying(15),
    regiao character varying(15),
    cep character varying(10),
    pais character varying(15),
    telefone character varying(24),
    fax character varying(24)
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    30263    empregado_territorios    TABLE     �   CREATE TABLE public.empregado_territorios (
    id_empregado smallint NOT NULL,
    id_territorio character varying(20) NOT NULL
);
 )   DROP TABLE public.empregado_territorios;
       public         heap    postgres    false            �            1259    30266    fornecedores    TABLE     �  CREATE TABLE public.fornecedores (
    id smallint NOT NULL,
    nome_empresa character varying(40) NOT NULL,
    nome_contato character varying(30),
    titulo_contato character varying(30),
    endereco character varying(60),
    cidade character varying(15),
    regiao character varying(15),
    cep character varying(10),
    pais character varying(15),
    telefone character varying(24),
    fax character varying(24),
    site text
);
     DROP TABLE public.fornecedores;
       public         heap    postgres    false            �            1259    30271    funcionarios    TABLE     q  CREATE TABLE public.funcionarios (
    id smallint NOT NULL,
    ultimo_nome character varying(20) NOT NULL,
    primeiro_nome character varying(10) NOT NULL,
    titulo character varying(30),
    apelido character varying(25),
    data_nascimento date,
    data_contratacao date,
    endereco character varying(60),
    cidade character varying(15),
    regiao character varying(15),
    cep character varying(10),
    pais character varying(15),
    telefone character varying(24),
    ddd character varying(4),
    foto bytea,
    observacoes text,
    relatorios_para smallint,
    caminho_foto character varying(255)
);
     DROP TABLE public.funcionarios;
       public         heap    postgres    false            �            1259    30276    pedido_detalhe    TABLE     �   CREATE TABLE public.pedido_detalhe (
    id_pedido smallint NOT NULL,
    id_produto smallint NOT NULL,
    preco_unitario real NOT NULL,
    quantidade smallint NOT NULL,
    desconto real NOT NULL
);
 "   DROP TABLE public.pedido_detalhe;
       public         heap    postgres    false            �            1259    30279    pedidos    TABLE     �  CREATE TABLE public.pedidos (
    id smallint NOT NULL,
    id_cliente bpchar,
    id_funcionario smallint,
    data_pedido date,
    data_requerida date,
    data_enviado date,
    id_transportadora smallint,
    frete real,
    nome_navio character varying(40),
    endereco_navio character varying(60),
    cidade_navio character varying(15),
    regiao_navio character varying(15),
    cep_navio character varying(10),
    pais_navio character varying(15)
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    30284    produtos    TABLE     f  CREATE TABLE public.produtos (
    id smallint NOT NULL,
    nome character varying(40) NOT NULL,
    id_transportadora smallint,
    id_categoria smallint,
    quantidade character varying(20),
    preco_unitario real,
    unidades_em_estoque smallint,
    unidades_em_ordem smallint,
    nivel_reabastecimento smallint,
    interrmpido integer NOT NULL
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            �            1259    30287    regiao    TABLE     ^   CREATE TABLE public.regiao (
    id smallint NOT NULL,
    nome character varying NOT NULL
);
    DROP TABLE public.regiao;
       public         heap    postgres    false            �            1259    30292    territorios    TABLE     �   CREATE TABLE public.territorios (
    id character varying(20) NOT NULL,
    nome character varying NOT NULL,
    id_regiao smallint NOT NULL
);
    DROP TABLE public.territorios;
       public         heap    postgres    false            �            1259    30297    transportadoras    TABLE     �   CREATE TABLE public.transportadoras (
    id smallint NOT NULL,
    nome character varying(40) NOT NULL,
    telefone character varying(24)
);
 #   DROP TABLE public.transportadoras;
       public         heap    postgres    false            �            1259    30300 
   us_estados    TABLE     �   CREATE TABLE public.us_estados (
    id smallint NOT NULL,
    nome character varying(100),
    sigla character varying(2),
    regiao character varying(50)
);
    DROP TABLE public.us_estados;
       public         heap    postgres    false            �            1259    30303    view_lista_vendas    VIEW     �  CREATE VIEW public.view_lista_vendas AS
 SELECT p.id AS numero_pedido,
    p.data_pedido,
    (((fu.primeiro_nome)::text || ' '::text) || (fu.ultimo_nome)::text) AS funcionario,
    t.nome AS transportadora,
    cl.nome_empresa AS cliente,
    pr.nome AS produto,
    c.nome AS categoria,
    f.nome_empresa AS fornecedor,
    ((((pd.quantidade)::double precision * pr.preco_unitario) * ((1)::double precision - pd.desconto)))::numeric(18,2) AS valor_venda
   FROM (((((((public.pedidos p
     JOIN public.pedido_detalhe pd ON ((pd.id_pedido = p.id)))
     JOIN public.produtos pr ON ((pd.id_produto = pr.id)))
     JOIN public.categorias c ON ((c.id_1 = pr.id_categoria)))
     JOIN public.fornecedores f ON ((f.id = pr.id_transportadora)))
     JOIN public.clientes cl ON ((cl.id = p.id_cliente)))
     JOIN public.transportadoras t ON ((t.id = p.id_transportadora)))
     JOIN public.funcionarios fu ON ((fu.id = p.id_funcionario)));
 $   DROP VIEW public.view_lista_vendas;
       public          postgres    false    222    229    229    226    226    226    226    226    225    225    225    225    225    224    224    224    224    223    223    223    222    220    220    218    218            �           2604    30308    dim_produto id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_produto ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_produto_id_seq'::regclass);
 E   ALTER TABLE data_warehouse.dim_produto ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    211    210            �           2604    30309    dim_regiao id    DEFAULT     ~   ALTER TABLE ONLY data_warehouse.dim_regiao ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_regiao_id_seq'::regclass);
 D   ALTER TABLE data_warehouse.dim_regiao ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    213    212            �           2604    30310    dim_tempo id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_tempo ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_tempo_id_tempo_seq'::regclass);
 C   ALTER TABLE data_warehouse.dim_tempo ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    215    214            �           2604    30312    fato_vendas id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.fato_vendas ALTER COLUMN id SET DEFAULT nextval('data_warehouse.fato_vendas_id_venda_seq'::regclass);
 E   ALTER TABLE data_warehouse.fato_vendas ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    217    216            �           2604    30313    categorias id    DEFAULT     x   ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);
 <   ALTER TABLE public.categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ]          0    30224    dim_produto 
   TABLE DATA           N   COPY data_warehouse.dim_produto (id, nome, categoria, fornecedor) FROM stdin;
    data_warehouse          postgres    false    210   �s       _          0    30230 
   dim_regiao 
   TABLE DATA           N   COPY data_warehouse.dim_regiao (id, pais, estado, cidade, regiao) FROM stdin;
    data_warehouse          postgres    false    212   �s       a          0    30236 	   dim_tempo 
   TABLE DATA           `   COPY data_warehouse.dim_tempo (id, data, ano, mes, dia_da_semana, mes_extenso, dia) FROM stdin;
    data_warehouse          postgres    false    214   �s       c          0    30248    fato_vendas 
   TABLE DATA           l   COPY data_warehouse.fato_vendas (id, id_tempo, id_produto, id_regiao, quantidade, venda, custo) FROM stdin;
    data_warehouse          postgres    false    216   t       e          0    30252 
   categorias 
   TABLE DATA           L   COPY public.categorias (id_1, nome, descricao, imagem, ano, id) FROM stdin;
    public          postgres    false    218   7t       g          0    30258    clientes 
   TABLE DATA           �   COPY public.clientes (id, nome_empresa, nome_contato, titulo_contato, endereco, cidade, regiao, cep, pais, telefone, fax) FROM stdin;
    public          postgres    false    220   �u       h          0    30263    empregado_territorios 
   TABLE DATA           L   COPY public.empregado_territorios (id_empregado, id_territorio) FROM stdin;
    public          postgres    false    221   Ԍ       i          0    30266    fornecedores 
   TABLE DATA           �   COPY public.fornecedores (id, nome_empresa, nome_contato, titulo_contato, endereco, cidade, regiao, cep, pais, telefone, fax, site) FROM stdin;
    public          postgres    false    222   ��       j          0    30271    funcionarios 
   TABLE DATA           �   COPY public.funcionarios (id, ultimo_nome, primeiro_nome, titulo, apelido, data_nascimento, data_contratacao, endereco, cidade, regiao, cep, pais, telefone, ddd, foto, observacoes, relatorios_para, caminho_foto) FROM stdin;
    public          postgres    false    223   U�       k          0    30276    pedido_detalhe 
   TABLE DATA           e   COPY public.pedido_detalhe (id_pedido, id_produto, preco_unitario, quantidade, desconto) FROM stdin;
    public          postgres    false    224   ,�       l          0    30279    pedidos 
   TABLE DATA           �   COPY public.pedidos (id, id_cliente, id_funcionario, data_pedido, data_requerida, data_enviado, id_transportadora, frete, nome_navio, endereco_navio, cidade_navio, regiao_navio, cep_navio, pais_navio) FROM stdin;
    public          postgres    false    225   �       m          0    30284    produtos 
   TABLE DATA           �   COPY public.produtos (id, nome, id_transportadora, id_categoria, quantidade, preco_unitario, unidades_em_estoque, unidades_em_ordem, nivel_reabastecimento, interrmpido) FROM stdin;
    public          postgres    false    226   �      n          0    30287    regiao 
   TABLE DATA           *   COPY public.regiao (id, nome) FROM stdin;
    public          postgres    false    227   �      o          0    30292    territorios 
   TABLE DATA           :   COPY public.territorios (id, nome, id_regiao) FROM stdin;
    public          postgres    false    228   (      p          0    30297    transportadoras 
   TABLE DATA           =   COPY public.transportadoras (id, nome, telefone) FROM stdin;
    public          postgres    false    229   {      q          0    30300 
   us_estados 
   TABLE DATA           =   COPY public.us_estados (id, nome, sigla, regiao) FROM stdin;
    public          postgres    false    230         }           0    0    dim_produto_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('data_warehouse.dim_produto_id_seq', 304, true);
          data_warehouse          postgres    false    211            ~           0    0    dim_regiao_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('data_warehouse.dim_regiao_id_seq', 1, false);
          data_warehouse          postgres    false    213                       0    0    dim_tempo_id_tempo_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('data_warehouse.dim_tempo_id_tempo_seq', 12785, true);
          data_warehouse          postgres    false    215            �           0    0    fato_vendas_id_venda_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('data_warehouse.fato_vendas_id_venda_seq', 1, false);
          data_warehouse          postgres    false    217            �           0    0    categorias_id_categoria_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 19, true);
          public          postgres    false    219            �           2606    30315    dim_produto dim_produto_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY data_warehouse.dim_produto
    ADD CONSTRAINT dim_produto_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY data_warehouse.dim_produto DROP CONSTRAINT dim_produto_pkey;
       data_warehouse            postgres    false    210            �           2606    30317    dim_regiao dim_regiao_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY data_warehouse.dim_regiao
    ADD CONSTRAINT dim_regiao_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY data_warehouse.dim_regiao DROP CONSTRAINT dim_regiao_pkey;
       data_warehouse            postgres    false    212            �           2606    30319    dim_tempo dim_tempo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY data_warehouse.dim_tempo
    ADD CONSTRAINT dim_tempo_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY data_warehouse.dim_tempo DROP CONSTRAINT dim_tempo_pkey;
       data_warehouse            postgres    false    214            �           2606    30323    fato_vendas fato_vendas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY data_warehouse.fato_vendas
    ADD CONSTRAINT fato_vendas_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY data_warehouse.fato_vendas DROP CONSTRAINT fato_vendas_pkey;
       data_warehouse            postgres    false    216            �           2606    30325    clientes pk_customers 
   CONSTRAINT     S   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_customers PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.clientes DROP CONSTRAINT pk_customers;
       public            postgres    false    220            �           2606    30327 -   empregado_territorios pk_employee_territories 
   CONSTRAINT     �   ALTER TABLE ONLY public.empregado_territorios
    ADD CONSTRAINT pk_employee_territories PRIMARY KEY (id_empregado, id_territorio);
 W   ALTER TABLE ONLY public.empregado_territorios DROP CONSTRAINT pk_employee_territories;
       public            postgres    false    221    221            �           2606    30329    funcionarios pk_employees 
   CONSTRAINT     W   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT pk_employees PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT pk_employees;
       public            postgres    false    223            �           2606    30331    pedido_detalhe pk_order_details 
   CONSTRAINT     p   ALTER TABLE ONLY public.pedido_detalhe
    ADD CONSTRAINT pk_order_details PRIMARY KEY (id_pedido, id_produto);
 I   ALTER TABLE ONLY public.pedido_detalhe DROP CONSTRAINT pk_order_details;
       public            postgres    false    224    224            �           2606    30333    pedidos pk_orders 
   CONSTRAINT     O   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_orders PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_orders;
       public            postgres    false    225            �           2606    30335    produtos pk_products 
   CONSTRAINT     R   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT pk_products PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produtos DROP CONSTRAINT pk_products;
       public            postgres    false    226            �           2606    30337    regiao pk_region 
   CONSTRAINT     N   ALTER TABLE ONLY public.regiao
    ADD CONSTRAINT pk_region PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.regiao DROP CONSTRAINT pk_region;
       public            postgres    false    227            �           2606    30339    transportadoras pk_shippers 
   CONSTRAINT     Y   ALTER TABLE ONLY public.transportadoras
    ADD CONSTRAINT pk_shippers PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.transportadoras DROP CONSTRAINT pk_shippers;
       public            postgres    false    229            �           2606    30341    fornecedores pk_suppliers 
   CONSTRAINT     W   ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT pk_suppliers PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.fornecedores DROP CONSTRAINT pk_suppliers;
       public            postgres    false    222            �           2606    30343    territorios pk_territories 
   CONSTRAINT     X   ALTER TABLE ONLY public.territorios
    ADD CONSTRAINT pk_territories PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.territorios DROP CONSTRAINT pk_territories;
       public            postgres    false    228            �           2606    30345    us_estados pk_usstates 
   CONSTRAINT     T   ALTER TABLE ONLY public.us_estados
    ADD CONSTRAINT pk_usstates PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.us_estados DROP CONSTRAINT pk_usstates;
       public            postgres    false    230            �           2606    30346 '   fato_vendas fato_vendas_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_vendas
    ADD CONSTRAINT fato_vendas_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES data_warehouse.dim_produto(id);
 Y   ALTER TABLE ONLY data_warehouse.fato_vendas DROP CONSTRAINT fato_vendas_id_produto_fkey;
       data_warehouse          postgres    false    216    210    3239            �           2606    30351 &   fato_vendas fato_vendas_id_regiao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_vendas
    ADD CONSTRAINT fato_vendas_id_regiao_fkey FOREIGN KEY (id_regiao) REFERENCES data_warehouse.dim_regiao(id);
 X   ALTER TABLE ONLY data_warehouse.fato_vendas DROP CONSTRAINT fato_vendas_id_regiao_fkey;
       data_warehouse          postgres    false    216    3241    212            �           2606    30356 %   fato_vendas fato_vendas_id_tempo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_vendas
    ADD CONSTRAINT fato_vendas_id_tempo_fkey FOREIGN KEY (id_tempo) REFERENCES data_warehouse.dim_tempo(id);
 W   ALTER TABLE ONLY data_warehouse.fato_vendas DROP CONSTRAINT fato_vendas_id_tempo_fkey;
       data_warehouse          postgres    false    3243    216    214            �           2606    30361 7   empregado_territorios fk_employee_territories_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.empregado_territorios
    ADD CONSTRAINT fk_employee_territories_employees FOREIGN KEY (id_empregado) REFERENCES public.funcionarios(id);
 a   ALTER TABLE ONLY public.empregado_territorios DROP CONSTRAINT fk_employee_territories_employees;
       public          postgres    false    3253    223    221            �           2606    30366 9   empregado_territorios fk_employee_territories_territories    FK CONSTRAINT     �   ALTER TABLE ONLY public.empregado_territorios
    ADD CONSTRAINT fk_employee_territories_territories FOREIGN KEY (id_territorio) REFERENCES public.territorios(id);
 c   ALTER TABLE ONLY public.empregado_territorios DROP CONSTRAINT fk_employee_territories_territories;
       public          postgres    false    221    228    3263            �           2606    30371 #   funcionarios fk_employees_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT fk_employees_employees FOREIGN KEY (relatorios_para) REFERENCES public.funcionarios(id);
 M   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT fk_employees_employees;
       public          postgres    false    223    223    3253            �           2606    30376 &   pedido_detalhe fk_order_details_orders    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_detalhe
    ADD CONSTRAINT fk_order_details_orders FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id);
 P   ALTER TABLE ONLY public.pedido_detalhe DROP CONSTRAINT fk_order_details_orders;
       public          postgres    false    224    225    3257            �           2606    30381 (   pedido_detalhe fk_order_details_products    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_detalhe
    ADD CONSTRAINT fk_order_details_products FOREIGN KEY (id_produto) REFERENCES public.produtos(id);
 R   ALTER TABLE ONLY public.pedido_detalhe DROP CONSTRAINT fk_order_details_products;
       public          postgres    false    3259    224    226            �           2606    30386    pedidos fk_orders_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (id_cliente) REFERENCES public.clientes(id);
 E   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_orders_customers;
       public          postgres    false    3247    225    220            �           2606    30391    pedidos fk_orders_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (id_funcionario) REFERENCES public.funcionarios(id);
 E   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_orders_employees;
       public          postgres    false    225    3253    223            �           2606    30396    pedidos fk_orders_shippers    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_orders_shippers FOREIGN KEY (id_transportadora) REFERENCES public.transportadoras(id);
 D   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_orders_shippers;
       public          postgres    false    3265    225    229            �           2606    30401    produtos fk_products_suppliers    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT fk_products_suppliers FOREIGN KEY (id_transportadora) REFERENCES public.fornecedores(id);
 H   ALTER TABLE ONLY public.produtos DROP CONSTRAINT fk_products_suppliers;
       public          postgres    false    222    226    3251            �           2606    30406 !   territorios fk_territories_region    FK CONSTRAINT     �   ALTER TABLE ONLY public.territorios
    ADD CONSTRAINT fk_territories_region FOREIGN KEY (id_regiao) REFERENCES public.regiao(id);
 K   ALTER TABLE ONLY public.territorios DROP CONSTRAINT fk_territories_region;
       public          postgres    false    228    3261    227            ]      x������ � �      _      x������ � �      a      x������ � �      c      x������ � �      e   _  x���Mn�0���S� UQ�I���j�D�lL<�`��C��;Nb��jQ7�e�͌_
� �=:���'��9����U�����"�&�Jd��v�	iQd��1,�Q��Ƴ��o1'/���5e�!��;��;J՛9v�F����XL�e����8X�sH>4��Qږڵf�x"����+�ɪ�䞖�穘�Im�h���,��J���,��]����Ld��ҏֶ�=]aMx��*9��M�L�е��"�@E���g��$eCj�s1���Zv�O�h�?7PsQ�;:���}�����l-rH���OqF�q���<�z����4@�$f���H#���F>��P#6��T��c}B|߃%9      g      x��Zˎ"I�]_aRK��RB���t�<���Ro�/w�D������Lw�T�QI�h�j��9��Hr�KU�x�5�v��^�`p�� ���U��<��6�rɆ"�L36���T�S��8yx�l����<mp�eM�Fa��8b�ah>���N��L3�����i�kǶ�Z0
�SĂ����0�����!VIƟ�FFt��6~�eʂ�J4�J�H�Vgy����k��Æ�/��e�ۍ�MH�5J��}g��۶]�\ÿLW�h>�\��aI*���O�LO��7?�g2���0an��m��[Ӧo��L�s�I�x�����1�o���xW���ێ�?��A�|�S��x�(�?:����g��^�s]ϫ��j���~F{��`<�Y,����{�ڤ��N����)�ȃ�.��S*�$UZ���経9�ؠ���?h��o{�	6{�+3�7��np���j�֚���DAk���enE.3,�a���0I����$T�_	�!n��pG�p<Ss^@����Y�v���ǣ	��}2[����O�e�?�Q���ӗ��K��R�).��Ys�k`����}$�����CL�l��ZM��4�R2�k8ZC��^�6j���f�ӯQ�J �]��Z���%��O��|��v0Q¯�;�@h��7q�*Wd��w��@H~�;�-��2�u��0<
��$�b��� ����\����{��po&�rC��)ea)Uԛ��]V���jXv��*�:���C��dWo'Q$R^:4c�(<���7|��$�Y�\"4^����L<	�oF�U�]Ǭ�bs�{C��p�J��ͪ��u��9kv>��;,I"�` c�%�M̗m��4�|y��� F�,�JvZ�G��A����VК?`z˼�^�{��ǃH�D�i�����>�K��,g-��a�p�4Y� ��R��Ȅ�C���o�n�u�����:�y���4��hZ�"B�-sy,v���0�������BLߧ�Հ�oޤ?�+�3}�:����Vw<��y�}=+$\�	c8�}����P��+�}���	R�65��&̏�@t�Y�Q/����x8�1��L~��a���\a��'����,K�d������܏=z�)�D�'�@�M�6䴺fa'Rq#8�B��喖G�.�� ���>Z��U�7��)��2,q+#8��@�o�~�$��*��A�����b�:�u�z{�ڬ�
�o����5���q�G�\�$�Ge2}�k�|���}�М
���u8���}��j�!�k��;�[N0Ŗ~1���"-by�g�}a�V�T�8������-�B���p�(��|���Z'��A�"&��e�qAc��7fڼOH��	B镓M��=�v�f�neh��Y�Li�;)d	e镌�4!`�T���%����͚�Ç@�T,�{(���]7-þ^9��`��B�0"�J�"Z%  �[iq�D-`�-��ش|��~��o�lΦ��}�Vp���f�I���.�a/�X�r.7��Y#h�v(�	�&X�Gւ��Q�G���9�3�i��\��-�eHߘ�;��{h �5�kd�y�̔��)pq�®���}�=dmL�Ȳ�B��	�����l�/��i��Y�vi�1Mb˓�:�̻ͳx ?���>�i���j�ɧ��[Y�%�"1t�K�O��o(����`�W���*#��Hx����Aѥ�-�H�Gn9�w|	YO�4�%d=��uM��rmٺ2<={���r������ų�f���U��4y�����5����W�5exV޴	�=�j"	�'��m���\$�h��[$J�͑Ρ��Rc�\DX���-�����k,�a�k�����)�"D����� �KDbB7 �.��M@ W�;Nyu>����P�BMQ�&XD��Jͦm�s���}0��=N� q�D����]�:����8 ���0�ED�[�]T��K�<��RB��� 	���g����-~������=�����bi�ʲ�/{� �� �x�P�R���7>A�OIh$�!]�Lcʸ�cS��KM �J:��?L0�І&�X�P�B��;�V�	�Jߠ��t1hp��1�L��N��|Et����l*���wI�:U�M��w>��W� ��pM�A��j� � �M��Z�����ٚy�ϔ��l��3��9�bU��6�r;�>�tb���xp�>�~LD�O�bD�N 7c�;@���G�?�	�6�3�o����[��R���ZҸ$R�I�B��S6YQ
9�%Q���l��JaM?PV��𫳍K��|�e�;�Z�7F���xT@{��C��"���o�>nK!��Y��Q�9��,)��A��ꦍ���2��+�&�����g�Z�x�Que�u �Ժ����:�ZM�<���#��B	�5�@\̌����s���J}���6D��5�1�@���8�kU���:jN�˜�O��>
כ�H�T��kp�/QZ7��l \�H�b�n�O���J%���Fh��#f�7s�˔֙�jVX���ɛy�T���PR8Gi	���O�'y�?�B�dl�ܝ|(U����(���Ψ������:��%k'��=.^��e�CQ,d��
_i ,^�Kw�r݊�U��	Ͱ6Z؝� �-|�N, UZkC�"`�	��72I\�v�T.��u�4�#�Qv'�r��Ur��5l(Z��rm7t�=��N�P�H����B�4) �7|���D�X�� A-�l�L	-�}PU�^1���m��_����}�Z��)��r�����AKRu��#aN����MY�Ci��*���]H´�G�}��z�,"�CUF���c:�g��}b+DB�k\Jү1��j.���s�l�f�:H��=խc\��?��2t.�t�36� &�T��i�+6�1��" ��oq�P���1UXn)�>���r��lë4�����=�z^��3�B�.������PZC������m��L"�z�����1��� ��ґ��d�g�}S�� d[��ϊ=&&ӥ@r&��$>����o�g¶+��L��/���8Tx��$!!�NH���ɰ�<�.��M[�|��0M��l]�a;��h�f�Y��wI/�p��=����Jh�k{3�).��`�d_�Q~���`�BHf��C0(H�:��i�m����o�	��QgB��̠��D�*�t��!��~.�|���%؂O�-HF*>V����7�·]�:t,�6�fԀ�4 ��H�Ӱ�C���09 ��"9 ��ACR{P���{BjaJH��;��Q���mbi��륎��fm<\W[>Iо�@>)�բm
҂֔�M�I������0�u]�.4%�g�c�i$q4ɓWC�6�L�C���R*b�¿��~��W�������"�A%A�BM���&�u�\o�W��3W��^��p<���!Ծ+;�2+��6�rD�3�%�{�x�9_�ԕ�>8�` ��1T	L�t�zC%>_f��x:��u9�D��p���4�U�T7�s�	��}!1�*�W��٣���oO!��+�)��j�V'�1�t�� ���r�� _���@�*���*z������\n�����8���?� 5��.�R^�A�q��ъ?"�W�J�&@�$�����4	�k���[��̂>	���R_s/5�gU����7�y���y��F��sFbt*"�4T�}�IDGu�q>�����g(�HOPCQ٤�\���NA�2�-�8�6���A)B�l�B��0?})�I��S�8ʤ�����4Ɓ����M+�4�M�ٳ� 7[Fô��p��c׭M:�^���	���K|	`d!�4���t�:��-p#o�(�P
dN��7z��#:C���|X0�Zc6	�Ǣ�Ӊ��f�O���`�*[ferݢ_�M�"㥷�؎Qq�+�6��F=6|�2��	T�1�7	�a5R%=��^|��"�f���#�y�&�k;o���i3�������y��`@��U��	��o�d��B��xϱ�   7�B�����_Յ�a�c6�SdH gm��A�4�AD��&'Hے�@���l��{(<߶>=�N��#�l����L}�IR�.�<�>4���x.�#2���_%ﴊX>�h�ĵ���[ae���^V1�`�격jv�G�I>�/������W�@� \ J���i���rRTLe>oa*yc����gd���|f�Bq+o�oY��]>��R}
V����?6B���Y���L�2��j��=J�\�C���@�H���8��ɵ�$�2$&)$KL��}1��I��u�UKʨ��0�
ǥ���F,L륊�`K��A�< SC�v����R,���ܸ�:Q!���W!bZ�Y"f1{�Yl��P�o�7ؐZ��A7��v'�V�trS�����Cy�kh��4�G`@5���a�{Vv��3�A��R�ɏ�;�p�Q��FDPo�<�B���_��a}�Z�m֪#]�͂���Jd"~n���E�^S(�O��˔ԡ�72�Vl�w����������#C�:��y�b��� ��\[.,~��x�uQ���zNM܁t����C�(�fŧOT[�k&!��^�y��3��Ҿ�|u�2�|�̨9
��I���(e�KҼ_P	�z3}�jSQ5�"���mn��o�]�z\eS50���R�e|����Y�:axq+����Q.s�����7~\|Ӗ1���:/_�@��k��6:���ꊤ��i k't�H�YL��vc�.�Hrc�X�+��nö����1d6��������@��_P�AQm#܊8[n�d��o]>i��J�LDJ��=~�<d��g9(E^��mص��d
'�����:}���Ԛ˖DIHh9ucn�P�*����ā9��²�q�m�R��V�:J2����F�ͻ�f��7td��~�t�>�|~Nn,�
� ?}4@����80�֢��׵�锴�����J�R�ɓ�0Y@n�z��%��6RNx<F����*�7�e56�3��ٖ�9gh{t�rz�g���!��<�e|����?� x�N�ΕevcɃ�+Mmy��j��i�W��MGߺa��k��mX��� ���ڧ����"����Kn�1�KA)����||GN��.S]��_N���n�ҞQ/�AF
��S�F%C���������R���~�l�ytl�TvWFM��&F﨩/V>/Ss&1���2:`�������l�,���#e��1K?L�
~ԭS��g��`������]��1��및p�~Dr@R�����P/D�
��N��(Yc�(NJ7�"��Յ�<A�:�\�Lhr�z�yG�]T��]��-��7M���qy窠B����\�]g]����Զ�S�vasԙog�J���Ie��D���\U�I~�ol������x�PK�N-������ ��6��˵^{F�>�@/�)齏~��d�GQ)��Хwi3����;*�'Ƚ��#�w��ڴ鍓�`:�Gz �+���@��%��d[�"�)V��x+�QA&}�D�]+���^G�쀀_.k������c�I�\Bg���EG>o�u>I��Y�L����/�5]�g�M�K�H7�>v{�"�V�^��p[Y���߷�[L��u���l��.�_R@*�_��nxo���x=ĺ{�a���v��,��i���9K��ݢ��̶E����B�ga�U�̀<�x\���=el��8��G {r���QW��sv�[����?�8�O��x^}5�
�4y��!�Q<���@�N�L���2˨��ZueT�c�V��/oسD      h   �   x�%���E!е3'@xB/��:&��
G�h_�ٶ����˲�Ɗ����~%��;V �]������l.G�_c���=�Z��p��#�~F]�p�db����d���\M�Y�����,8|l�~�ȫ�<��	�3���J�D/I�r�,�G�j^/�ci^/N>�c̾T��󿿽�?��@      i   �  x��W�n�J]��� ��>Erv��ȉ�ǵd�"�RGT�n7)G�� �,&�Y�N?6�)�V��5[MR]]��SثϺ�埍,-;�rS�t��Bv՘bʭT:�Op)�i ��05�j��*�b/ث���	{�^ipHI�tB���/�Bv!���T�+K��S��DTr2�-MEU��3�Ҕ�P��K%mmx�q�ң��Li�G��^l�c�){?�!��ob��&��q��������^���r��W�N�\�Z�]��T�����؈W�ҵXa��y-�aR��|�MIץ�zJQόq��7,�?�!
���4Jv�Q����ӳ��w�#Q����T��p+�9�.�y'����9�8��xX��n�q9"i��/�b/|����d�}�6uYp*���-�+��p{�lj����n8�A#Η�4}��(��9n�qO_k�+���R�R���#�eQ��)-�Ĺ� ��]J�����v����~�˩�;����63M��Fwf��|��vI�<B�=�8
:i����Cz��SA��T%�J q+Ƈ�Ӻ^������{o.�����B�_�֖b������Xؗ�v;oZ���Rvŗ�^�#�h�7�u���៩d;��c�k�-�
B����(�ndp%g��d��8�+,ۺ�q�	�8zZu�,sHf�Y�W5H$m���n�t%j��VVD}��Ü�pL t�W8�*����.�i�@��ֈ�mK���>����b&�f���^�����}�ٛ ;��%:�P��Q0h�u�8�.Z�^�B15̳��	ʹ��]c�>8{�D
�ro.�,���ồ�Rf�D�/������?}+�,�qXMW��������"+d�I��n�o��N!a4Z�o����h0��? ����{5�u���Ia&��B���
JX_�Ά�i���0s�V�w U��,N���!�����;c�2���jb���|��̠㽁K�S_`�7
%Q(�V �,㱾F��q����N��S�h]?���tsw�0Mw�����6�B�\@m;���F[O��-*;A�V.� 9-����9�;SB�A%z����M׺̦s#J�1Arv�|�B�Z��4N��L�4Dٳ4�vq�̰��O&�� ���g��c�*�(�n��Q�p��҄]��1g#>{S�ʅGR׏��i�%�}y}��ll-HLv&�\����N�����,�!�)�+��8�nL�r#�A�n�{����<����벾��i]S߈{ʍ¬*�Ū�-8m۫W�Q���cQ��ԡ��R�6�@H��[��*��5���6��[������`��vF�O�w���\�	`B}\4!p}��*�\s��sT�b6��|#<A�Ax��'F��N�?�'��'��Z�0��04�j�%�B��7��~tD׍sKK�Y����������E�4�1B�������"���n��:lϔ�s�+5�PAX#GeJ�R����1pP�[$+�뻇�ly3l]���Z�D,`O(��
!�\
#�_-K'S;�1?��������e���:j(f��w�1b�T+�]d��ʍ�i��#�	l���V����!�k3�p0�I�{�E�`�sf��+5���Jv!!O��sY��#����fh���N+�x"�bq��q�g�A���9-��X�a��b�N��Ѱ)��`[�w	x#�Yҵ���ń����m�?���A5�� �OaTHg᷇�`�f6��rs��S!g3��4j[6E�S�����aՋ�
�כ1*
P��R����1��� o�%_a;dv��H�<���d$��^�����F_:m�!�)\V�J%V�bt��xw��p;P�P��U����4�a�&�`�9��8P�@=��t��[�ot@u�拣�o��]�e���q;ת6��b4��cQ���-���iz�[��^��P[s�ջ�2�3��@6�,䳯Kp��A�kw㈂$j�cT;�d��dp�n��n��*mO��W��f�k�k��7�]�_�
����Gd éG7Z�@(��V��<]�xI�D��0�:����"�휟�V[����s�ݧhӉl�Z@����)��1b�yi��3��>}N�9:̝����D˃�w��U�p�tS��9:q��Ɠ֊P���R�#��6Q:�~�{�c��]��������?E��      j   �  x��W�r�:]#_��Se)"Ej�<��J�,���&!P��}�����*�e.�t/v%�M��.t�c+QK����J'�^=K�tC�̳� I�>��;����|�ӑ���Y����Q/�~��[I�}-�Â�gI���;KG��<���|�OY�M�����.��͕.�D�_,�ߺ]Q��lv|mM�/�ي�����F��)����|:r��$�3�0Ͷ�^��_-��f�=>b��_����pw���F6O�Ң{#�o����W�_:(�!KY���_�>��x�O�d�S�NJ���x��퇔��ֵ�l�K+_�T!�-�U%�=�mve	����d���36���Un�5;v/p#1���L�Y��Y1��r+	�J^��+¤��P�2"�q�K\��^�;ux]��Sz�7B� t@u���� �E���5�뿬�EN���(��g+E��gi��S�5J�R:��z���.�.���o����M�
��8Ĺ߄n��q�4��E�D¶'�ʏ�a�RXT��cTӡ�FTY4�2��w�եO5j
���e%��.#�X���[Q��*��j��fkl��9f�!{�~Zg렬 �1��`�C7��O6��I\�Q���l<MS�4�;~Q?�C���?k��6��(m�%P�8σ�©�
T]�x)7VJB��d����u/��8�Wˍ�g�K���kx�ز��zB���7V4���R��.�1NT`�XI�R�6��Gt��(�y��]A�:�O�UI��S��ح�c����{��O�y㐱c�%Ɉ�au'�Ơ�;��}����fk��<�N;��)Z�s�Zoj�*^+(O���>_ual��!O��c	�d�ρDv4�y�[@Kbo ���u��dҳL����p��7�*�zM���� ��;�|k��Wִ��7�ы�H�6h��E[TP�f+�4;���!�	oX"���ɔ%�,,�����kk%g�>�v�~��ΦI�=�e3��q�=���9�[���Zcȸ�<EW(�'�!�+9���R��	���d�d�w�e'���c��RpM8T�~(�Xc��m�EZGRb�L�ڎK�/���^�}#b1��1������x�'C�pk_�E!�C �{Y�}�
�樓�M��z�j
Қ�U�h�K�oe}��}�����.!hM�ŴNb|Z��`�֮/S>}���t�pHg����حz��W�s��a�>[.ι,�6�*�9����׮t��1���Y ��'��t����y�:lL�� ɽ�	�r�lk������u�3u�y�Tq�A���f����;k����N�G4Z�?^,�c��ߢͶ�+c#^�1d�����h��wt2��#��4$9�Xb���HL`����~��[I�0�l����s���#��|>c�$6�X �b����;��~CӭݺH��`���ڡB�����mB��gL�:�����6B���줰,�Op4K��ǉN�)O��R��[k�2�n��ZZ{�c��{��1����n����0vz�4��v�S>4��R{f�4��(I������,;n�I2��t�e��p�~F?���;�U ̇l==@E���S����.��Cq5�{O��8gW�t/�U��-�8zN�tL�A��)�.1`x�z��z7���X��'��h�O���#��6{#^�Z��h�˟zG��Hޫ����g�o      k      x�m�[���D��Sa�0�;�q\2S�u"��Y{�BH�\�OJ?�������6��g������5������g���>�[*k�OM?�w�E/a���75��~R�_4��|h�C��׵�wwUQ� ��o�&[sX��E�y��Eԟ�<~�����dm�X��oY�Ơ�C�'��b�Ї��ކ���9E:���h��ۤ�O��z�����T:j9j맾�����ۮ��nа����}0������4��.��Xi���F4��M6�N�5��.���.Oo���xl��.*����n���w���c�ۃ��orH��;���B�4��4�%æ�]��^{�hf��?V8�y�^1z{t��3_B'+G�3��EvI껥%Y=6����J�s��d����Q��������� ���4u}��w���
d�5�}��������(���;P{��#a����r9˓K��9>U���@lv����=z��z�R��[[���}#�\Ch� iR>)�K�U��M��z�4�&��O��iI@HǴW�#����A���r���as�2�d.,�����H�=Bo{����+��K�xO�
�,��H�*�?^�q)�1���"T�\e/�D�*��[5���/���+�k(�h��ߦ�KҐ/���'@��"�9�F$=�\�tS��N���_Z�iO���ݰ�=j���nS�g��&������������j������L�[o��	�3 m1|(Q���2M@��DsM�Flh�DuIQ'��u�D ��U9��'#ae Q�$9IB�w7�0�շ=�_��x�^-�g����?BQo�]�:�^�.�k��Y�}7ZZkN�m����w�;[��Vy��Dr���(kث#)�)���@�^r	�Vc���qP�����ԁ�������q!�XhA�����]�Y� l�#��]�.3"g����[֏�C�.t+/�&��*N��{%�~���%7���)��]�- >�UD����&�O�_$���HC�����F�+���t�"C����h?;1\g"#|� T8j��M�	˷�)��R��2x��F�Q
�;��A4��M��= UD''�*I�#�Q��ۤF�_�a\z��%K&�v�c�)��\GX#0,U�����Z UD'�.Yk|l�G3����S��K�yI����l��6Sc��k]Y˴5ȟ���s�����ݘ-���)#���j�iN��ͻ⎪�1d�� ]���0�`Es�>�1ϳ�Y�/�|��~*�k��`�ʇ~��h�s�5&W����F�b�6.lgF0�����x~�W�5�M�=8}oa-�|u�����4~ӶԳ�y���|A����Ƿ%hK�Z6��Xy�k=�ˀ�$�"��K�rïްr�7���d{:�̣��B(c�M'l,�W��\�)/��>uH�&Gԭa�U?�W�s����L�!đ"dN��Z)���{L��}d�;��w�K�غ�x�2hnޏ��%�����C���т>So><6��ms�ۂ������A1�ϠDB�}�<q�>��-vNj:�bo��������I�q,8@�-��B�����ɸj���q�^w���H^�AO^	�W�B�����#�A��I�zֲ��6����b�?.^���~�ƫ;8�겛��N���׺�����K���҅�WN��)�`"�yv@��f`	�+�/�v,��ⱅ=6���3+��B��O����}����)��~g	7P��US2�Ee��W�RSKn����m潦�8��mȀ�;e*��;�ǏǑp��T� cQ�J߾�Fp���ȁ�q`OL���}���L(N��U>F�R~!@�c����͛�>!߃>����B�l��k�_r������=F{@���h�����E�K��m=5�{8��`�8��H{r.w*w!mMMH��?x��z �]�a��qf�MOF�<���Gݶ��+�޼u��� ��º^~��Vâ��q��:SVc��V�r��xd?س�5�_�%G	ޙ5�Q�qs;��Щ��t�`�x�Y�����W�4G�ԞU[n�h���	]����K� q�������W5���@�;[P��l0Z�"���P�*a)�r��b�7U�����7��kCt��S^�M���r;l�Ѩ�z�?����S��G��gz��¦�� 4��2te[S�d�R��M�
mf2 tP3��C�~^�\m�~	�|�'<bH�k�!��zZ�Lr�"1VXM��k�xj7��E4��5�18p{d\���$�>������y��g����U��������m?㚌�h���"3��� �"�U��eq1����H���(xZ��*p$��\�]rhP�
����[m5F)z9P?�c�_BCy��;��U�6y����v���Ra-;S�)��Q% O8O%��y��Go>�a	�g���t�n�`�a�ض���@���V����MyD�S����9�M@�9�j�ׁFGG�7�U��L�j�8��a8���r�\�����K�xX���8A?߾0�狨zt��H���ȨF�/�W�3rNqڛ�;U��t�� 5W-q�O�_��+f�� �#$�jB\�S�Z�>�OFnu���I��������t���(���?�s���	)V�Ρ]DV���*tn�|7��x���=�* J�0+��qԘ�7���kzL�#�"e�<��4��|<_����d��T߽E��]gp .��� 7��)],>V:�c�Gπp��6��~m~�m�>�WC��4����h���}`W�[~�_�+p�L;c��Y
=��g���f����y��J�	��:{��W�h3[Q����Ztl�uor�����,JC�7BV;[�^�>�{O�r(p[�!, =�=�3E>�)�L�19r�}C��\�ʿ�P_�	�O����������mS�<��i6�!k��<���2�+�)��JBw�@���a�*a�rJ�����h@�^u�-�nD*��a���u��[}�BWc���7�\D��q��w6�-r9��L�lU��Y]g����Y�ﭬL�:�x�̩���h�?���areW��7�Y���ᙡ��W)��%
78:+���	|��1D�i��N�6NO[O��/yH�O�Ӽ��4�'�b �����ܻp�Z)�=N��#�A0W�$�bA)v�!=럣�jR?N�#w̥��@l��-b����7»��{��6��g3���E������:[��_ܞ��v&A��(��wv��}���=��_��jĂ�YG)#}�f�g�Xs�͍n�v��r�}��w�����s�v��J��Y�Z�63H�zWH�{l���g$�а���t����;څ�m��[1���@�>��wL�vA���v�뛹���axC��q�#e���޳օƞ���W��V0��z�%D�qt�lio(sG^H��1%�G��q�����p�-=7\���j�fԔVvf=2�����Y��Ě�!V���m�ZP�a�{�7����c��;FRU>���Bo����3͹��}6+)���Έ�G�0�RI-?����pU�琰G����8�E}/u��"��K�GD��[�l��;�A�(��ܸͲ�m⣟D*EtR�|]��MՂ:!�w��F��xڡ�T,��ʏ��ϥ)m���Ш~�A^�M���ǎ��Sg�E��/����E��<5p~�����em@8u�ټݲś'��h��P˖�����	���/A 8��xm����0GdKQ�B��}_~!���k�>E���a����v?Lh�uV��ut�OE;ʘ-�8��'g͖��Ѓ��cw�p���ֹ7��u4n��7H�Q��X�e<�'֑ީb֭' �T'��@Ӫ��<Lh�ܷ�MN�]�Z�8��rϨ��K�!cz��{It����n�1�~����|\�j���uk���B�U��0���"b��F)�����6�Fl`+v��f[gh��K�����ͱ��|5�r^
c�x�D��U�p��Bz�ȻK�	m����:���Z�ܽ	�ψ�iW䨴LM6db�N	3N���عv�����4    �A��p�������q>o:v.cخ[s�Y��M��*��-�Ϳؙ�u#��ѯ�$hN�,���M����i�_$�?��2݈�BG)a_k�%��(M�Q�s�`۠{{�dOh+7����t�7��9,Xh��v/i���̳^%A<��[�k&��1��������|I��v�P�ѳ9��(Bi��HQ%X�^eb�]w�,��_��&�ղ�$�������6+�{4rX���=j�'k��ɉ�|�4:)��@{R�X�d�?���*"�V$���cȈ��.���B���ϼ؟��5:^��@�`��v�]�cP?q�f�� 4������GHoƯ�'L�K�|�V�����X�`8)9�����%��"(�`�&�+����u�`$�������=Z�;��G=��7�0Ts|Fsr����/�I7�٥[x:��#|n˖��V:ff��(Y��2ZY����޵@y~;�g�3��;���"�w�U���"X-�KP���u�o���ްx ����Xz�M	�qY�d�:�p��5�f^>�(4�3�������ϣ��"�BY%��{�h�����Ch�ԉ:%x�<���K���A�B@�_Ɛal�;�m\���s8����ѵc8�4WvP�?�ȭɍP��K-�5<MHO樭�؊��J K��'%+����w�Ҋ�5�����2~d<��k�����r�U�L�$(:��9ME+@Un�U��n�|6��a�X3��&�^yl�J�������P���ʘ4<ljL9O�|g}�!��5���XL4�� �1't*z�Q>s�*�[JC���cǦ��`�q�e�t(��6=u�L��װov����s<�����n����vd�Ñ���(��͐uV�޵�@;����J�|^T���-��j��'@9��l;KD�_C�JQ���r7�j?��U��r�?yh ��]W����/���';.,�B}�T���)�v�0�Aߢ쫺�?��^��Q|x��R���nx4R����\�H*���W����ftGV���-,����˰ .�=��W�G:���I˖T>�T�yd������W!B�:7�W`y.���rW�7y�P#&DG����x��4�������:�A��R�(��w���|�io�h��H�xP��%W��uT��r >HBl����tJr�j�R��~3��hȰ���H�Rm�Qe 
�&��6kLZC���=�&�k-�#j�޺��Nu&�����1z�1e��I(ZsQ�)����-�'��W��Gfٗ?��V:5�Θ��i���Jo�#n��_P���������m���‮T�!�-Upj.$l}b���gK[	�ھ�ON��=++��^�xٹ�����о�:�����{��>�m�?�k�@�b� BG��O�e���ʏ����h�w��QoC���#8'�=F�7�Mƹx���2��\g_�{R����s���b�s/q�3�5���3A�Ɔ�ٙ\y���ۋ�HeU�Y�^`�3xGGCV'�B��3��W�\�>;��nsحRN����;Gs��D ���h$ ���	!'6��a��N_�`7�S0��-{[�óv"�DW1�0�+���O�3<]Em��
�*;�&(��{�啞�&p���<�島�ʌ��=��y�_#�w+�+�Ku8>M�l���{X'U�\z����τ7,�����{�HZ�������C��<�v<�:R�#YFHM�S��T��o�X����b�*��n��k��`��*Tu:�	^�4o�<�SK�F�๘>*SgB�y���:��0�����
�]( ��"���=
|��.�+�*9g����9�1T�:g/�E������*������H�>0y�]Ǵ�:���򙆡r��o4x��>V�#e����h"����+���R��F~j�^��\�>��a���]7`zs�=<�3�+�����tO����˟]y(A9�8��Ү�8cJ,�E�wܮ+#�	��v���t�c�6�$r�#D��e ��zd��<' �Q0J�
��kXq���1m�z1���^���f�d���I:1+��>��F��2ռ����3J�	�����c���p���?�T���2�r3��/���i�ڕ+�X���7���>�� �Yv�2d�( �qt_���Q���OFŔ���]�B�oB]V$xv=Y��l99'hvdģ2gH]�X�٢�sp�Ue������i��ʃXW�����n�{���%KAJ�[��3��'�tk{���[1*(kw������|����v�ԩ�i�j�a9��D��	(�V;�#�X�+*ꡲ�Ax?�r,�O�s����Q��
Y6��+�1��ZG\�W;�3�`Ox��Ɣ��Iݗ��.BSr[�=����J�v�v/_G�a�[=�䴤8k����~4�~�_�+���F��e�ū�_ã��>�>��=�.�o���E�������;�����K����8�s�P�U)�>a�"1�<����R�����3hw�qA	eϐ�l=�H��C�iD��Y���a 4v~oQ����c��{'�P��I_	�czn�ԛ'��{z���0���=[9�;:�\����P����W�)'Coo�ԉ�9%ox�&�h^�`E�ɸ\\a�����1ǁԏ�2s�4	K�s�c���ϵu������EOWR�����Wz���8�|��*�<pC[������Ac감�����e�:b��o���I0�	�-��>(�q1~�ղ��QD!BV­�8�+�~������&b
�B�!��3�>�	c�-�pFqv�}�����!0�ط[d�6��8�Щ�
�#ū����MȺ'����P�U����	Z	�柵d��%�a����y*�ai*�U������̞�r��m��}&R6�e�c��Lů�n��r/6�^��H� �x
~�)w��^�%7��5HG����0Ӹ�����Uc1��k�����><��|��C�ρx��v�͜��[����s��H��9s	��L����|�T+$ճ�o�@�{B7t~n���s����o(,�;W�7f����Dh����䯯k#����x��H��o���G�AVD��{��m�ی�CE�3���^f���Ж|Jkj�LE�tyD}�����'������9�Iv�g��?
�ޢӺ��D���YWY��U�y|.M�����V/�^��Wr���z�x[�����c%И#t`�����'܁ J�k���6*I��e���!�6/n�B��2C�G�V�%Wum�2"tZq��g��g5ˈ��J�rR��5��fp�����;7�{���V�!e��Sgs�(5l��.���x�~����R�e$���X#qR�� �gKQ��I�ԣ�`�6({��,��n�&D�5<����w���|R���*{��?��f�W���4�i����m|�\�̷o���2�_�P���BY�~PGͣF�G׭��s]������]vp'_Ξn��&�4���ѩQ�[{��ً_�����뢐��o�Rփ�/�k0α���9�=2m^a�����M�z&�]7���!u֗���al�dWy����*õ�r:v�;�J�/��	:�laɏ�/z�Or���L��~v�|�C3G��/s�*1�i��������V�!��}�|��侞����7�m��I���� ���]щ9�)��d>����o�X૔���Q��f��ʚ�$cQ���:��L��WŀۭA�_��"�f<e���L���h0����3�}��Ӑ��q���w����ŏP���q��롚+}�gpV�G*��^D���H��R=՜����c���k*���)�sxzWRS�Ok��$��>%��Pצ`��a�G��Ȋ��_���)�둑Õ��t��>�&K.*��VpQu���R�`�s�c�oje���	�Ĵi��+>������3�n=3��� "d�]�w*�}ٌ�֝� �� �  ��&>w�Ҭ4@w6���@����m|�V$&/��L_�)��{�?Þ���5ݴ�Sk���l׺�q�x�s�v� �I��([	���cF��t�R��@�R�����B֨&��`�r�FWη:4p� �\t�;�F��ૐ��t��!ec�o^�n1���ȥ�"���W���|\�+�˽d�p�Ҋ�u���ϋ���>
�,G�
?S�����ovd�;vS\��SCZJ���!dTQ��������D��
T+�	���8���1y9\1;ˢ��0��D�G��$����c3`��R��Ŀ"����#�za%��yU��Ю�x3v9� �ފ��T�@�͋r�_*����K�Me\/KH�f���{��x�vF쩢�O�7»t��^un�2W�?l��t����〗vy	�UyU�"Z���XՃ�\Ԗu���b��#�����U@��!�M�)ԅ�,��J� ���Li�J\h������r��[-��@[��J��G+�1OrѢ�8k��b��s�E�ޗ�E.��QR�'��9�?�{��'}R�ڙ�O)�������ߏ��',b���_q>=�Mo�ߺE_{�&G�^�).]ţ�6��oM�����I�:��%M��hH8q�.����Zy�K��\㛒��턴2�~��c0@a5�|r@֨���x=�������]��Qqp�� >��j��#Y��1�^,~2��zڏ:�����'��XC��ȸ�KI�T!e�`��s�����v�m����r������6��k�ל�yuK)D��<��d�~S_���5�!4��CE�U��-9:T���h��R��w~&�U���=QpwM�r���A�~k�c�M��O7�̏ͼ�¶�G����G{��#77�m.����VH&
6����'����K^rk��=\��`��N��0<��h~<dF8:C�Wmp��\k�#�ʨ5�nt��y��n�FA!;����([�#�	`�+ o�`�g�m����4�tQD�[�mt΄,����6�2�*�=�zH�����a�˷��������U};`ӳ�����Hxx�r�	��1�aLmX�Nz�n������]oAJ�ݼ(�I\��=���#h�_!�e�8/�Ϫl"�HH7�b~a��k�,~4�!ݶ9:��H�R��I��6�����ym�\�ύ���]��S�|j�|�p�/�-���>	?�k��1�j|��"Mm ���NRU����7-h����Ƿ�������x&9��$H�{4H��^0������rM5 �9���>޵��Et�<t�����9��ǫ������F��Z�0�w�2��$�	�mv�ɿ�kc�K��Dv�5���<CsQt;���h���w��@6�E7�.�'� ��nG�����Y���^���?�Ή�!���]U���U��r_� �K�5�@��V^|/�ѹ�ɝ����	��8���Z�8��u�ۨ�\_S��_Ӄ��F�t��9������O�A�͏reH=�Wٴ�`� �>�!��Rm7J�!�|]�>~�篔`�����W��s���ᚓ�q���z�t��C{�V`�	tT�mx$m�y��rL�<���LJ�`[Wh�;���]���opT������3Ӏ��d6&|��Jz�� ��ct'�nt}����/	mB�m�B�H|�����F��s���s����#~�x���0:�����f8.�z��0Zz���ʩ3��0/�!�_�x?��b$��!�j�>���#�q�,��*��U{�s��%�c���]3���7���"C���60�#|���Q�b0H�v�\KR�8���F�;��J��%\�%�����}���c�
�\̑�&5T���!�۰gxYW���Z��qZ��ո9}<��F^ԧIa��{{�����!�#�+1���������V��v      l      x���KoI�'~��,�})儿ݏ$EIl�&U���^Bd���T�&U������ ���j������򋭙y<�#�̮����JU�/����~�rQH���.O�f&!�g�{V��G����
��Lɉ�?0���j�����b��O�ٴZf&��M��U��wG�ߗ_�캚~Ze��23BE�bY�o����W7o2�!�Yt�+�>CL���.>����/S�[?�e]ͳ��tU�W��$��\<��>�.��^V�O��B�"{utyt���w���@�Lf�L��^��r9�O��Zeכ2�[�oʇ�X|�[�]O��ߗ�j�\d׿�
��~�͎��/��哷���{���L��Ұ˷�M9��*��y�Z/n?f����d��S�����/�9�ֆN��_#����\?�&�_�5���l>/��	 �~�Moa�ǋ�Nwy����m�˥1��}��U��q������}�n>���Y%gX�(5�)@��F�f����zsÄY�nɾ��RN���,>?[m�/ �S���S6��$OJ������ ���y���Z�����������,p�i�?U�
�'J�Jn�A>s�k���uv�.�����Cn@Z���
!����C�������Zvid��V(�$��]5�M�֋y~���b�.�˲��"���r��װ��]�������3e�^8���,9���$)����A��������Dx��	/�e�K����TM��g�؋��Y�^W��ϔ�n�y~����_β��~{?�/7 �Pͫ_6լ�/�����ͫL�h�L��D���K�9�]5�^O����ժ�m���'��ۣ��4�����	߀��N�$����;��������V~��]Ç*�И�r�r����C
Tد��.������{Q�o�W�"�z���5���b3�)�w3c& �W��4�*��l�(΋�~yڹZFa�!{��f$�p*p�	��ߟ>?��
<5��PTϫ���`�Q�J�����[��(r�[*�Y�%��x�6�sk�C��p�`���z�s^~�@��%a����K&�p��t�W��r���o�mS-���E������#�V�h�D�jh��5Px��T�o-���������ò�b ��:��b�1_���?>�%u�=�׏��C��[�x��ۏ�Hn�y�Q���\���Ɏϯ.�d�o]�!��2$}v<[�z���cY���q:[eR����U�z���{��7k�������%W$f߂;�~��i0٬9p�D�)��]�\OaY���Ǐ��ӏ�z��/r��m&xf/��FS�]]�[";����B�L~J?�c5�	��5��As��~3+׿�Z�{q{_����$w�g/��n�������R���Z�R��Џ���]��_W��������u#j����gy[���/2Qx��A���^��51|��`�M���5����=�-`����j���Y��\��}���IvS�}��˂ `��pE}���2i|����N�Jr�N�]:?��� �@an>���_��W�����
�L�&���Ϲ~�ۺ���1��1���5
�&��!0鑰!�B��p@��������2���W�"���?��f����-7 ���ˇ�V����l�����tA!T���N� �\���3@#���dG/��`��:���J;A�X~(�e:��A�ᚯ�g��n���>���7w���xN�҂�Uv�Z���Aj���u9�k�@A��~�1_���kA���&^���7ʜ�ף���I~�˺�-���4���u&ܹ������l��Ȕ 9U �Z��b��"r�U�6󻏋�:{U�����~�eJz���%܁?�~y�����S�ʃ��6����*�~������L���i���_�k���U�44�x�����7����HPU�*�U�:���A�P�'���N~JN��j���DprAl����j��+��yd��������yb�%P�'Ag��.�/�z�	���y�����=�U�-�w$����w�F$��d�5q$A�y(8�7Y�
(���z=�]�?�,2�H/Z��0��x�!p��?Y�,��T�"?/��q	�q��K�^���_������e�mBw�5AӋ���(�ej��O��vv^�L�WC4��5\*?\��`��c�a�y�CZ{t��P��{��+��&�F�ՖK`�Gw�[r�W���->�����w��M�����`޾����˗'�\e�3�V�u��D�>| ��
Ɣ�PdK0s�^�t��/�)\�%%��M��n�OȒcl�U�z)Q3�nxP�p�^����#_�p�7����9=���|�}��`�'Wg|�;(uo�aⲓŧ�_�Iq��M�}��ӷ��|W�`�pg�l��#�7ZI0��R����}�ca=&�2{{}��;��v!wDo�L�Ns����W�N�D1;�?��x4�>���rj��Vi�F.f�OD�Ë��11��6��G�OΥ�W�fN���k7��ɻ�v�$���G�����2��lmF��KQt�|��Y1Y�6V$��
.�͇qS�;���	�����˗W|GL�#����Pï6��/���3p�g�.��׵ �2��~q���y~�(�@[,?�?P��g˪�S!�j�]u��3g���al5�`3"��B��k ��7~=.P v�.�w���O�p�6���*G������gG���p��٬��  7��z�H.b:T>������aD�ݏ�T/h�q"�
������%׭�K��p躼\�y9����ۇ�}���N�9���w9趛�'�(�9�{�y�
�(U��w���Hwت	�1����tu���;Z��t�g����.�X�?���2��jU�3 �
�r:��߬A��o�h쳣�Y�R�zUp��_Ζ�]*�@�Yv�斣�Z���=��H�2�hD
�}�jh�p��f>`�\.V����I�� 5Evu�'��kV賣ˣ��Yr?w�KI��vG(7�Ϳ�����\.�;���{�E���ECR���
��7�Ӈ����b�{GH\���*eJ���l_(�U��H��W��gL�dw��]����ʏ�Жb�	��Տ?4X�w��f�a9�?��@��qu���2�-1o+5�����&�o��l"������6x��5y����U�F�vK���JSrinw��,4�@�e��MXLr	kQ%_;:.��@J4.����KGsz"���\ݳ��Yr�-��m�@�|�B!��G��^�U�����f��\�����\���
�y�/~�ߡ�go���ݛ�GR�p%����<��@q��7J�S#��j��Lц5F�jpK�3��	��ykLJ��硶��F�D�- *b�Čc$e���;S�)��Cb�
�B�^�G	�>��q��ÛSpv��6�H$�V� ����-V^ ߞ��og���b��5J2؈���9�p�f�����e�Be&~���3�c>v>� ��}~J��E�y_�(�}iP���5� ���i1P7G?�e�_�Ѥ�I
M�f�S��|6[��|�w`�~����	��S0Zg�3�\�3Q����=�TgR4����������s���'-��%HP�n�<�}6Ӝ��e	NЩ=Z��gTt��^Si|/إ���\p[X��$8����*P|/��>;�R��/7V�F�lԋ���1��}�ɫ��r��K>�e�{�O�O9n (H��|B��O���/�3�/A�]%�o�#L��D)��9�3p
�^vf�%��9>���o0PXtuy��*�e�VR��c�3��ϟ��\���)A[�*����b왻�rqz6q�b�&J�㒘������C��}AP�.������b1_/~-g�6���^����D��a-
A�-� :�!�CdHo�p�u�b7��K���x~�2�He�)ej��NKv�Lm����d�1Po��.ϲ��4GZ�}��2X���'��2?[��!���{ N����[���k�����`��EV���U
�KdƢ�����Px�D    �5_Z)SHvH��*�G&����#c0kǺ8��U���JQ���NP��#��n�.���@��Ë*����f
dp���b������l]�s�����}��<
���j�Ŋ&��GuFW�t_���0��$���(��R-h�	���>�u]P��[|�)R/V���QڤL�;���":�R�8�uuC�_N��lMVP���H�O�1]����Zu��&"{QR�50��aQ�E]-���.�����2��(�����]���#gn���n��d;[P�A����������,�\VZ�����x�`����S9�����V�*���f��zv�X.���������h�����W�>-h=��п�TRY{Ý���R0eG���G����ޜ��\��l���\ ������v1[������%��t5C]D���/�1�L�k��|�N!�c�Q�U�+������o�TX��HL��.�:P��n�b�1Q.?�[��Xޑu�s@*?�E�����\����_j��tq�#n? ��%��ĉn�q5aR�� �4��1��߆���G��$[�|����?�z�k�����]s���_��p�M���`�Vu�
x ����,�*��&ח���ۢ��2/U��l�tB��'E���U�<�L��+le`����F�5H��~Io����F���G'���v�W2�#6����������͚�c�����%�3����q��,�$fBxzt�ŗ[P�Ub�1x��������d1�W��)��2�k� /+�bLx�����w���|{u�w��`�K�&p�Gs�[��f��"[����vr]���Ḱ��Iqu��>:?}δv�T�:;B��&���rF`9��*f�?���8���2��������T�j�Q/���j�&He]��ы�َ`���\ߚ	����f�
[]���O��l�.���uy��|��pG�M�3D��K�Xd~�ٷ���_�6�9�����\Q��Y~�[8�H�2n@+�KU�؇��:F�14��Xvz����5"*�-��|�?l�
o"�����S��,(���r� ?���{�[%wĝ��0Lј�;\�z C¢��0��������
�պ����i���_�_��l�� ��\�\� l�@��R�\F����͢E���e5^DS�^˂��d�e�2�M�@3e'�5��j��$��,�/j:������t�\��i[GD�^y��N�c���0VDĹ�i�������5�虇Z�2�L���лPWS&B��y�<A�Dj�zJ��&1 ٳ5�c��&��.R]�}�D{�;[7	�9�^֖I'����1n4���v��U͋�\$��M��� M��"��^���b!!�`���7�Afο�`�=��x�����֑���s��"ʍ��a�X��K��K����_�N\P�)��_�@*@8A�f��X~��9(�*�����v�d.�\,.�A�U��J��`�?�p�A�+ޯ޾�`�Dv��ܘq,e�^/>={�@��F9��߮� "ȏg?j����${+_��B3����Z.-6#X�"������~E��DG큡�S���`��cD�o`�)��w#'�#
�N�'�Ec�8v�Q3���~p��3����WztgHD�F`!i�A�o���z���8�.fH��ڝ��A]e��aX�HrL)�]�L��RQ�x)��k�����}��>`����jb���M�N�v��qX}q���+�`v&���Uy��G*4�լ��)���͈��0�h�$��	��w�df�8�օ���=�#;BG���h�U�
Ս��q�
t��(�W��Q�v?�砦$.�<k3��D�*2��_�_�MY,�j���l���u�]n����t��\¯t .����� �|v]w�̛!=Yx*�F�5`�i%r<7P,����������K.о5����R�
���mq�،����r�Z=�JmNo�_��)��:�jBQ�8j����7��+!�,�Ưn�;�9Z��}�F);_ߕ��l�a���.�x����7��o�+���Qv���p*G�e,�t�Q|=�����v���'~�KT0�c9w����a��;p��xز.]J廑���+N�A�����S��60�,QS=՘�a{c$Cr����p��!-�c@���:H9z K�}��be�J��9Wv������p��p�}ZO�A�$���ւ�t[���1i�e�/�n%c�1/�:����i,3練��'1A����kj��M���W� x9fhN�X-uî�d�U��5��Y2���i~3�<9����!V���@�B)�/��\�~�_�g;���^�gI�$��9�.�A�bW'�a��Р@�~��dE�F�>s��U�:��v�ʄ���c�H�e̓U��|G&�FE�襏��e��K��]���J`�ʈ�=`1��4���i%PE]в����k�:#P��8=��d�2��K����23�p�E��*�h�b��]����$���E	�{
�Z�5&�r���#�;���E��h���\�T�Hw��V�����<Z�B�f����u
LP�ȀĐ�yrũ5�<�3}��L{a�+p�;��w�����V�6?V��K;�VpsrP���H�yLA���0���+g�jM�Z�ш�:v���\�U{Z��p��.��a�7x��=&_�M�m]���"2��-糍d�tQ��4�h��S�Q�N�:8̦��k�w�&�L4����GW#*[�E�EJ�F�E}��ժ6g>��m��
V�3g:I�=�N�X��68W�����ԞH]5PCjL�|��D%|5�P^��x5��3M�TQ�b"tܙ&>���W�:� �2���k�����9��=���%�C5���<:l��ּ$��\p���G�����[)�Qɏ��o�k�oi#z�9�dv�fd
�!��q�:)^�\�F2�k������6MA�ઠE�f&����@]3�4*��2tc�kp�Cketbbc�-U��2�K�wP��u�!Ѱ>em\�(��1�*������!�g�\$���|�q�ij����i�]���&�U	�����ZL��b��4ı���<�����h.����2Yt��b�����X�:��
<�E��],�F�oM����Q��䟀�\ �����sӂ���.�`����4x.qv���"�����F�q8%Y�>pA��G7k��Fe��u_��>� bHy�Fm��39*:H�ϖJ,�zmծ�$�|O�lU-Җf��������}p�� �U��S�d]���a�X�	B$�T�i��C#hDr3�6IE��A�1g�h�4�m|�0k�2^M���
]|VT�!���;Dr��"��;�z��+�؁ww��3�M|�z-��x�3�UP��$���%�o��E�t4_{���o�Ny��R��ep���8�F��k3J�F[����;Jig��Z?�k�&��5��"��?��u��Ji~�7t��?/����_�[/�ԙsp®�D����7��߁>(s�'ِ���͎��p%{۠�ohƍ���%Q{@���bI١��7�V�E�a���'���+��K�m��N�S7�T�o�弫��_�"+s���7�Ĳ���XN�e�2��������c��<��<$?
�<���b1mN�Uq&Է9u8�ȉ��O��h�KctZ�cג4f�t�̍�Gf�{FJn�f1��k�v�hF��A���c�qȳ�~���Y����_��n~4|멳Rc��y��p�	8�[������ T����"䧳O����P6p-q�P/r�Z���p�|��M��d��w�O����3����8,L�#�4NuO�\F��=��}#Mꈕ�w����P�"�zts�I��E����?É��1����w��E8�{r��}�T�?G�x��C��ViWЋ���K0XP>�c�2��Ǳ�����G*��ia}��w��r�
T��?@��?��D#����՘"���:&&@��z�����;���� �8�{S4I�0�!    +��$�6�p�}ងԱA�C:c���+���\�� o�#���}։�h�Lz�hp��Y4e��l�|lj �.v��4B�"���Q��!��𐠁������-^'�1��|fp����N��\"����|]O-�0�g=˴����.\`�Ft>4�Ĉd�_J�w�Y c2V���FE/�a� �
#���O�����~{�7u���?�D�y	������Y�g��:�
��']�_N�n��w.��1�o5�Dus�t��4�QxTc�T7p#����e��qכh~��c��2v��D�5p��Q-�rC;�)�4�f>�)c��
����s_p�v>�rvR-���"�y�{�\>s�Mٔ�[M���`o�� �tE��n�~�pQ���0�){��FI��_rpՖ�[�Fצd�$;MU�X�t�h~#[E�!S���Θ6�V��.����C.J���Qׅ��UbG��+�q�\��
%����]�d�)	��#8)1�q��c�bk���n��.���M�/�,�#\D����������>�?;�\��q�����,CL��yBǀ4�3^��d�&�:U@Eph�̀"���nZ�� �u[+q�b����~���W�J���7��ci�#,��4r照F�%.Fi�v���{�T�;��U�̾�$4��*����x����_^.��B�q�c,��myb71k$ݎ�����˘�a٩D�To�w<��S��GU-�K[�n�e�N���b邿���ۃ�xo�P~({LS]]g�I@S�s<R`X�rR.��k�ߔ����Gv$�6��w���h�\IM��̗Ǣ@�20���Ǡ}r	H�X��ڲoBԺ~:J��2Eo��I�<e0�Hi]��NK2I�j],Ē��uX�X8 ���pLO:�ۡ���SO����:���~�#Q�c�oܰ.�kߏ�R�s���!QN{pۘ��ʙ�{��V+&5�����i��I2<��`�m��7�N	#�<�L�cwW�c��PR~�<�1ͫ7;h����u�R�C8��u�T��bY`��� �1�h%�?� �K#qyG+q�MR��s�������wI�i2~a����s�����vF��[����ɍڮaL���^��T��@�8�?kFz\�	�+`��sf��/�=��A�#;������"YL���.)Gm��t�YK��Agn��m��o̚5c�����跈��0�=N���M�����y�T���ۑRu����6:���p��d��K�Ӌ}�T��P������h�*�=�{��3�Ϋ7��I5\�Zx�|	�0�+D���03�������X�����{	�\���]��~{�	L]���(��8��
��dx0٩^�"�M2M&��.-��4�!���k'8앛X,C��~�/��k�#Qi����F9p5��?��㱰��R�A��ZP�W�/_3��?N�s�{�p��� �1D��Z��\��٫���0�QM?�2%������:��(Yw��d�(��.2J�k�h��6��-�Z��y��hV%;�!;5{V���l���ۛ��e�o��ֱ]�ajhH����X"��o�1A��{�$���tu��N`�@ݚ�g�=��x�㫥̢3XE9�.xQ���>P�W��D��.�`��� 3yƾ�*9|��1B��GII�����A��a�>��axSObs\XvX�8dV�5k����C"4��l�X���Fs�c���.X�$����4�8�}���q������J>���d*L�>��8�}h24^�	����Z2�X�qL��[��8p�t2��+�5A��C�yκ	H��(E�&�^13#@�c���Z�͒�����ݸ.�C��d���w�3����R�m��[3��է�Jw�q<�E�lp�ip���GA]�R�����r�G�<qF�<�s���T�H|*��}�D��}�7٢������u��k,j챴�������"#u�F-_,����9����Cբ-To>����g_����)ۢ�� ����Q���d�:r��W��r�0^%�-�����s�K�� �����>q��#�Y�@\�6~�M�-�c���Q�00	h��=����.��ܥ�c����&��Nz�B��Z�UÝL���Aj�_�I�]�/V54�ѭh�a|��r��T�s�c�"����>XPP`0���������x�Lp����H�ZC�D;�-R����F�,2;b�~����c[�Dׂ�|wv~���n�t\�����t:]���u���Y��𪚭��4�A��ù�C���z�EJ��y4j(�`�"��J?
��F�B����#4�p$� B/���V�>��g�9/�J�XYԭ���d�l�&I���ZM-��8�E�'�@����X���IF�BG�}�5��3?g�
�XƐg�T��$���8?���I��݈��=�}�;[��Z��7���/�̾�o��#��o@{fo3�- ����X	z���˵��.p��$ �,�l7�
b�Ѡ�岺�Mο�������6l��2��z���N�>�.w�D궠���|Ʀ��2>�@���R�t=;�e�90*��=�`��LC��Sa�(s�/��48ڂ���P��7��!�P_ZF�hc��h%�ZX�U���12xL �(MpMG�𔬛��������:��g�\��m���Mx��ƹ�g/���D�ۡ��ō1WȂ4����I܃��Z�;Ϫ~c`!	E�xZ,�8 maU3@��#0��7'F� c��☟�/tq�Pw���:�9?V�^�����Vћ���,x��� ��A�+�3BS�բǝ������t�mؓ�uu�{��B�����ɂgtt���٩�K�P��~��7ˏ�	�l �ّ�E�+�h�"$�{�&=
��m�Y±rui55��V7�*]��4�o����^��o�(�����-��s�"(��4�ނ��@�ſ8 S��&���$Ba��ܬ�	t���4�
�o#dt9$�X&�6ZS����"�ށ;��X#z�P�t�}A���Ď�J��_��A�Т�i�c��e�����8t���1�s9�Nך�yyOEL�"�L��ܥź��#�3���Xc{=�Fp�(��P��И�q���0�K#���	M���#��ҋ��z"��ThM�\���������,�da�m$�&��c�ѕ"s�� t��	��q�񬡕uS�ڇ�)	�b��:��!HoM�'5+�s�k�)�/u:b0�0vJg��^'jj��4��N�8�����cv��n��$V�*��[pGҘ�c�M�sqHL SPd��%-J'ӱY�Ɣ��a���GQelDU8�k:pX�)&�/(RrE/2�N�5�U��BvM)2ش���Z@i���^/���}"�֮�]����Xv#���ny�!�6.Ӧ"�O�CSdN���AQ����Qs�[Q�L��ݥ�DQ�{�5E�2�5"��P�Ē�1jԭk��m��{�����X��:�%��b~�.����=5�t��ТD�zr�8�{�Q��A��Y�=��pp��Zp���͔k�rY���RO�zYӓ�QAI�}#J�WuqJ������t��6�7-��)�����6`�� X�8}�,��b{M*�������X��M]q���X�j.״���^�a��@Z�y��ו�����zt��^�;�VG{��i�$C��-rs��)��P%�SN+q��'�DZ�ψ���U�̼(�4c g�R�m��-���FfV�����݁Q�м.��!S	�����(�������`�"���P��1A=d_��)��=G��X/^��`�4�1P�
Jќn|9q���4�����K,�0��Ւk��$o�3��6BK'q@�o'���K�j���%��g�����h�B�Ț�8�	t�H�{��R&���,0�0�EqŶ&���N���J�҃4�+�y�/��J	߹�5d6�+t�O�3%�Nw��+L���[p�u�e�F�s\    �� �),~MBC�Dq p8뜆��m�ľӄ9)p���CX���:=>�R�Ԉ{�J���R]���C~r_��_��W�P-1���
���][�P��/�0�,R�>;������Q'���N���ͯ�He�B�O�}�M���Kq��]X�2_4�6�̊����p�,�G�C�胵&ܜ�5w���У/����p'TZ�8sj�et3����Uoo�n4�a�z�$('���*�mc�$���wp����9-<�B��K�/.����O���C�����V'|Z���{jj)}�
Z:��щf���wFP1��!(P�@��2�X��+�ǫ�pR��9c<�b�!v��:��;��d�9�:p=ԃ/��&r�C��K-]�(�@���d��[�i�v��\px���D�S�m�i|��e2gF���];�=�v�3��Z����h����hh�ƫ�p����N�o�E,���X5��,CMh�.t�Ƨ�i���b�N5�8.V�^�!!,7��r|��������>���ޚ�P8��Jl�cpĄ�A7hu�Bd�Yv�*�>�(��1��m�VR� �G�}EKk��Z�N���hmpsǰ��W��ͫ䁒��'cF��~8�<}��=���?0m�¼U9�],f+�U?�3Lv�PX>������
t���oF��p
,�ӓ�Xvj���yv�<�z��]�eʴd�D�F������L
���z�j(Mr�;�r������)zbi0��96���R���U��8.��u�{����O��P��H�:�#��bS�ς8�iZ�#�^׹��t|P��q�y�*��;L��y�4r�pgY���}eβ�����b���.}_�q8j�ݛCӃN�^�Xt!���hZ?()p0 ��T�<�&cK�ȲF�I�X74%F��&��D��䌨+�vĥe
�u�*���|s ��14�$��o
,���˿o�2;ߓa��-�3���@�b޸�pΘ�D��e�����b�7�#�ߜ�]3�!;u��N8�#�o>���_�͏+��+��7�+|��9i?�*���A���j�%�vU%{�����Gw�e��+�tn��i������8����|;[�]1��v���Ʉ�'�6�8+ҁȜ3K%�f�'X�;� /ge�IS��i����N�J��n�e�ݏJ�*���h��]g�?�?�M��?�5�D-+�!!I#�Z�~p�@�I�-=�p2=?a�m`h�������󽨱W��%�|��' �{�u6��C�K�B�+1���\�M�K7�W��!��<���y�ȉRĶ9�o���S��D�z�Ș�/�a>�k
�|r�S�h^.t�B&��)�ǟ#���L��J�����܅�9�!v�t�\3��y���MH��b���ӵZ�=�-�Mr���T��G���/n�dݯ����g�`zhk����q�%�����A���1ńH��Q�����|�~�_��ߍ�y��X���'� �?�@�!��
�����d��S�P��7�E:��%��0ՠ�͆�>�zY?n�'�}��b����Wi�}˵#��K�]�TY1�v�iۇL�vV���ڰ������ݟ��� �?=��m!���5
�9l����^.�{T���6�)�/[g���F��$U��3^�
G��H ��9OQYk*<>ȵ��?�vف�(�3��P��O�5�7��b��(~~(j�a� ���;N�&��$���F1�F�X���*d=�S<��l���r0����zˎ��ĉ¦*3��M��Xҏ�l��X��Ø!��r�>֜b�����`�jO�˝s�%YǶ�oV�\�����y�B���
8�u��0����f��0}W�V��vع���q#��ً��T-6���b�N�����
���`<�[;���c�8=�*��Cq�<����1hjN�sm��ɒ�?�}6����:C�#�;Z�����+�(��;�<��5���u���͔���Cۧ}��	K��T�d��~7k�F��1�IG�����]j�=��f"V(�#y[x��G5�F��#���ZD��~�K5�Q�W'<��إ��A2`��w��\H7[g��{���K>O����/G�\���}�,V���� ���y�퉲��y��kT�y���EtL���
�h���v(�����cN��m�����;E㟇�na�У��zb��)0ߎ/g�zf�U�#�&���{�j�Bm�&���8Ua'p�:8��" ��a�c��0�����z`a1�"�}=6Э+��aWc�M�W�H3�s9���@�G�#4��,>��O {8��R�݇F����J���/�D7m{��!+KO�~����Mp�����i����Hj�$��D]�"��&/-)��#h��E�~�� 8�,�d�m`�#O�p���%^���'p��ru��.�t�xٔN�N�Y1�h4���HN=�'{��ip"Vt����J�㑓$E��o�M�T�G�8_��>�C�
��������Ru�sZ*E���ڽ��)�=����|�S6u������KK�X�z���|r�GD�q�=,��x��|��S0�2���}>�p�����b��z��-J�ޏ��B�5�.�-��_�:g_�(%��}���b�oa�͢��N"eL� ����kY�L��A2�1�1f�y8���v��]��*u(�Ӻ.����4H����m��N0����'�Ĕ��	0�o��I~Zy6�+n���d����ВSh��'2��4z��'W����)�ˢ<������uu�����Џլ��G�hr�����g�Y��Q���~��$D�|=S��Л��)bQm��*^�X�ތ����l�qJ�-��o��`��~��ʴȚ�Ɓ#�fp&��y�;�^v���3
=����I)8����p�~��%����O��,G���+�E`s}0g�=�n�#+��5��q��p���{$n��.�����+��Ցi�����p�X����|J�$MU�9o��N7���
���*�rj��)0�ϋx
���D��'��}�:��dӫx�_oo2l�A�	5��K[�6z۔��mP�)1m+h�M/%�6yj�վ;<VG�[��o���V��'��Q�b�I�-����2�Wh������ _�Z�E{����Oa�6q�3rߑ'P��#�I�1�{��s	����e�C�@c�G+`�8����f|�9�����vE]�������ux���&1
a�(���z�Q �2��;Y��h��ŧ���yѷ#��Y�1u��U�CG\z��׶�&��2~��L�
�^��'ˉr#h,�%�q��5P�+ ��F���K?
G][{PF%.y ����+�z�Y|�f�~��E����>�����7��/�Ԑ��<q�	^)�ސܐu"tG�Zu?�f����A��E	Î3Հ	��X��>��K�XF�G���_q��ރKY�P�4Q�Y����S�>9N��[>��Yۖ3�@��F�+�.����s~�;p�*�IΗ�%�<R��Ŋ�����2F���l��?Q9)L��V�ż�d5p������@-|*�!u��C�u8dG������?)�8>
��`��P�b�8���VB�v��!>���(\+Hޗ�W`��ڗ��_OC�,(��e,�vSoc�A�OCbo
�6q�Znk��>4Ja[�C�~{|+���cjaXD�^Е�y=�����&��lA��M���gW'�G�L^%s$�c|�����W,d9Z��.��"?_ߕ��l�a����,����+��L�j�����?`�C����"��8�⛔�`�E�o��J�V���5b+��B�<�@S�%��|�N(����/����f�x��h:wT�(�#�
�R�q�ջa����uP�B V�.�[��o���Ѥ���͵Ж��4"i�����Ttgw��X;�0���p�c��N�Pj�V4&}�z�P4o��=�1���p�AEI~I�>�x�<� ���d�v�>(� q  ?�o7�������+*pZ�h�4�����>��[��i���A$�?47�E�~lE��7��F���yC/�s��>�9�Xs�Ζ��8�c�����*lD��8����p:����`����&�D�=�4M���M��[�#3�`G�'L�^	X�R�$aĲ&�k��[$�cf�x�q���� �w�:��,v%2V'���o��_ii@�(�f�h��Y"e1��h5H�癴Z��m��t=\���P���H��ݰ14�Q
e�]��X�	��f����������ū�*�?[�G�;J�؜x=2��%9bl.��'#</��jX�C ���5nf{�_��7 q��(�נ�I�;�6Ujb��Q�Dv�k�L�Ňd��`�ṧ�����#���Q��1��!(���6���\�(�w~�dP�w�?�K�/��1��9q�}��`�&����.;ra��R4�g��TP��QL�uׯ�b58�U=$�T�{"�>8+��U�'2�b���8��O�Rt���T?�Y������{ТBv�/ ������vuA�ϐ��8�ld��!/��|�J�K~2]ނc�ժ����\���A�P$zhQ��o���X���4DNock^ �<�"��r��q��<�i׮>�)E���:@������ʣPqx�[ѡ��sN㼗�D���|[�$��7Ì�����a��QG��ؿ9�_2��ɶ���4���d���c�	ѧT���@��H���.9����.�Z�\��:�F����U��0�n���No�X3F�@�3K;��TuZ�0Ⱥ�Mj�4�I���$���~��d0������i�#��������-��Ϸ9"+���������g�ǋ9[��{>�g0^1��ơ��_�g;2�)���$��m�`k���rv_n�*���i���{`��O9r��b��Orl���/����m>�qɺN��Dn�$Fc=M��%�M�ώA���}3PO8�v`�O���9�I�F�&4?'�>~{u�&�ܴ���Nb��,>���\���/kX���Ŝq$���!���R�@y>��)H}�F5�ruqq�D5������ï�[젚�0&%I@p�7���� =���o�wpE=�/p��"��y>g$�����.X)ңR`������s�{��]�*� /p�Tn��S;�A�8"���1�d���ݨ�!���iA牆�]h�u�)Ң��qh�k����6��"�d
�b綼U��B���2X{>�]u�.�{�dݾ �k`�\ ��&�>��� P��� u���k.J�!3�űK�/z�Њ�I�,IU��������"� SFc�z���Uodޣ�4~	߃ч��|�Z��ٔ�S!������^ʣh�G
���CdM~z|�Q����	���Ĵ�wt����2��;����}or�cpTUevu�S�(��ÿ徕ƎR,yo�wE�"%��b�">��@ⷫ� ��������a]�ChW����p��������uX=�I�c�a���2��>��qb����E����볓L�b��@
�m���-�i��[P�)�ZqR���+�	�#&@��5[������ع�O�WW�'�h{):�1&�T+~������_�\���.1��6��\�d#�xӶ���΅�"���%��� �k�(�X`]��� 4�'n2d�&��;�#3����@S�cZjZ�P ����i	���Ć�h�����}o0M]�,�`�#�6�T�H���G�L����ʃ� �eo��.�����MՒ,$�z���^��٪|_����{�����q��[����$�!2] _��������><F�p̫��1'��C����W�1�X*~xv�\Θ�ߑ�5I���^�}!ce�]��:����iiH�N�^OG�h^h##���S7ʐb5�Tu���#�N�˝J�J�Y~9��&����·��EcǷ$L5&��l�!C�i"���XE������/k�r�8L"]�3c �]G_7��=0T,�ܚ1��8�-;J�T����������"�!�t�Z�#2��W��&������$E���'��5�=R%�����۸	妌��q��AU7 ��H��:h�&7�i̖� 4S�0i���8S$���0	8�?O����v��?�}�s�>��&9��o7V�`��Y~�N��K*`}�fyl���1�tq{q|ʡyL��ӒIF%�K� ��q>����@sG�z���9%7 �
h���Ш9��������_{wQ��^�!�_��	w����&�(��`c����F3P��h�a��ҍ ȶ~{b�rSdz�V�#������$�E�&�ɠif ���{�(5�X����=�>x����r��o���\���&�Kx�}C����U�`1s&�Us9D�b�W�]p<&-$F#X�E�ڑO��ux5`��\ �8,Z����F-��J��h$����|c9	ڂ�|���+�5�ث�|Z��f����gG�`�&��+b
7k �pcִ��� �G�I��Ȅ�D����"�<ܹ�MO��h:�tI��������T�V�I�����)zU���y)��X�!Y��V�>)=YwQ�4�ke}tux--=T:
3�~A>	\�8���� L��^��Ȣ��%����������Q�m�"�Znp�W�6�ç�^j=�4��,��X}u��0.���~���.��dHE�ԯ��r}�ϰ��}F��*UQ�T
�z���%�7�\.���`��T�>f�PxI<��zj��Ƴ�#���dԷ+EQOA�1s�9��T㠅�ˇ�p+�\2�q�&�~��dV�����F{���1,��ϓ�j��(�ݼ�85Z%����/�`"��U9���Γ�}0R�X|�m���V��n���ġLݺ�#�,ʈd}���`َ9�ۘ�գ�f��PC��>j�Ra&X޾<pG��ۙm1��%(��vv@�\���
�Y�M��4&G���)b���'E@���'vW�7��<��� ����w\�Z|�	<�{ 1u<mGJ���ݰ0Z;�\?�o=�Û���5.�)�E[c�����?��?�?m���      m   <  x�uWMs�=C��=�E`>y�2+�чS�T���@C�C��Y��ڔ�{J����503�����6E4�����ɖe+&�#c~΅��_���u�Ă���s&&�"vaM�u�W�M�'���<I�|W��LD,�V�.�#����?�|��z�WZ��x���s\���'մLJ�DlN?gɷ�W�n���y�vQ
�/�(�,J��L�U�l�S0�ѽ�ڮuӼ�վѪd�v~��$��3�[��k�𱩔5�Kc������.\!x���m��X����sv�n�ٹ)#�!��@ �G ��!��5���k����l{�;A%�9����Ő1|~�����<\-�$��HПp���n�nU+���[�H��%��p�V�b�+�o�Wm���ο�*�Y>&\;��}�$�@��A����1{p��=�� 9�IF3Tc,����V�:׿����ߑ/b�b�?e��v�
�{9h#�Y�}���������#x�qQ�m�{ =gK�X�<;�L�uF�����%9��`Zuf��r�
W�$3mћ��aDp���qcot�(3�y�SKW��\i�+�y����U��}���c7���U���~c�*���)P��i<�{��]�m�avm_��^7���-�/�)�H�㱕d�zk��9��TL�cxR��o�R���[ۙByA	�Q�P��R��V�ŀ�]�/����߹�R����;���(�1���Z�-%����.���׆Dfg����D�1��f�M��[WU�ӿ[�Krb:0;�G����}:��-$��m����M2!���Րs2%�1ijs����j�mۡ���}�z�!^��3Zշ��@geG#hUy������I�M7R'����6���o�����5��_�5е������ȁ�3�&�Iv��B5{p_W�`:�TW$�<�"h���I*����r!����1[��߽���Q���!�@���IتӺ֯�F����~�,el�*�FS�45�<U<1�ӓ 3�SϪ�z	B~�M)�(����(��z���Y�
�4"4�)���kt�j���n��^Q�=�l���(� �G�}�[�[�%1�^E>�jG#�c����-�N�?YPǖ|Y�)��R7ᚓ)�齘�	˧)
�\��j�0�-���n&���ķZ�I��q���c����w�t��� }A���)%�u�4<������ a�Q󋅟����UUiM]�"�m�!!ʇ�)[�u����?��>�J��) ����-Ԉ�sh�8p��O�0N�$	�
4���,�@����z1���E����+�у�?�z�����J��F_{��4��d�C"��>�]�������L*e?a}��m%�4����4Bҩ>����!!Xރ����� ��rP�H��I�Z?��3��6��S�{Ofa1S	�?��;�΋�ʹ�4�ǵv��$;<�L���/��Z���AMN�aZ���@��'�L����ҵ{�JL�Ns��j��R�\e5�w�8����Nz�,�{o�Y¨�6�u�0� ��� �qz��K��;l��7�q�p^$SM�������Fܞ�?~��@v0��q�8Y�d�u=K���d��,o5F7/fQ>�(b?����6����Z�gjX�iO;i�����zxYi|�����7i���e�D��C���כ�(��ȼB���ޓԆw��L�)_1�'a1��'��=T�����S��k�s����Q}�V���:=A���W$���D��Osl6�O~�l�&���N�G|�76��jZ��9֖�n��ۑPѰ�x(�Ǿ[�����o
���+�`������߯��1��f�>ܗ/��5��ye�P���$�t�x��hg+�5:T5'�^��������,f_m5���|H$�G1N6�7ښ����FF�Y��ј�~#��	�Ҩ�V�f{x;�5�dZ��Y4�l��,cS�jVe��PDP�j`+[�ï���'��l���X0A��A��ܝ"��2O&"��/�����@&�      n   ,   x�3�tM,.I-��2�O���9��J2@L���R3F��� _�!      o   C  x�U�ˎ�0E��W�
�l��&�Z4m0`P��Vad1���ӯ/e��.���%o�w7�=&^1�%����Y)��a:���B�-�p�);X�q��pt1
V����[H�$l^��b?#�T/��@�4��S�F��SA��4��p�����S�T�6#c����Osg�w���Ꟙ> ��k�a�B��P��J5��Og*]@�����;�p>yK��NsY����L#���2�Z�|�4l��>
�pN���":��1\�=eT�dR��5�b-����hO�t�#Q��E˖ix�㹄+&��ox�ӿ��V����@]���b�|��,�0����{�.�M�%\�i%�
���^�P겛F*zx����HL���[j����������tHe���hc�8e���8����{{D�Z�rM.Җ�|�ҍ�
lv*�h���e�>�4������%J`XǺ�-&;`�;'���iW�Jt����h8�z�y,U�#K��F�@r��#�뭥�)�/q�S���S_Z��L���.j���[����l�,]�dX1�����-��F�ì9��yn�ח���A��      p   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      q   Z  x�E�ݎ�@���O�l�ǿK�3#��DY7{�=��'�8���[H#		�WEq�N���b���aԥ.n�̉�
Ri"-�)I�����ȉI����n��U�Si) M� T�ҬP�M	I��Z����a�+ve�c�Ԣ9��Z��P}����A�avFx�Ң`x�;^��GJ{	:�bI���2j8���
�gQ��GTUB*a�{<F$���(����J{4Ū�j��V\֗�t����c�.�܋�;��1�#~�Sw"�V1Y ^�=�.1cX^^�k�8�=�"/őI�Q}�4k�j�8�蘨1���%o;	�;WM0����u�5޵�sgH����H��h֝�fdG�o���p��_��l�l��{��k�oH^-u�4�?"WHb[ĻӃ�'$��#iZ�L+2�~i���Ȃ�����ao��
�GS���6��?]�x�T�H7V�o\Js��Y��oA�;�M�
>��ݧMd��m3�^��
�]���@�Î7nα������f�~���f%ޭ!�{��d����)������ΐ12Bkj-��ϑ�{�H���A��	�+i�G=c�M���C[���`�U�T�     