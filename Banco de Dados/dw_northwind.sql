PGDMP                     	    z         	   northwind    14.0    14.0 W    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25787 	   northwind    DATABASE     i   CREATE DATABASE northwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE northwind;
                postgres    false                        2615    33395    data_warehouse    SCHEMA        CREATE SCHEMA data_warehouse;
    DROP SCHEMA data_warehouse;
                postgres    false            �            1259    33635    dim_cliente    TABLE     �   CREATE TABLE data_warehouse.dim_cliente (
    id character varying NOT NULL,
    nome_cliente character varying,
    cidade_cliente character varying,
    pais_cliente character varying
);
 '   DROP TABLE data_warehouse.dim_cliente;
       data_warehouse         heap    postgres    false    4            �            1259    33576    dim_fornecedor    TABLE     �   CREATE TABLE data_warehouse.dim_fornecedor (
    id integer NOT NULL,
    nome_fornecedor character varying,
    pais_fornecedor character varying
);
 *   DROP TABLE data_warehouse.dim_fornecedor;
       data_warehouse         heap    postgres    false    4            �            1259    33558    dim_funcionario    TABLE     q   CREATE TABLE data_warehouse.dim_funcionario (
    id integer NOT NULL,
    nome_funcionario character varying
);
 +   DROP TABLE data_warehouse.dim_funcionario;
       data_warehouse         heap    postgres    false    4            �            1259    33567    dim_produto    TABLE     �   CREATE TABLE data_warehouse.dim_produto (
    id integer NOT NULL,
    nome_produto character varying,
    produto_categoria character varying
);
 '   DROP TABLE data_warehouse.dim_produto;
       data_warehouse         heap    postgres    false    4            �            1259    33594 	   dim_tempo    TABLE     �   CREATE TABLE data_warehouse.dim_tempo (
    id integer NOT NULL,
    data date,
    ano integer,
    mes_numero integer,
    mes_nome character varying,
    mes_abrev character varying,
    dia integer
);
 %   DROP TABLE data_warehouse.dim_tempo;
       data_warehouse         heap    postgres    false    4            �            1259    33397 	   dm_vendas    TABLE     	  CREATE TABLE data_warehouse.dm_vendas (
    id integer NOT NULL,
    primeiro_nome character varying,
    produto character varying,
    categoria character varying,
    fornecedor character varying,
    transportadora character varying,
    valor numeric(18,2)
);
 %   DROP TABLE data_warehouse.dm_vendas;
       data_warehouse         heap    postgres    false    4            �            1259    33644    fato_pedido    TABLE     G  CREATE TABLE data_warehouse.fato_pedido (
    id integer NOT NULL,
    id_tempo integer,
    id_cliente character varying,
    id_produto integer,
    id_fornecedor integer,
    id_funcionario integer,
    preco_unitario numeric(18,2),
    quantidade numeric(18,2),
    desconto numeric(18,2),
    valor_total numeric(18,2)
);
 '   DROP TABLE data_warehouse.fato_pedido;
       data_warehouse         heap    postgres    false    4            �            1259    33643    fato_pedido_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.fato_pedido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE data_warehouse.fato_pedido_id_seq;
       data_warehouse          postgres    false    231    4            �           0    0    fato_pedido_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE data_warehouse.fato_pedido_id_seq OWNED BY data_warehouse.fato_pedido.id;
          data_warehouse          postgres    false    230            �            1259    33396    vendas_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.vendas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE data_warehouse.vendas_id_seq;
       data_warehouse          postgres    false    4    223            �           0    0    vendas_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE data_warehouse.vendas_id_seq OWNED BY data_warehouse.dm_vendas.id;
          data_warehouse          postgres    false    222            �            1259    25788 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id smallint NOT NULL,
    nome character varying(15) NOT NULL,
    descricao text,
    imagem bytea
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    25803    clientes    TABLE     �  CREATE TABLE public.clientes (
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
       public         heap    postgres    false            �            1259    25835    fornecedores    TABLE     �  CREATE TABLE public.fornecedores (
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
       public         heap    postgres    false            �            1259    25808    funcionarios    TABLE     q  CREATE TABLE public.funcionarios (
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
       public         heap    postgres    false            �            1259    25816    pedido_detalhe    TABLE     �   CREATE TABLE public.pedido_detalhe (
    id_pedido smallint NOT NULL,
    id_produto smallint NOT NULL,
    preco_unitario real NOT NULL,
    quantidade smallint NOT NULL,
    desconto real NOT NULL
);
 "   DROP TABLE public.pedido_detalhe;
       public         heap    postgres    false            �            1259    25819    pedidos    TABLE     �  CREATE TABLE public.pedidos (
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
       public         heap    postgres    false            �            1259    25824    produtos    TABLE     f  CREATE TABLE public.produtos (
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
       public         heap    postgres    false            �            1259    25832    transportadoras    TABLE     �   CREATE TABLE public.transportadoras (
    id smallint NOT NULL,
    nome character varying(40) NOT NULL,
    telefone character varying(24)
);
 #   DROP TABLE public.transportadoras;
       public         heap    postgres    false            �            1259    33405 	   vw_vendas    VIEW     C  CREATE VIEW data_warehouse.vw_vendas AS
 SELECT f.primeiro_nome,
    pr.nome AS produto,
    ct.nome AS categoria,
    fr.nome_contato AS fornecedor,
    t.nome AS transportadora,
    (sum(((pd.preco_unitario * (pd.quantidade)::double precision) - pd.desconto)))::numeric(18,2) AS valor
   FROM (((((((public.pedidos p
     JOIN public.pedido_detalhe pd ON ((pd.id_pedido = p.id)))
     JOIN public.funcionarios f ON ((f.id = p.id_funcionario)))
     JOIN public.transportadoras t ON ((t.id = p.id_transportadora)))
     JOIN public.clientes c ON ((c.id = p.id_cliente)))
     JOIN public.produtos pr ON ((pr.id = pd.id_produto)))
     JOIN public.categorias ct ON ((ct.id = pr.id_categoria)))
     JOIN public.fornecedores fr ON ((fr.id = pr.id_transportadora)))
  GROUP BY f.primeiro_nome, pr.nome, ct.nome, fr.nome_contato, t.nome;
 $   DROP VIEW data_warehouse.vw_vendas;
       data_warehouse          postgres    false    216    219    219    218    218    216    216    216    215    215    215    215    214    214    214    214    214    212    212    211    210    210    4            �            1259    25813    empregado_territorios    TABLE     �   CREATE TABLE public.empregado_territorios (
    id_empregado smallint NOT NULL,
    id_territorio character varying(20) NOT NULL
);
 )   DROP TABLE public.empregado_territorios;
       public         heap    postgres    false            �            1259    25827    regiao    TABLE     ^   CREATE TABLE public.regiao (
    id smallint NOT NULL,
    nome character varying NOT NULL
);
    DROP TABLE public.regiao;
       public         heap    postgres    false            �            1259    25840    territorios    TABLE     �   CREATE TABLE public.territorios (
    id character varying(20) NOT NULL,
    nome character varying NOT NULL,
    id_regiao smallint NOT NULL
);
    DROP TABLE public.territorios;
       public         heap    postgres    false            �            1259    25845 
   us_estados    TABLE     �   CREATE TABLE public.us_estados (
    id smallint NOT NULL,
    nome character varying(100),
    sigla character varying(2),
    regiao character varying(50)
);
    DROP TABLE public.us_estados;
       public         heap    postgres    false            �           2604    33400    dm_vendas id    DEFAULT     y   ALTER TABLE ONLY data_warehouse.dm_vendas ALTER COLUMN id SET DEFAULT nextval('data_warehouse.vendas_id_seq'::regclass);
 C   ALTER TABLE data_warehouse.dm_vendas ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    223    222    223            �           2604    33647    fato_pedido id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.fato_pedido ALTER COLUMN id SET DEFAULT nextval('data_warehouse.fato_pedido_id_seq'::regclass);
 E   ALTER TABLE data_warehouse.fato_pedido ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    231    230    231            �          0    33635    dim_cliente 
   TABLE DATA           ]   COPY data_warehouse.dim_cliente (id, nome_cliente, cidade_cliente, pais_cliente) FROM stdin;
    data_warehouse          postgres    false    229   dw       ~          0    33576    dim_fornecedor 
   TABLE DATA           V   COPY data_warehouse.dim_fornecedor (id, nome_fornecedor, pais_fornecedor) FROM stdin;
    data_warehouse          postgres    false    227   �w       |          0    33558    dim_funcionario 
   TABLE DATA           G   COPY data_warehouse.dim_funcionario (id, nome_funcionario) FROM stdin;
    data_warehouse          postgres    false    225   �w       }          0    33567    dim_produto 
   TABLE DATA           R   COPY data_warehouse.dim_produto (id, nome_produto, produto_categoria) FROM stdin;
    data_warehouse          postgres    false    226   �w                 0    33594 	   dim_tempo 
   TABLE DATA           `   COPY data_warehouse.dim_tempo (id, data, ano, mes_numero, mes_nome, mes_abrev, dia) FROM stdin;
    data_warehouse          postgres    false    228   �w       {          0    33397 	   dm_vendas 
   TABLE DATA           u   COPY data_warehouse.dm_vendas (id, primeiro_nome, produto, categoria, fornecedor, transportadora, valor) FROM stdin;
    data_warehouse          postgres    false    223   K"      �          0    33644    fato_pedido 
   TABLE DATA           �   COPY data_warehouse.fato_pedido (id, id_tempo, id_cliente, id_produto, id_fornecedor, id_funcionario, preco_unitario, quantidade, desconto, valor_total) FROM stdin;
    data_warehouse          postgres    false    231   ��      n          0    25788 
   categorias 
   TABLE DATA           A   COPY public.categorias (id, nome, descricao, imagem) FROM stdin;
    public          postgres    false    210   φ      o          0    25803    clientes 
   TABLE DATA           �   COPY public.clientes (id, nome_empresa, nome_contato, titulo_contato, endereco, cidade, regiao, cep, pais, telefone, fax) FROM stdin;
    public          postgres    false    211   Շ      q          0    25813    empregado_territorios 
   TABLE DATA           L   COPY public.empregado_territorios (id_empregado, id_territorio) FROM stdin;
    public          postgres    false    213   �      w          0    25835    fornecedores 
   TABLE DATA           �   COPY public.fornecedores (id, nome_empresa, nome_contato, titulo_contato, endereco, cidade, regiao, cep, pais, telefone, fax, site) FROM stdin;
    public          postgres    false    219   Ɵ      p          0    25808    funcionarios 
   TABLE DATA           �   COPY public.funcionarios (id, ultimo_nome, primeiro_nome, titulo, apelido, data_nascimento, data_contratacao, endereco, cidade, regiao, cep, pais, telefone, ddd, foto, observacoes, relatorios_para, caminho_foto) FROM stdin;
    public          postgres    false    212   ��      r          0    25816    pedido_detalhe 
   TABLE DATA           e   COPY public.pedido_detalhe (id_pedido, id_produto, preco_unitario, quantidade, desconto) FROM stdin;
    public          postgres    false    214   [�      s          0    25819    pedidos 
   TABLE DATA           �   COPY public.pedidos (id, id_cliente, id_funcionario, data_pedido, data_requerida, data_enviado, id_transportadora, frete, nome_navio, endereco_navio, cidade_navio, regiao_navio, cep_navio, pais_navio) FROM stdin;
    public          postgres    false    215   :�      t          0    25824    produtos 
   TABLE DATA           �   COPY public.produtos (id, nome, id_transportadora, id_categoria, quantidade, preco_unitario, unidades_em_estoque, unidades_em_ordem, nivel_reabastecimento, interrmpido) FROM stdin;
    public          postgres    false    216   �#      u          0    25827    regiao 
   TABLE DATA           *   COPY public.regiao (id, nome) FROM stdin;
    public          postgres    false    217   ,      x          0    25840    territorios 
   TABLE DATA           :   COPY public.territorios (id, nome, id_regiao) FROM stdin;
    public          postgres    false    220   V,      v          0    25832    transportadoras 
   TABLE DATA           =   COPY public.transportadoras (id, nome, telefone) FROM stdin;
    public          postgres    false    218   �.      y          0    25845 
   us_estados 
   TABLE DATA           =   COPY public.us_estados (id, nome, sigla, regiao) FROM stdin;
    public          postgres    false    221   K/      �           0    0    fato_pedido_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('data_warehouse.fato_pedido_id_seq', 1, false);
          data_warehouse          postgres    false    230            �           0    0    vendas_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('data_warehouse.vendas_id_seq', 2394, true);
          data_warehouse          postgres    false    222            �           2606    33641    dim_cliente dim_cliente_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY data_warehouse.dim_cliente
    ADD CONSTRAINT dim_cliente_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY data_warehouse.dim_cliente DROP CONSTRAINT dim_cliente_pkey;
       data_warehouse            postgres    false    229            �           2606    33583 "   dim_fornecedor dim_fornecedor_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY data_warehouse.dim_fornecedor
    ADD CONSTRAINT dim_fornecedor_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY data_warehouse.dim_fornecedor DROP CONSTRAINT dim_fornecedor_pkey;
       data_warehouse            postgres    false    227            �           2606    33565 $   dim_funcionario dim_funcionario_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY data_warehouse.dim_funcionario
    ADD CONSTRAINT dim_funcionario_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY data_warehouse.dim_funcionario DROP CONSTRAINT dim_funcionario_pkey;
       data_warehouse            postgres    false    225            �           2606    33574    dim_produto dim_produto_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY data_warehouse.dim_produto
    ADD CONSTRAINT dim_produto_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY data_warehouse.dim_produto DROP CONSTRAINT dim_produto_pkey;
       data_warehouse            postgres    false    226            �           2606    33601    dim_tempo dim_tempo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY data_warehouse.dim_tempo
    ADD CONSTRAINT dim_tempo_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY data_warehouse.dim_tempo DROP CONSTRAINT dim_tempo_pkey;
       data_warehouse            postgres    false    228            �           2606    33651    fato_pedido fato_pedido_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY data_warehouse.fato_pedido
    ADD CONSTRAINT fato_pedido_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY data_warehouse.fato_pedido DROP CONSTRAINT fato_pedido_pkey;
       data_warehouse            postgres    false    231            �           2606    33404    dm_vendas vendas_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY data_warehouse.dm_vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY data_warehouse.dm_vendas DROP CONSTRAINT vendas_pkey;
       data_warehouse            postgres    false    223            �           2606    25849    categorias pk_categories 
   CONSTRAINT     V   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT pk_categories PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.categorias DROP CONSTRAINT pk_categories;
       public            postgres    false    210            �           2606    25855    clientes pk_customers 
   CONSTRAINT     S   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_customers PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.clientes DROP CONSTRAINT pk_customers;
       public            postgres    false    211            �           2606    25859 -   empregado_territorios pk_employee_territories 
   CONSTRAINT     �   ALTER TABLE ONLY public.empregado_territorios
    ADD CONSTRAINT pk_employee_territories PRIMARY KEY (id_empregado, id_territorio);
 W   ALTER TABLE ONLY public.empregado_territorios DROP CONSTRAINT pk_employee_territories;
       public            postgres    false    213    213            �           2606    25857    funcionarios pk_employees 
   CONSTRAINT     W   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT pk_employees PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT pk_employees;
       public            postgres    false    212            �           2606    25861    pedido_detalhe pk_order_details 
   CONSTRAINT     p   ALTER TABLE ONLY public.pedido_detalhe
    ADD CONSTRAINT pk_order_details PRIMARY KEY (id_pedido, id_produto);
 I   ALTER TABLE ONLY public.pedido_detalhe DROP CONSTRAINT pk_order_details;
       public            postgres    false    214    214            �           2606    25863    pedidos pk_orders 
   CONSTRAINT     O   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_orders PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_orders;
       public            postgres    false    215            �           2606    25865    produtos pk_products 
   CONSTRAINT     R   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT pk_products PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produtos DROP CONSTRAINT pk_products;
       public            postgres    false    216            �           2606    25867    regiao pk_region 
   CONSTRAINT     N   ALTER TABLE ONLY public.regiao
    ADD CONSTRAINT pk_region PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.regiao DROP CONSTRAINT pk_region;
       public            postgres    false    217            �           2606    25869    transportadoras pk_shippers 
   CONSTRAINT     Y   ALTER TABLE ONLY public.transportadoras
    ADD CONSTRAINT pk_shippers PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.transportadoras DROP CONSTRAINT pk_shippers;
       public            postgres    false    218            �           2606    25871    fornecedores pk_suppliers 
   CONSTRAINT     W   ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT pk_suppliers PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.fornecedores DROP CONSTRAINT pk_suppliers;
       public            postgres    false    219            �           2606    25873    territorios pk_territories 
   CONSTRAINT     X   ALTER TABLE ONLY public.territorios
    ADD CONSTRAINT pk_territories PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.territorios DROP CONSTRAINT pk_territories;
       public            postgres    false    220            �           2606    25875    us_estados pk_usstates 
   CONSTRAINT     T   ALTER TABLE ONLY public.us_estados
    ADD CONSTRAINT pk_usstates PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.us_estados DROP CONSTRAINT pk_usstates;
       public            postgres    false    221            �           2606    33672 '   fato_pedido fato_pedido_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_pedido
    ADD CONSTRAINT fato_pedido_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES data_warehouse.dim_cliente(id) NOT VALID;
 Y   ALTER TABLE ONLY data_warehouse.fato_pedido DROP CONSTRAINT fato_pedido_id_cliente_fkey;
       data_warehouse          postgres    false    229    3279    231            �           2606    33652 *   fato_pedido fato_pedido_id_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_pedido
    ADD CONSTRAINT fato_pedido_id_fornecedor_fkey FOREIGN KEY (id_fornecedor) REFERENCES data_warehouse.dim_fornecedor(id);
 \   ALTER TABLE ONLY data_warehouse.fato_pedido DROP CONSTRAINT fato_pedido_id_fornecedor_fkey;
       data_warehouse          postgres    false    231    227    3275            �           2606    33657 +   fato_pedido fato_pedido_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_pedido
    ADD CONSTRAINT fato_pedido_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES data_warehouse.dim_funcionario(id);
 ]   ALTER TABLE ONLY data_warehouse.fato_pedido DROP CONSTRAINT fato_pedido_id_funcionario_fkey;
       data_warehouse          postgres    false    225    3271    231            �           2606    33662 '   fato_pedido fato_pedido_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_pedido
    ADD CONSTRAINT fato_pedido_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES data_warehouse.dim_produto(id);
 Y   ALTER TABLE ONLY data_warehouse.fato_pedido DROP CONSTRAINT fato_pedido_id_produto_fkey;
       data_warehouse          postgres    false    3273    231    226            �           2606    33667 %   fato_pedido fato_pedido_id_tempo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_pedido
    ADD CONSTRAINT fato_pedido_id_tempo_fkey FOREIGN KEY (id_tempo) REFERENCES data_warehouse.dim_tempo(id);
 W   ALTER TABLE ONLY data_warehouse.fato_pedido DROP CONSTRAINT fato_pedido_id_tempo_fkey;
       data_warehouse          postgres    false    3277    228    231            �           2606    25921 7   empregado_territorios fk_employee_territories_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.empregado_territorios
    ADD CONSTRAINT fk_employee_territories_employees FOREIGN KEY (id_empregado) REFERENCES public.funcionarios(id);
 a   ALTER TABLE ONLY public.empregado_territorios DROP CONSTRAINT fk_employee_territories_employees;
       public          postgres    false    3249    212    213            �           2606    25916 9   empregado_territorios fk_employee_territories_territories    FK CONSTRAINT     �   ALTER TABLE ONLY public.empregado_territorios
    ADD CONSTRAINT fk_employee_territories_territories FOREIGN KEY (id_territorio) REFERENCES public.territorios(id);
 c   ALTER TABLE ONLY public.empregado_territorios DROP CONSTRAINT fk_employee_territories_territories;
       public          postgres    false    213    3265    220            �           2606    25936 #   funcionarios fk_employees_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT fk_employees_employees FOREIGN KEY (relatorios_para) REFERENCES public.funcionarios(id);
 M   ALTER TABLE ONLY public.funcionarios DROP CONSTRAINT fk_employees_employees;
       public          postgres    false    212    212    3249            �           2606    25896 &   pedido_detalhe fk_order_details_orders    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_detalhe
    ADD CONSTRAINT fk_order_details_orders FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id);
 P   ALTER TABLE ONLY public.pedido_detalhe DROP CONSTRAINT fk_order_details_orders;
       public          postgres    false    215    214    3255            �           2606    25891 (   pedido_detalhe fk_order_details_products    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_detalhe
    ADD CONSTRAINT fk_order_details_products FOREIGN KEY (id_produto) REFERENCES public.produtos(id);
 R   ALTER TABLE ONLY public.pedido_detalhe DROP CONSTRAINT fk_order_details_products;
       public          postgres    false    214    3257    216            �           2606    25876    pedidos fk_orders_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (id_cliente) REFERENCES public.clientes(id);
 E   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_orders_customers;
       public          postgres    false    215    3247    211            �           2606    25881    pedidos fk_orders_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (id_funcionario) REFERENCES public.funcionarios(id);
 E   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_orders_employees;
       public          postgres    false    215    3249    212            �           2606    25886    pedidos fk_orders_shippers    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_orders_shippers FOREIGN KEY (id_transportadora) REFERENCES public.transportadoras(id);
 D   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_orders_shippers;
       public          postgres    false    215    3261    218            �           2606    25901    produtos fk_products_categories    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT fk_products_categories FOREIGN KEY (id_categoria) REFERENCES public.categorias(id);
 I   ALTER TABLE ONLY public.produtos DROP CONSTRAINT fk_products_categories;
       public          postgres    false    210    3245    216            �           2606    25906    produtos fk_products_suppliers    FK CONSTRAINT     �   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT fk_products_suppliers FOREIGN KEY (id_transportadora) REFERENCES public.fornecedores(id);
 H   ALTER TABLE ONLY public.produtos DROP CONSTRAINT fk_products_suppliers;
       public          postgres    false    219    216    3263            �           2606    25911 !   territorios fk_territories_region    FK CONSTRAINT     �   ALTER TABLE ONLY public.territorios
    ADD CONSTRAINT fk_territories_region FOREIGN KEY (id_regiao) REFERENCES public.regiao(id);
 K   ALTER TABLE ONLY public.territorios DROP CONSTRAINT fk_territories_region;
       public          postgres    false    220    217    3259            �      x������ � �      ~      x������ � �      |      x������ � �      }      x������ � �            x�t�]��ʎ��|�\���pٮFwP���	y`��E��bP@�ރ{�
fJJm��"��������?�����/��_��?�]��� �J���"+C���ER��߳�0������?.�Q�u�X|�jΤ����~�r�8����c����_�����R�?�3�h�Bi�BL���Z̀�#�?�N]���ͩ���=��?"�q:��w��o��*���������w�/�P��\� �W
��8��,�_��IR�F�#�'���, %�(��Q�+s�~ʪeN�2�U�B�F��_������������������va�;�5��1�H>�����D�9�ozN��wo�I���;�I���N�%�rߘiO@�k���7��v_�9�߯��ߟa���������E���j��'�������Z��\�k:p~y^�)�C�o�}̎���/�����.����Q|��c�O]�ט��� (���#W��g]�$q�W#�N�5!��|�q������o�?w浈�����Ga�(��J��\|Z�Q��Q�E�gc��\���*/DV)�$_Y.w��U���H�Y������?,��O�S����_��������72�JIɕ��*3YE�(7 ��;^��?/~�����jy(�B�jy(�B���cqK�_k���w�������������?��?��oȃq�������(�Fw8��F�����x�a����; {@�J�T<"��ÖNЅz�������%���rA��<��Kd��.uǫ��xrI-m��fJI��K�����T��&��K.|�N�咶��#��j�ۏ�]E{(������]���iw�JN���?���n�>֢{��-6r����}���r�F�1��9��>b�]��W�*7`ڥe�h��������A.����)���[�X��C.I!�k[��%��b�U+�j��#��_!_�?��F!����}mK!_�c�t���\��>���(C)#���W�SH>�����2辦�x���o��v���o��Z
u�P5��͌�a0q7(�􏞮D������\~�J��TE	�|��c�e��>��|�>��GL�c��>b�}�}��1}5�XM��G�������, �!��25aꟋx!�����r�O1��e�N�����2D��}@��CFl�:Q4nʷ��~|}yy�����A�r�,%�������l�k %�}�� �	!O�ߧ�]���|?ic���16�/]�����t�q��[R>��svZ8�r_0�V:��}oU��kd�UΟ964��k?y/�m��~D���H���h���;�{��c��Ҍ�P�����?���������ze���rl\��+�&Y��q��o޷ٜ|���$ʊ���T�*vy����r#.[q�
�*�P������?������^�l��l�E\+�s�Bx,(�q#qC��s.#���|7@�:�'��L(ߐ�G���m:Q;	��}���G��jӋ�h���� N�s�\��ϼ?�Bl�HBH�⼞���������!�w��������WZV�l��=@��c)����/��R�G���_/&�7e_o�����V��|�k�{-����_,�/���Wd��p�����m�K�\
��GD)��JS��|�}'�K7Ϻׂ�8_J>��F�K�ԃ.@%��@�5Z��L.�M�no��p�{��c-�@M,F��/��WL�<�珠"~��/�4<;���R�[+Z�|%�XIjI���-%u����_�^�:�*�RE�l7���=���}\Ž~��
o�h�ʽLa,C�2�-.ŷ���òN�:��ò��:%]����j�y��z�vJ� ���6���}O*��o;�Lnkg��3�|��w��V�h���0v���C�L_��U�>L�*��B�2��d��mX�p�Ͽz5�q�̡$Y/�_�]!��@PB���8�Ĺ�Qe�K�H��\�I �B��лjX�ҷ�G�Տ
�����[���8���my9	�>�8:~'��_�͟�� A�����
Yc λ�V�vB��?A4�vigr������Y���
��j9����Y��֑g�ɂ�x�i��:$ǳӈ�ʗ��F��kݻ�f��D�Yi�-��/U��J"�R-@�ǻ��DЍ_��{S�J�ۺۉS��Ц�_.���z�[� �thT]�>�D��9��՞�UJ��z����fG�-K��®�������(J���MmJ�wB!h�������)E'�����pZT��ݩ��#��m'�Z����	��F/}[���#B'(!$D��8�w���\c����"�0WD(C�̵գ3F�R�,lG������&��ӌ/��Bi{a��΀7�����!�!��M�]QNi�`ۖ��)�ʝ{m��J��ސ��&R���ʆ��Mm�Jbn�9������o/sd�7�)J�{�R��k��!����{�Nb��%X��X�P�)���6X��|�����VN����U|�`��m��7ޖp&�|%��q^�:: J���N�IH��D9	5����X�몑#� w���s�� w�ٰ��L�n	v�H��HI	�,�H7����-�ΐ;�l�I'��iH2������r���l�s��z."L!G�$�D9t��B�E�X��)�_�'~�n�88N������wۭ� ��@��*�'%1�/����)�Ëc�(���~ix�+2R�����"$ū�ffxqjdũ�D5��tRRYZ������`VGa����	g���ؾ^��|׆�O^���3������U���a�՘�>		���vܫw�c�%�}���E8A��,{p�k�"�$H�	�ͱ*ĈU����9��0���ĳbu�q�&�ŵ��8+��	�AqN݉�,�Z��ǩ�O{� ������u��Ҁ�M�>|ڣ���H����P�G�\Ϻ@�%1���[<]M���<?��Z����/�.GH����|���"�| �hg&��ߏs�D{bғ��Ʀ'�3&����`�#����p��0�a*��;���\`z�9c��.G8A�7���`.b � 7�>		�D9��>�bW��>�s��D:!��R�be PH0W]@8A$P�@J�H�)��O�2k����}C)#Z�C���OA����( ��7�A�%r
���y�n�J��[x�㯇x݈[�(C������[�m��n!���c|_��%�\H���[�V �ű8�c*���sj��,'!A�(��sy�gT��Jq�߰��~�l^��Q���g�Fp�H8�&4�ןx��6_M��K��*�55��d�W��.��M��!u!;�9%V8��)�����] w�SI@kk�L!�$�M�\�
��O��?>(���c����5\eB���]�}Ps+s�vǬ�Vw~��o�_�M�J��ќB�|��oM:�h��bE��C�����M��ߵϿ��o�|��qI�3F���_��f���B���_뵈 �Y��� �$�t��%nb��d���������7p�� [��A^/��V��Hq#���8��� "��Oh^���M@��ޯ���3�z�M�7�����{��(��ܽ:�9u���+���{�LM�WhI@�K��S�9"��[o���iQ��_P����
��r�	1�[�̂@�1�+��6a�?0���.A�9
�������nZT
�XӞ�.j��|$*��J���`����[�s�j�e	3�p��sNW��b���s�ZE	q_ȹ'�T�צE=ȫ�9W@'pGYW�'qYd���^����&J)Hs�	�R�v��⼫���T;G�v.xqB�sA��мB�sU��(C�l��3�����uT;Wߴ�"�|)Ω;Z�d��j�.XQI�9@qNI@{Q�<���1D�3Ѣ[����u����(w�XF�X�/����Ӱd�t�\+�t�&H���ѯ�b�K)�j��    )gѓ����S��������kΘk��e�^��q�U��WqU��&]� ��+
ɭ⊆��f�7�ze�tMמ�$4Ь@8YD����t��B"����Λ�O3�w��&Qe�2.@q�H�5r�N,�h�Y�m#�/�m-w)$=:f����p6_�-nhH�/	MjnhH�%	}h��кHhE+؛��E��Q�3?��x�]��a��KYq)_������B��xi$�� ��=����P'�.'�$�a���ݫ�Jzې���	1;���Y��m(��ym}n­N�ڈ�)N��Y�̤����W�_���6��edԓ7�X�K���W���n�|)�)�
eޞ˛j������H��sJb��+�8&���e3�b~p�Z�9�m�[��:�BU��DQǵ��fGz ��Y��IнI���[;<��a�]k�PʈS*��5��k0��F�#נ��F2�����v���[��N����VB"�o���#{�kS��O���5APB�%��,N�@"j���;dÆ0o!��_�!�[��(o!�'(!�x��DL'���y�}��SBHX��!��'fB~�B~_�BQ������(�\~����D9$�	n�8��6Q�Ƅ!Q��6!�T�n��R�S��d�dB�0�m�/N!X�m�/N!��|��)�HZ>�"��������
vvAȟ�L�2⤀h�m%��?ɢ����'�75$B�����>}�=N���V�?��q�g�\�bN�����.���%&J��PK*.���(�}��8{9�o� ��D���e=
a_��^��l7��P	!�RK�=z-"�}��8�7�M�݉B�, �-����dbQb�[x<瓇ED��3F�L�5LX��$C�%V�9�n�T�)qN�,�Ǉ��Ǜ2���sJ"v_��D4�Y�u�K�\ѢJ�l�M����eM[�=fx�	���>(�i�>b�_�2�>�YDuI{�Ա��!T	E���b�̥d��SY��mB�F�mB�'������wq����f��Z7U�U�v)*�j��\յ,J��͗���	?PC��s䂥�!R��\0�5
ޑ�����;���{�Λq��F��p��B��N�&��FB������Pʈ$��W���Ļ���S�A�n�5���b��{[�؄􀡦h61=`r��3F�!�������!�U\ʐpw�D�D�-y�J#S¼�ަ�I�h�>Ŏ{�N�>�7!D��mP�"7�ʹ�8���`��@�����-r#�&�����ݎRD�귖����{8�&$��T<sZəT4y.H%gzP��-(%gzP1<�ru�H�6D�sJ"N�JNID��������_���J����� ��sb�A#�胒���Fz�(U7;��h�A�'@��Bm�7�B"�)��j�Ԡ����j�̠AS�$1hۄA����� =|�X�ok3Ke��]ޖg_�]��蓬�j���ms�J����[C�W���t����� �!ټ+��e�b*�]��M��w8��+�}�HE	!qЩ8'T�;��	�&T��r�2D$\�	�&V��XĒ��?���C"Ϡ�uA*9+���d�����\UT�O	Jd���SМg�y,�J�����,�J��g�&�~{P�g����i����'ԍ���2"A	f&���&T��m����&���,���&����,P�Oĥ��N.��T������חL�	��Ee��5�CU������M�z�A(�3���k��������q�QC�wq���;:	��P��"����\�P�gsᠸ?���c>^�Gq�� ��ϔ����q���@�Pܧ';�+�WJeף�%K��T�yn�	�&ZK��L:9��T �.H'���
4���t�RAg��rM��ޔ��(�4�]�ƴg�SI���a1Mt)�6��?8��1#L���$�b�aO�){�a3M��)S?7m���G�)=[��F�C�Ҏ���/���M\f5=Ť.�E��&�T��U�ͦ�6��I+N��S���8�p�: � ���U\�0^�A﫸�q�N#�䄑��`����w&J�l&���@�.>�S�{wܷw2JRZ�=�(=n�����(�a�@�w>Jư�P!!-ۖ²�0���`]��ƹݕ�]G����}�ⓑ�'wWtT�atw�����6���6h���]�W��$�ͅ�������{`��td��ڍ�]GB�9l�mב w�ʶ�x��4�+2'�n����K7��HZ��膽�D�'Cw�	g̝^��Zm-4�X��mC��]�MU����R7e�n0���*�ۻm�ZI��,uS���(z9׶�����������@�c��07���d��ۮ���ͱ��9�@~J^4��{�p�S���J
9��0,:�����A�)~�,R�͆q��*@(E��e8cd���)#O���c@�Mv�ϰ���8J�h��wXX��xN�@�'")3w_���$̌����c+Gb�fؙ��"y°2�]�P�4��ƒ�P��������m�_&��x�Z�*ܔ1��b��D��gR�g�Fc�ii�[�FNi�J������M�uL�a�w����Ss��p�i�}���ɜ�[Q��.mӇ�3��N���Ӭx�na�������Ư�P'j{���	�֔�{,�NA��o�)$��g��c�M�R��y��]����q"�Z�/����o(,�)(5�d�1�Gn����M�@dis�U}g��q�+�iHC�ߘp¨_��~�B�Q��	:	��Mǉ�
��:��;���rz2:c2J��pz6:c6J-@���(�mr%���#4*x2��XF:��L�`(c�j�������#'�I���t&g�<c��g�%��d��c1��偼t&��Lk�BbzP���L�Ŵ�o�m���7���i�P���1�s�����a�7���)-�ʓ7�%�)a�ySX��Ҳ_)ԓ���v�g���Pi��J-OQ#%9����稑��g�l˓ԕ$���3.�ROLr��{K,OSWLS��J�~?���:U��*${<}��S�SU�� �	#Gq<�x˓��U�p�b��U~|:˳��U���RND=���g�+d����<[]1[ez>�g�+f����<[]![�g���lu�l��c{�g�+f��L�^������3�zy���l���@˳�ud�L� �VWr��cZ����V�U�M�������#�XP䬐?޶��ݑ2��:�	"cJ X4�yي*�	a޶�jS`+��VTqQ:􎷭�A��;�����C���f�Y�U'(!$F��	����&��`+j�2�kD[Q�a��F�u<+�F�u�f+:����8�d\	��,�+9mE-"������O6:lE����VtP�ڦh��:lE}9E�h(�B`�kh�$?O���'%%��a^ ؊��`���X�V4��jX�V4P`�
X�V4Pbe�O[ј(��dd	Tƞ9��e���n<�V7ϐ�z�˗�aa��m��5�����xD��$_�D��O�e4�P�¼}�sw��mƳ��Z�Wo���q��ɸ`�F�M�&め1��ɸ��	��0[w T�n��Ȅ���n�k�1z2��d����h�:�%�ɤEo���"�
0�1�W{6��v(IB�(�������4!}n��TE��d�L6��Qt�%��pv��v�H�m��\c5��YJ�}�ȳ�>���	����g����,���öɉ������'g���Q��r�i��l9��>���:zV
���~R��P v���\O���N@��VO��T��+RP�hB�rP�['�����������NC�OG(A�~uH�+$���Ҧg�AO� ��P��P!��
����Qm��RF���g�c�J%�D�0[XBz�R��`�q��~�F����Ӯ'r�S�̺������`�+9�A�;�����֍Y���D�n08��X��V!3=e$�L�Fj��W�-������L lˏ�����<;=�+��)N)��[Lja�̓����L2���qy�zrz0�    0��@�qk:C�S�\���やSqU�Y*_�p*�iHS�i\������U,TC�W���Ԫ��
�*?�n�S�RU�ƦJ=:�S�p�:�Y����eZ�����2].'Y�0Q� !��#�	Wo T���"�<Y]1Y�gN��d5�RAe�d5�Ruכ~��759=@QNəb�il˓��<D.�8t�b�G���=t�bG��.Uh
X�T1ŵ!�k�Rm.;�	H4�4Dy]j�*�P��C��bt�_a�Rc�	r��w �{�R�NPBH��9']j)<!���K�'�8t�M׷8]��:���v]�񼠂�C�zq�sJ����~�8t���C�N�ln/�.���MM�JN��f�&�.%���7�Ø�?9V>0q!��q�]6�C������l�AϡK����?]z���C�iJ��SH�V�X}]�����:�4�@��d�҄W��c���*���Y�Ɩ�Q<�{n�v5�xO�O����l�C�*�d8v{bFpC�׉��PC���ڳ���'!A�n������{3GB�M���&�C��rI��O�&��i P8R����H�4蛱<!��Þ�1�cB��=ߐ��8�$�|zć8|�I]�k.9QN���,�1Q�n��]D�`�m�-�����=D�*
ܵ)S&`���hk6օ���R�\�����/ᇶ�7�`�)S��5���ض�*�m"1�3�IU\pQ
�Rn��Ѧl���$?����M�,���+g�@��(��,�)M�1za�s�8���⠦����@�@R���!�
�L�9(=ӓ��NB��8=�!�����D4nH�}{�T1��㞅D��t�F���k0=�$��ui$�*��x�
�(5tM�`!����	,��ԚC�.$Pw��t�#!�6��J��瘨an��]D1'�� ��I�I)��rLbvX�.�i)=�EL�K������b����|p��u�Bj�hN��i䦉�$�t�|pw��d�M�Ni\�RHT�ANqJ�R�a�A�����d���w�<EM�)����YsTziX��F�I�I�J�h����4�&����T���p¨�I.=Y�W�JO�ty��B�JϠ���
�*=�.OVWHViB{�i![�	�ㆅt�����+������u�ϔ����:���kB�����2FE��g�*��e'���|u��rJrǅ�uAK��e�+��u��F���
 ���V��O@Ʃe��s3~GD�11���	 �� ߲#�a���t���`�)��<����K����7c
�Н�u�Uy��4���LBԝ\�����d��>��ٝG�@�}�>'�,�����������c��SBȬl+.d0�80⼼�c�ƟN@��X����pUtܫ��`�F�}�>~�%�I���x"?C�}��] ���P�7�6�#������}�qg���$I0Oߌ�@�����>�����='��l�mz!���/fl������X�c1�|�n}������g��'�rp:q�$��/���l/�&\����Ӱ��h��|�� �,���W)������TI)I�*� ^N|�M�^�|��/v8��oM���hk����Z�C%��6k݀�F?5r�F�g�	��3���m��
]��6P����㧧�3��?�����n
�s?B�i�ƌR���j×��s{��CY��uږ��)A$T��+�0���F��Qu�
e�d�}�	8�$�8M�|�Ǧ}��@QNIܡ�,��H�N��Q�:=v�B-�(�$�0���S�%��V�ˎ�;����{t���'��0�|L�u:L�"�u��͜���E'�~t�N���g���SJ��	k�%��N��N� �LR�ٜ�NҒ	sJ��&v��͘B#v�m�ArU�sꗧ�+����}}��]�'�\�kEC�w��*N�Ih�͗�'�q��q�B���|)� r����+f�kY��P�l��m�N	"�/X�B�l����g�+f�|�e��� 0Y���[ɲ�s+.�E9E�-��c1�s����z��IC�zP��E�XL��"[]I��d-��VL����'}�dF5d�+�V�FF_�pӗ�N�._�|p�!y?#w�r]O��zBd�V����8��w���*)%�\�Ci��ԙ�2WF��J�8���r���+��QDe����_S�*$�R�F?��[�ET�|�P��2'�L%�	7�+>G�uעp��Q�m��I~��Y�mv�j��������{jQ7U.P�A�д�\�&1��Le����ؚ b��Cl�: b���c~9�,���}P2��r�?0��(����`׾(CD	�!�@	�uױ�Q�b�ˮN��K���;�	"Z���8���cA^r��:03�!ʻ�:���v��ׁ^�����N�=
��97Y�A��։yNqB�uB��j��p�O(�.r�2��ټ*�27cւ�r�Y�����̺����S2��4(��:�����$T�9%�u��sTX��h"vX�6��?0��ej-m�����g�=�Y]]&'����X7�|��I����bi��"���8�������(�^�Ð���q��d�Ջ}9���̛){����.Qq��s��S ��ի��d�5�V��%�^R��T\�XZ�`�i�.�^pO4D
��3r���e�+(��XZ��&,J�ap�tܰXZ��c4*�V���B	����a�0��T7����*a�ӄ�s�V�|!� VȻ�Lf9K����)��]��c�6�i1��l�����%Xq��ƴ�Lڦ��V@2픶yb���/�+���=���=lb$Q�L4Q��ۆ�bpX�僠�V@�=%�X�M�z���� 1���
H�����E���=�
H�<�=�� �>��7�ʮj��ؖ�k����SF���jB����iQ�����FC�`dv���[�2l0�,Z�N-M�M�z�`�}�O�h(?����
�ͮބ���ܽ��2�w��6�']H����d��
Ș���$V@�Ӻ �$V���X��V�b��������.�8Ǵ\v5`%Ǵi�8m��+�sD��T5Q���6P��%V�j�$$�����O�����@7���@;�'�[�|U�rC�J�_���┒�������N:��1��tV��b}p����B{���T�}c�te�Vi�ҕAZ6,�"�<�'�@e��� ��D����0�ź}�P�6�g��/#[I"�nd���G�|,c��Q�yf��ߟ��L3�J��L�9u�eY��Hf�>	�	��2��FrJSi�]i;L"���`�k�LϱD#�v�D|�(��`4.���ӭ�����;�Ď?��q�[��_?�.�OV�"��zbJI�{m�BK��Ϲ�>���r[=��6��	�B_?j���e���A�W`}��}��L��������vP����"d������G�ͻ!Ҟ�	��s|":e�Z�}�S(۳�VL��̞��=a~{�h��JdG�^��0ó5N5=˲<����	=^*������8�~�y��k)f��!��ĞS�s���B�ߟ�v�ɓŌY����(�~�<�����5����MF�6�Xu�ȫ�q9EsYX���'V������dO����{*]�
�4why��CB��	VJi�K�cI)my�[���ȯ���<���~�'^%���o}vϯRF��\����:t*��uh+^I�%-�'��~�ga%a���Tda+x�����M��0������;���}���!� ڶ3Nm�Y�iB��DV=*z�&9�	�m&l�D�o9�D�|x�f%@�A�i����M���&��FQN�_�������
�?���Wyx��lF�(�4�r�sLO.�4{�a��m�c�i�	;��������}�q��m����}K1�
8��4l�g�����}[��@��-��@5��R�o�I��M���v��}`?�S����~?4z�o��_�[E���dd��U
 � ��s�~P�x�z{�nd���:Wo`8aX�����}���NB    MG�D4�2�㾽�oL�#� z�=9�	#�����P��F���P�N��n��M��}���Pƈ��F�$�7�M�o
�޷�U �rJ|h|0�XL��Vz�o�_��}c��(�4fa`���b�o�,{���&үa�	�pbB�n_�=��}�ށ�&� p��i����N�o�d���ƙ���{�"�3�P%��v]e�7�:5�ͮo�F�{�M뉐%2�-NT�1�����c�.]�vY	��K0,TВ1�t���9����9e�c��3�m��SS�[�9�4&�����]�B��iݮl�N+we�Ō;��k�S��1�T]?�N�V���m�cti?�$��X������K��e��d�����l�.�1�7��]�^}4$��%ؠ�c�.�L^ �ctix�Ѯj�Kc���_�
e����[����[��Ih �t��]���㾅1�|y��D+yV��ݰ�2^Z�Pa�.�V�L����Pq�.����]�����Bވ��g�o���A����eL��%ct��,�ϒ1�\]�+9���l�1��.�g-n�X�iP��1����2���8���#0F7�τ�~����e�B1F�Ի�������1?8=��=A8��˅1J!=����dJ�q�dNv�F=�[x�O~`Z���تgctK�����.����ͥ1� ���+�d8��4W�(A�ˡ�[����ݥ��l�>��W��$~�#t |"gn��#�û�l@(A~��MK�_��-����
�j ��M��݅�쉃��Վ�2�W�p�3�W�0h=��C�ҊGE9��y`�c����;b���P��ʛ6�4&���9�1�����+�J��=&0��~u�M��~�������%7`�i�I���Ӱ��L�������=��t@�BZ� ��8_JK#�d���x7J��1�´�A����>�{( 0�0�1��6a,�~$�ZUqU_�>�w\@(A��\��+�ZFO?���j�I��A'�;a �dApC:����(�B"L�`8a��ӌ�z?J��P��	�'���"8 j��{r�e�o>�F��l�	�3H�B��d����{�5���(ep=ŕS=�)^�q��&y��e1ëQ_(�(�~g/0�1�i? ��픻t��F�o��/��o���]^��-`���_��������*Y�L'*YR��.wQ
�\�F�8�~���CY���T�2+����� s3��q� �\9�b��CO2H~ ě*�R!k	UAQN�b�<��!��w�? *.wQNi���Ƭ�*f���@6֖�j���a��i�� �	J~ �6U�Ӱ}S�>8�]�2����z��v��C�Q�? ������%?��j}`ڌ�i�ӑh(g_�`RaܫfF�*<�j�y�A:\�|+���!g�D��TJ���W4����P��}�)����;��^m�*�O9K�k�[,A~�MK��n���S�R��D�j0p�:�j��YfL;�j�t1�L;�jhØ���{��f�l�WC�Ă8���*κY�g��Z�.d�1�ثU3g��j�*����9�4�M*�Mj?�ju8F�o�s���F?�-A�^m��`?;����t����W;4*پn�'RH}q����t\���ͷ���Zo��ӑ��P�N�Aa������3�1�#�\�t!ݶnv��S�ޏ�g��P�(��p��&���P�R���U,!t'�~>��fw)'��mr��&{�B����p¨�>�Wګ�J�8�^�P���V�z�C������U�1Eq��e���6Gg����f{�ԣ��\9������8�tn�xb��8���r��rJc���kl�0��6M�<egc�4=��jIcôI����a����ll�ŵ.��4��=�N�Vwx���hl��Q
��������.b��)il������a��İ9e���+�����ذ�u3�ݑ���8�tCZLר����aA�����au��8a~n?�yY�wc�23˯�!h���'�q֦�=�����v�&� jK3I���p0�K#�B����:*46�eΦ_c��h����CYhl���,�1jZ4ү��Ա86�أ��|A-]�f����c�cjP�Vt!����tmf��RK�ݙ_cC�iL6��&��L�g�&���L�Y�k9�\�Bأ��i3���a����k9��&w�䪣����Tfol8 ���9�RJ�i�9�RJ�ilÛ�56�n��N%����P�h��6�3H;շsy�$�����e1�)m"'��8Ǵ��\��Y�Go�������b�D�9�k��R�����a۲ޞD�n?p�k9�|�=lg㠷'���ƭ~-���ӈ>���ð>ms�����ME<z{x�xVRJ�0��%�~�\>�N���΢�Y+8��Ztl�
�Eޢc�V��y����Z�#����Z)�ޕ0�����B�7k����f�nG�����|ކ�6k��$f�,n�ju3'���7gJ�h�?F�Ċ���'m Vܬ��LI�����+Ѳ�[~�2F��w�X���]�2e�ܬ���E9���mk�̱_��B9SK�����4_"��OQL0s��T�d��Yi�ړ�Z߆^������.�S����E�����Ӱ��	4��Z�Q
I����K)I�;����d�֗{��#�8��d�6�χ�S�����E1�l��Ξ(�	�QŗS���^��犝=w��uP&�~1s����zw�И�(vh |":��r�ʼDa���J�B�V��(N����B�3X&�uB�3X��Yc8a~�η�����`�����&�	��q��e^Pf�3X��6����p�����u�r��8�eU�(�4fs�?S̔��/�<�e����	7\�NR�e6Er�=9�e-���?ݜ���.���'���]3#���sYW:{�K(k�BgO����].:{N%k�а	c)g_��У�%z�fK��/���u�J%����e�4��3o�䄑�I��)	#W���k���C��	�OD#u��ʉh���b��x��3�MK�]�������{�w:3mM�	�����Kur�9��K^�1$���g(��3o����G:�t��	�&0α;��r��e1�>t.���r�s��sLc�UE�)d��K��~��s�n�NZ���������>�D���\.�COt1��Z�Iv�L�n�l�)$Rn�NqJ��[�Qև~*^�Ɔc􁩇ڊO�
9��v)�(���P,����?�!Ȗ�%�n�N�߮�2��P�[w$�P��v#�p��v"�AY�{G;&tLd�G�h�����m������w�O�)RN�6!�?�~{�mNŃ���c��SNi�����I��D��;��NUv#}`� �J�������cxg�谇���&��cK���Ӱ(ݑW&b��DM��0q�N��Ҍٚ����Y=�L���6;��r�!c+�1���ٽ�H�{$T�
jLG��\^W��zG��%�\��[�0r=W��B�{GWݲ���@u�㟈ƁG�㾅��շ+At?��t������5B��ѵ6;~��!F��'9[F<�	z��8C)#�׉=����|��A��i[�u���T�c�c��A�y!y>{G��V,�|�u���ӌ�r��f�V?������d��6��4{�;��$�&{���xg���``�iX{��=��;�4�o�1}��Ki�(�$����NN)M�/�=Z��;���r콣I&&���?8ɯ��z6ۖ�l�{g��P����*�8�~�ATqU߳m��B	�;���p����NC��l�{�C �$$PA�蝬rA�E�}{'�\�;�YHV��
�F�B�����*׫��P��ᄑP���n�*�d�އ0�1��g�n{�=`۞#Y�:���ҍ�,�8�t�c�*��*��E9E�M`�c�=�ɓUN�Un�����h�5!Y=9��<n^�d��d��=�䛼$Y�f�P$�'�a����j9�Un��x�!1�<;���j�X��P���$Y���[<Y=1�H:�r���p��x�Zb��O�j�d��*?;���j9�U~���    �����@(A����p���|�rOV�;Y姊U<Y-!Y���[<Y-!Y�g�X<Y-!Y�A%)��p��0���P�d�G-@(A4T�`8[F�nǒ�r$�?KV##�b@�A��>�4�'��LV'�M�d�d���m��I���e�'�&y�3�x�Z�du��B�z`t^�J�iP�fHVK�����d��$�Yt��N=8�k`�Wl���l�Vl��[#$e��2hq���u����~/����>C��jI�O�y,�d?ݧO�`��էۼ5����1��/�9���64����g�c��{`�=�e-i�𬱇=[}�>C�Ӱ�Mf��iض�ַұ�g47|Q
io��C�|)���7��)i��j��f�>3��@ݬ�g�79Z'U�0�=�7�!q����3Π�ص����%B��K��ȵ��ϖQ�˘�P�sx+$������@a,�2�o,�id;�(C�!g8a�:���Pa,ò�e~cND�Bűk;	�$����v�Վ��wN��+}m��K���#�]�k9E9����1�1�M_�Ɖ����%���Е~��+�{,�4f��_p�]�|5����e�-�+=q�	gm��J?�^�a�?{س+�	�6��gW:N���BW:�������ؕδugrJɾ����Ϯt����Lv߄f@��t�3��T�=C���B�Ot�	��R���~I���VfLe����Շy���	#_�1n�!ԫՇ~��H�V�{����D4N�J�O�*��0��:�^�Շ1ά��[}m��B�ì5*��0J�b���=���b�O��k��u����������Sп��U;[}
���[-i�)��]�%�>�f����2Q��F9E�m%���86�>I�QJ��h�L���,~��j'�>n4��g�O5�+Z}���p�����J�6:���}�X	�F�m���������pCO"����9p��}p��Un
�`�ρ�re����m+}r��B>�.�ρLV�4�9p[�'�\�n�phJ�#�pS%� �2>�Î��{�ѝ�q�B�?��7�S�s�+	#B��p V�s`7+�9pGu V�s�n]shJ����C�'�[�ρ;~kŭ���}3{�O��s`�-��T;����-x��>��S�b����o+k������ƴ_$����)o���H��?8In0zM�g�Q1w���amJ�ғz�rVg!lb��m�>���;�����W*ek1�'I���Y�l~�B)�4����U�
�za~��)2�2FwV����X�������'�۫�Dn�U'+��+�5?��zutS���'�;./4ڃ�t��^Ҥ�`P�_a~ҽi��@����{�6�P��&�����D��L<�ATe�
�2F�b*g���T�S/�Q��P�Sz@K��8���`b��QbTj���Ҙvg0���W
f�q̺=�E6b�>0ɏ������#��*��̺Mꕺp�?8��FG�EQ��Y���'�J�����RBU�j2*D��zc^��/L8�u�DT�
bAY/��\zC�v8��Wun���R�EU~fk�u[���e.0�-#̲��%�rي�t�������"�X}�㾽EU��@(C��e8a�^�b��@���ʵ:B"L��p�h�������v/EZ-/��7�O� ɋ����Ϻ��J�`X���*W�G�x��Z��+9�$=nV#Ŭۣ�(�S��Y�gQS0{�`��Y�T�y0��,/N�cV`�IjӚW5��c����U����gݞ���[�Y�'�a[��j=E�~9D)$�N�=��E�HI���(Uk&���}`��<3ū��'�ʍ�+��QT}\�.��ST� q�������5��OsuQ��j�'�~�e�B�EՁ��)����!PU�g1Q�FQ�i&�.��CT��ᄑ�n���
����Eէ鹺�ZQu�F��ZQ��V]T���:~[��j=E�1m%Uk"�>-��EՃ"�&0�1���*@T�����2TUJb��������	Q�f��sXluQ��H����Ξ-��5U�����i�����r���k.��ST}�Û��$����\T��ڋ~����R�o��\Tm���te4UO�g���i�j;Dէy����NQ����\T�)���Q��Io.��CT]T�p°2�NC����~�zsQ�EQ���\TmQT}�I���-��O3IsQ����M�\Tm����o.��CT]ݞȁXQT}��5U�!�>�RsQ����\���Q������U���j;Eյ�ۛ�ڒ�1km������^��9��J٦��v�G�����t�_s�?8��׽v������v/�`�Cw���w��6��Z�^o ={w+ŧ����	�S�w��V��y�%%����'��<�s��� @L�(���ML��Q�571�P��oy��	ch*�dp3
�_0��y��	�Su���B��Č��"71WG�D4���s71�x��gtsw��e��%b Tp�܆'��£=*������8�٥4N`(e�J�����ȏ�M\0����g%^���]]ݜ��K��J��a�8W�B��M���&>K��n��/� ���,���pm�?0U"�9���
ΊC��Yb�8F���# ���T�Ð
�b]l}���bJ!R�k�R"TL��Y��VQ���Y����I�%�����vYPv��oCsʮG�[C]���z��5��V\�����]qMc�[Ì��+[�f�4�z����A�Ih 4E7
�o}^l�-��ur�D���$����Z�zu�DCat�@�����2n�o���
��Sƨ�q9���8�9.����m�-�nNZ�L-㛓ַ���/�<[ߞ���og5^匭�cӎ�C��Y>W�b;����f^�p��L�����,���f��I��,���a��.F+����%{J!�?P�݊fG�ۜ>��wi��l��j���e�K6"YN8t%c���3�1raj��#Y]�`W5$���5�d��dug8a�z.x B���r�Ӷ!�;Y-��{"Y听��uܷw�z'~%	�:Ζ�o���y'�傉d THV˅+3*$��.{-Y����!g(eں�3�b�C.T�f��Y��n�y�1���nKV����-虬�g�ƞ���x�*��ctY�%�g�}��{�d5)�+����W��HV�g�=왬�@���C�{+��d�pߚ�S���8�X�aU[KV�*�����x��H8/-YM��ʙ���,��RP�.(J�d�t��$c�Z
ۥ����d���⚆d�<��'��HViM�]���d��#旌�ʙ`[G���yS�j.uU�#�s�>0���֍�KFr�L���Yͥ.��F�����N���m��r$#'no�U�H�Q�HF�L)?��d�$)��)��=�4ϒ��&�|��ׂc�
���ki�r�A�%��Q�%��e��F	��T0�-�~�,���RiS�NB}-����"�l��Mc��@�!1���'��MƦ�=L��@�u�Z�&���P��VF�6u�T����p�'4���Ҷ�J������k9�.U\8��R�z炬��Zl�9|-��%Ώ�\KJ|-�kw����Z0���8�B�J.��F�7l�.���"_�)t	Ʈ���a˦�}p
�f8?|-�����O_Kw	�SJ�
�`�CJ3_F�����ײ|�p*Yl���Kт=0��@`:,���a�ՠ��,أ9B	�>z���т=6��B�-�sou9		4�~�(X�'Ĭ��,��;�Y�`�TvX��`?���-�-��'��{B�-�>"qBU��Y���a�^�?� I�.Ђ�sZ�W�yz�S�>�� �$�^��ŤÂ�l�7,اnVE?�1ɜc,Σ����DG���`'��������c{X�˵5���a�����Ӱ��E�`�"A�8,��j�n�>�
��J�i�.�.��&\ٺX>8�,0W�@^
�jy���Q7�;�$W��qyvUߩjy���SU��j!tU\ѐ�ZvB�R�»nv���7N��q�ީj��f"̦�q�Ƚb    hk�ީj��e�0�^7*����3%aD�bL��Дb�Z
:�&���ސ�k%�DM*삘�:G�ZJq=�rJ��J�8�T}h��AJ���My���T�˅�#U-�~ HUO�k
�����D�覒�6��LUK�3���2׍���5��$��eOU�L8L�"�X1U-O�e�T�P͔Z�8�D�z����)s��\5KU�L����|p,��Z]*���g�Y1U-c��8��Ṉ����T�Ḻ���1Ue�YEG[%�10w�F�u�|W�B9�1�/�9�1�vvXϕ.��1\�Lk��r���t�m��&�1lS]��C l���4�\8�L �gOc(8e�|��qCa��8�X��r�X���Jل�L�nl�d������.����[>Zۄ���o���8��K�M8{>�����#_��+�#)p"|ŗ{e#����jK$���i�F�c�%9��Oy×�U��. � :?W�Cw|e#I���y�"xmg�%�T����F�!{f'd�w!J�f9�iQ6�,]H����G��)�Xd6M�Rl ��Q!���bƗ��]�>(�6�Y���i�j%�tօ�~F�>��
���7��-�B��W�;��>R�g�7�Cu��kl��i\�i��a���i�t��RFW�(�t
�p��SJ�`LW�LŊ/G�pJC�:޵:/õ8��~�0�+fsE���K6?�3HM��W*�.�m]��-�Dape�D�苝ᄑ�ώo��'��f�i�
�9���� ۹v�����aS�D2�6���z�
�l��P�[r�̰�g	"�pr��lFB�9��e�Ȇ�w��`��1��L����e+��6�}���~�B���)I�q軼lsLrq�.x�H���O�u�����|9�9&1q��;ݎ���}`$�Y���v�Hn.w!��"QxW�>0�{سE��>Ʀ:����"����E���H�m�|l��)?��d��E���MF��Y��C\>�!i�(��C _嘯���`�G�WK�q�U-�U\�w�ZJg � ���:K��B]C�W�Z
�k���j)s�s"*]�}{童^.�Q��2�'�ܫj�A��IK�mL�ܡ*�E
�*�|��z6�=�|��s=�>�|��c=�?�|��C� �j}�}���I	V6a,�X0�ϐ����P��J0��|�����XQ�|]Y2�W��`�WaL��\���p����j-&�"_M����s�|5�=�ܦ��d���V������j}����ꡠ	e'�����l���ð֐�է�X��1�R0�#櫵nZ\� ��۱vY��*3��~'��a�^��:��Ìw{���hf��y8.��6)��?�ת@(C�����G�������<\.��PB(���h�6o�����5�`���<����h.(�t��b�p���b���2��	����S����b�@��a�y�<��(�qi�յ�)���_��p�j �Dƺ�]�Ӟ+�?(<����D��O�b�8�Ә���D��.}^�1��������,��\#�='2V�=c"c�D���/pv�k�J�D�v��RH�������`m�q���*x{mב����_���P��9�G�^�V�����ۃK���t��i��U\�0�F	�Wt���F�'����cnnqC�0�#Oh��tܷ����t�U�gq�M�!RsƉ	��[d�����@�8�c��@�8��.ؘ�0�Kβ�e�����n�b�cn.{,l��y�P>�rJ��`0��\�l��6�b&cn�v�QNi��q�iL��a�M2�Kq�>��9V�-�gY�D1��瘛a�a�M2)L8��0�&YN�}R�o@�9�f`b���9 =D���������JJ阛�/ٞ#&�k0��2�dP�r�^��|��C�g�Q�(4q�w,>r�d�~E�ê���w�|���p��W�|��$[o�w@�}�X�[T�c|"	#�"�٪"�<��|��r�ё�P��2>s�FR�i#��E�0�R��Dg�\'�����3�L.��ҧI`(cH!L�$9����v��8�j�(�H��sL��/Lź|`��tX�@QNi�6�q�i���l�]�tX6R���2��sHv}�)�&Z�F�aO�Ú}`v�r��i���~�\��ı��(�H��SJDՋl0�9�	`�~��S3m����S7m�W���u)A�Rh ����3j�7P���O��]U\��{VL�������0�}Y����DA'��~	�o�؉H�|ʗݷ��W�RہP���"&0�0���P��O�2�P�h�Z�p�h�f_|>�\�N�e�ώ� q������ŷ�����U3iX��zW]������]u�YG�<�+��MUz�`�UW.�3��	UW�h���	UW������r�ci T��ތ�`8a4����zŪ+Wk�B�5Z\q�"0}`�FuT]���rJw��#A�����(�Y\쨺�{���S�1��tͮ<����D����}}`*Dt��
�n���i5l:F����BT]��p0	l�M�`�NQ
�V���������4S$��:�ޛ���������Ӡ�KSPԎ.�n�����-M��R� �XW5����J���>R�F��aH��0g4D
.���C��Kp���q߂KptG(AT)��-�0*L�4��Kp���P�%8��F'ϘwU��7�-� C��o�N|u�'�?Vu=-)�ѫ����S���+���iI������A��W�8�tp+]~���\h�"��2���p����^��~�U�Ӌ�;���M�OOK��w�_��N�Q.�ӷ�&��Z.�m�Mb���
x����ͬU׳�(F1ԯ�?#��ީ� ���x�%G�uŪ띋@�A:4�*�#cث�vY�K�0��F��3
��%ȇK�l��U.Ajn����@(6
.A��|��K�`��i�%�p������|"\���`(At�n�@���mԑ���K�q&�X�K���`8�t�L�Od��QJ��p�rJ{�1�1u��MA�z��B�����.A�����uI����O����1�|5�K
g͢�W���ZԼ����K��c�r�ĤN�����
3�K�[���Q�ʊ�W���P�j3�:I��V�@���%���#��l���.���p	z����u��T�x��M:����s)�Kp��[qM�K�KOW4������\��\ �$4����Kp�ܩ��\�ϡ����r�ʺ�+���@���5*�eL_�FC-�������g�d�|5�%"��B��e��Yq�)��,_=)���Z8���W˴^K�g�񦬐�|����8�4���%Ǥyyٯ�jR�����K�W���N��~{��w�j`���,H�E�|J�|�%g��Ɩse�Z��
V�x��V0�"Ë6��V$x��VphfC�Pa+�6���3"�
[�1��]��U��;nY��U�e8a�4�Q�B��"�+l�9�	���`�H�b��v��(c~��RM�9�Yak������v���o��S�H�fG���vf]��-��1�iw�3M1�y6E�j��3o��&�?3{س���I�
[�u��h˺>������-9z���K!���:T؎�K�������wv�>0�&w7���du����B��f��+c�8��R�r������q�c� zE��K��8��!ԫ��}:	�}yb�'����-�z.����@�=6���FI����6�4q T�����ρP���PN$x��v3e�����R�[��侮��NQN��J,�^%ϧ`�
o=Q]��+�4�%��
�XL����$dz��(� F_�p6���s��
U�m^ߍ�30��ԐD�����:�����K�g{�@�-��#�zqJ��KTI)5u�1�>��(�����>05�F���x�*�v/��G/񄇮�{��s���d�~�e���oz3��@(A��D�p��<M�!Ի���A�Ih �E�D4�pީP�^��Q����T�j�j7k T�j���HJ�Gm T    �j���H�KŪ��n�-uT���	��Q�^�.�����KF�r�gX��8�~~%�?]����f,�Jx:�D��I�r�ԩVs}B%<-\M�0��DUzZ+����#L9�z!��� J��4�v%p��7�J�l�����#L���R�6=]�U���%͢Ý^�io�t�?8�O��#��<E��S`�:T�gC�\%��0��>UqU�Jض�#)A�6ا*�hT	�v:��z��HA%|�h�U�USF;�[P	�S�,���x��*a;T�EB���	�DC��FC���	�VT	N�ph*a��6��B
�54���zɎ�k��؝m�&�p�#t����ir�TS��=M��:�U1�ɱlRW���К�����zTC�`rN�Ih��	]'�39�Dem���qS�D����EN���q�>�ar�@(A~&G�/r��L�ޯ�T�O�#Nؙh�OL�[Oc��q�>�HU��qn=�9��G�����P���؂�{sJ��ZK>�`�b��%��,�[����'����pwQ�?8�:��a�-X��b}aʹ����-f9�,�W�{���-X)(vm*܂��
�o�؂����m�N}J�nr���T��X�^3J�&+"#P��8�������tk��k
噚P�`Pb��<'N/�X0��L����t6/�P0(5цH���lj�s?��R12�㖅�Ay
�%��e*�.܈�GR�h�]�J��
%��됔1�	��7'�4ĂA���e�G���d��ܳ`P�.���S�lY߅�G��4��.� {
��Q08�.�L�D�����$�[��Fʹ*��$8͊�(���b}`������m��߶��%��un�l-9�{%���M�5cY��T�$�}`�u@'�e������W�=��9G��,
]
y%g��_��Y�%��_%�_���Q�z�B�7`ݶ�؀ո�h�k6`}�~�k܀=���zl����aV�X��8l�j܀=#�o���å0N��i�(=����)����FۀŅ�FD��=m���J�Z�q���ajl�:%�}P�� �9�1GVrLR�TӦ�'64UӦ��6�;+�f���I60i��Klœ��N�n�X��4nu��D����>�h��C�R�u3N)I�~���S�����L҄�۸��8��3U�
Q��͵�6f�Aǡ�ArY�y��E[�s8l�A;l�w��F[�7/�`+^mS�NBG�D4�4���[�#a7/�X0��U�p�������
7ҀP�h(�Ԯ��P�BY��łA��3�1�P��5�WV08�.9r3�������8G�m�٘�i������LX�.ǘ�ɾg��'wn���L�1���☚Y+N=���%aL�K�҃�6G�Ih�����()��L}cj&�ǎ{���͘�	��j;�B�15s;��DC-_�Fϑ��7!��15��}LMT�"_�3H�Y<`�9�fA\P�15����9�GY���15� G)O�vF9�1��Y8�4����15��%�������q�f�Ø�d9��]{��)�~���G]��易'cj���f�cjn��.�!��qm�8������,�r�����
������=��*�N���/v�RӋ{�.�H�25/��v]8�ª��CP�e�֮���2AOBw�)�����v�s�TL���<��T|���>`�rn�.5�#��Mw@P�����_O�<"kʵ���G�KF�,g�#c_Ɏ�F���ޮ����0�`�TL�����[P�H������Ⱦ���/d�aA2��N����T|�M,�d.��|�1��d6]K���XL}�`[�}��M��AE�a��.��m�a|�d.�X�f��b�]삉Ym���b����֋���CP1�M��B�3�0�o.L��z�Sb����ͅup|Ᾱ0Kd�y��ۄC�i��mB�'�,]�6m
]z�G�v)�f��fW�]�����oR��~뷩[��<!��,0t�oӰt�fގ�m֌���o3Yb�F�V�8j0u�o�ps��mv�ۜ����SY�ӑ|;�I�웫�.��l��3#6�j�Z����\;(�����ۖ�L0��R��~����(��f�2b��ML����Y��ݰɩ�m2�A���s��m��5��n�p_81�'�.�tC
�}B���o���"_�-H�RE�~[ ��H���5�Q�~dĄ���vԜ���2
�,e�$�uk"K$�]d����.A�b��������y�o�%�s�o+�
L��Jv��1Ė���v�o+�K���V�Ud���mEn���Q���r] b�����Bz�#�v�o�\I��������)d�IE��Z����Ύf���C8����I�t5Jۖ���pܭVI!$��c+C��H_<V_����o367g�.�t.6�/�t.�d���)��/p�i�M�~]��m
}P��8�cS�:k�	�Bߘ�J�0���"���Yj�Ɠ���	Y*ņ�G�N�ʐ���]j�"[2@d��V�䀑MR(U6��]j�ƛȷ��3�oi��ɫ�z,��ȭ�>bd��cG�,p"�ԛtK���pk��)Y�U+9�d�S�&y���'V�_,��N��4��R{�tML�K,��3�T�`ӡe�'c�}�tMeM6�~�}�O��N�p��u�ĕF5���-��{u1�ĩ�Fq|(�L5U��`�}n�r���V��7�����R���LC#�h�Nh�vK��v�bK�Wi"V8� �W�p��a&����R��*�����L������Xj_0KQq�Υ�K/��R�Ù����ԱԾ�͙�q|00�s�����|�͙z"gJ��͙���;N�R�׊��+��W<>�d�Ծ��:�PK���kl�}	��W��c���>� ��Em��h��>TXj�1�fuDK�='���b�}������肉Y��Ⱥ���kQD����/�����R�����[Qm��I�R��׾�R�.��~	�-���,��ގjK�='K��`���Z�R���P��R�Z qͫ�������tU��d5W�:W���f^�U����U]��j�j=]յ(���ZOWuU𫹪�tU�be5W�:W�gc8`�ZE�j�j=]�%VY�U��U]k	���չ�k-A5W�:W�c(b��:��Z����TsUkમJv5W�Q�m\����c������U������0�1���?\���k@5W�cӵYK�������������U�K����걹>sU������+4�tf3W�9W�� 
��Ds)g6sUݡ&�9��\���y��7sUlr�8�ps���݆f�j;]ռ���\��\��|>I3W�9W5/��f�j;\ռ�ɚ���tU��6sU��f�ޤf�j�uU���o檶�U�K2����W5SQ;���Uͫ���Um���2�T�1X;�&e�)�/!(�>6�L�<'�(�)�ɛcbSGqQ��~���
0�`��Iv8�p�҂��f֗iю�2m��M����٦�ф�<W�}�憅��v��8�d?|���L����`���/�7%��a-�$���P�|ɵ�#�K�mnX�����  _z�����k���i(L뵭�PX���D�|9�ȗ[S���6&�=��gGCa����%��n0��P��77,@�Tb00b*+������"�˥5@A_&�<'�\Cab��n�o(L����h�|���0�u��P��0���8�d��
b��0�f�EFl&cR���v��e�`�7�M��
7lr%���������5����
$S��C�@m�RH�*�&m(�0������$�ؼ0���٨aE��Es�8<ЄH]���z4.m�f��5�]��
�k(��L�6�\AP@L�l^�G�N1;�#�ex���l(\�k�56�P�;�I#ü]�[gC��nӬ�����<�0�/��߬��5����
�o(\[s�56�P���kCa
����$��ǘ$^�:Cx�-�T����T%6����Sm���ZFL�>�    �Nic]8x�-�T��]3O�c���<U�I�{(�y��{��{�y�'�傌␒�w��y�=�T���n��Ǧ;ҫq|�Kҿ߀n��5���n��7��)�
�o(\S�
��P�d�5v�P8���KB����m(lyB}_�n��l(\�n�
��P8�d`����
��[����
G�?����P���tk(쮡p��7�:
G�׆��
�x�P�HRw\
�k(�ϣ�6v�P��Qm(t�$�� ���$S��
�o(�O#PS������P�6����=h(�y�d�P`�K_���Z�b�
{�P�F7lr0�f�7��(ح��sir_�3��p��¼�5�5@��J����a�#h(�k���B���HtXC�8
s���a�'#� �4/�j��P8|C!c�@E9RER�9�>I5#dE1%�H[b�/�%�(jy9REJVP�&ܖ�p���-���*R�L�0YJ��٭��.�ܰ�a��.��L��␒��,[
)��!��/��eM�#��]0QEb���Kp��fhM`(d��$G��[3E�ĤE+L�ԩ"��F�g�㤀��Y�8�NU�V��G>��$y�_�
��~]�	��[vv�&T������ڵԡZWm=�j3m�� ��00b
�����SE���Q���HiˌE��"�-3����*RaPS��T`c����с�T�r���ԧ�Ԁq�}JL��B�=PE�l5m	�H���<r���"�e��}bL�A���1Y:����D�TJ�>���l9/)QE*��PU$��ԭ@y�D�p|�D�i�AC��B�����lgjlB[��#H�*7W��ʰ��,�B�.㊞![%�j��ߐ�2� O|��:�ȷ��rZzߎ�m-�m�5����p�|����L![E-��������S��uԭϐ��%�(bdSu@A�*�΁���k�(�)�aB�s Gx�M��V}�j�,�E1%6����r��i���t��V���iK��j�r?m)��[��e����j�-�uÄ۲^N̦.]�$k�4��ުK|M餲%�BJ��J�BJd��K�U����.�H1��/��1�N4PE�8�>U�(EЧ��Y���t�H�P�|�H�FԊ�H,0u�"UA�C�a��$U�7�5U�zBB��d94�*z�7�r�H[~,@D	��SN���QU�#�5��p�T�̏�*�%�8�D)[JK��N)��nk|~lbx��~��3��ҚT�(��fO�8�Ħ��X��Ze6V`t�^W ����F!ȏ	��ǔsk2!-g��`�B&����_�c��3W�'�QѤ��C�'�D�6�|�lI+]0n��'-nuK���;T<_������eY��x��9����Z�'�ϐ�@�'��&a�T����]ĔVT�b� ��g  $� �3øɒS�I�b� ��b%�~�k���L�����h.;�4w����wmB��;�k$kST�d��O�������b��^b�.c���OQ�ǧhR�(�)�����w-�Ħ>��U>>DS��T����wmr�n�����wmrX(fk���`��BL�S}~�����l)�ԉu��ס����PɴW�CqHɸ65i'N0�;��M��}�X6e̷�	g*z��L[��J�i��6̬&���i��n�I�3m��q�n�MU^�(��L[L3m�.�tδAh���1�V�[�Q8�3m��(��L[ݵX���i�S�L[�
�"d2�o0uδUL27�h�3m�蟬3m�X�D�:�%[?�Vmv8E�̴a�Yg�ܸ�ä��ڴh����8�d�l�XQ��LT��fښ��L��̆�!H�g�$�7I�`��a�w%f�ZVa6�~����}�8����k�Ѯ��u��ik�����Lf5��q?�����a���ڣ�u����ABD�����`���c�w�'c(bD
��	-�n��C'$�3mC����i��E�qE�L[���S�L�V1�V�L�c3m3���i����g�L�(-6�V�L��-6�VΙ�=�S�L�R )6�V�L����δ7�6�11���б��ϴu�t�����@PS3\{���N�3m�A���M7Ӗm4�E{n�-?:c��6_�l�i�i���ٱ���i���Y��/�t a|�6�E3mz�0�T�e�ʪ�|��+-)n���L�P�5���6���CM
uNF�<�i#�A�L[�M.oc����Ym�?g��΄�|7�f�	-�~�S>W��iÌO�5u3m(�g\Q7Ӧ�pU�9ӆ��K�L�)(0t̴�$zߎ�6��(\��f����u��o�l�r5����S�U����W_L5W���jf���(W5s٪�%�tU3������tU3c2����tU3�Ib�����/5@QL��,�4�y�]ռ6�UsU]5���>pU}i~b��J�M�	S�����Z�UJ�S߀��Iۖ��#����cLB]΀�#�'e:�~x.��T/�G��`f3��9m������~���}�S�.�Bm�<��Gj�2�pb�[;Z�pbW���~��Y�(�~{(�� jk�o��~z��֏4f`t���t0��}1��M�g��Z٦!#h^�V�'*Eм�#���(��n�b rI���q��E7V���B[�#F��z���yDJ�P]��qG���G�⦝���9Ɗv���f��o��E�w�DL�����QhK]�Ph�g�퍒��Ɉ�8	�-Sg�����\r��7���/�)	b H2з�mi��`�[��+�׆B�����iS���/vڔ+J��"�at���~���I�^�4v��|��.���7�l;�W>03Fh�q�����BH�(Lq|���v�|'�(j4`t�$����!'*�=�$J�:m:�:�\��A+QB�Yh�O׿*����{ð�\�Q�p�H�ro[�Ϻ�7�z@�'�F���C���2��������K�ٺ��1l2�_Ǻ��ZP���;�_�
1U�ư�S����m�X��3�m;���uy�f/;Z��uy��t.�uy�`*w�q���y��5�W}c��X���:�ռ������l ���[:�c�p����U5�ՙ��ՠ1lr���_�����%���ռT����Ag�3GS�ΰ7��bL7�����J
�IUr�����k�^'Fӏ�Ws�`��'�WsE���'�W����&���Z��&#F�r	g�����$����5��e��ϷV�
�����&��?�nq��������<"v�TtP��O�&����"���[�D?�'r�hm������Ъ�`��x��Sh���:�'�Z�٭���P7�#h�K-�n��������}K�"w"`c,��r�Y����F�����1&6�b���F���{�w��O}a��F9�O}a�C�Y�?�;�?������1��f��O�%�7���0���X��	e�R�AXz}��'�F�cFl�	#Y��'��W&���|��k�V�}}a#��(�TɂA��<�8Ƥʩ;0��Q��iZaSb���W��M��e�`P���C(�E�:m�v�'j�����A���
�
�ѠNS5_��n4��4��l��9��FD!$2��"O7�������hP���u�����8�p��#��;m�]�5b�R^�@A���^���z��f�\Q�f\�sP����:�Kz�'$z����O��J*z�Nmު.�I���i+X�DM9m�m�1@>�Э�0�l�6�jhN[�C�i+d@A���e��Bi+l)��m�Mٕ/	M�<VV��
y�u��O,4�����lh+<z1�`�����}j��p��n����d�H[��T0YA7�V��̦7�O���~:m���قO��@�r_)��P�렎OV��mC�l�G�<IBhj+P5�BfB��$G�\�ml2E�\S�Mf\�c�<�� ����9V�ǌ�y��gF����Xy^�����Z�lZ`C�EVܶ߱���d�(@���D��[�`�`�w�<s����R�����1V�:�:V~d����Zz�"f�	2    �Y�Xy^�#����lU�bK�QL�h3a�u@��{�/�l�[ui�I��/�U���X��I��i3g�:To����_Z��.	����n���c3�ռ�6�V�����/���6ň���V_Ȇ)�f���oI�����nުOA�B�2Zl����v�j.�e��wV
o���gY��Lr͓,i�8ɣzP0��q�g��`F1����A�zo
L�Vֶ�nՃ~V�N��z���AjG�����BB��a8`�SW�����Q=X�ݪ�U*�*L�Ճ�?Y�g"j2ۤcĐ@���@ڒP*U�m���51`UՃ�����T���RI�V=��Ī	�q���fGK1��Q�m�:��n	2�p�hÎ�.��������]��)��%�҅�H	i���W���3�Bh���!5�Ղ0�z�sU}�����6݄ލ�7=�մ=���Lk͋�Ɋq��<��2��\�y��G�<�̱�`|��3�{D�E��<�}�
�v��F�MgL��S��;R����`8`�W���C�3O�Ϝ�����'@A��H
i���bEI�(�>Q�ǘ$$t�}�n�Q$!����} ���f�\a�g�T`t��E�_8Ɇ��)����tfT`t��Όm$�٬�g�g��g#��t�W�����S0�e;���)غn;���)������,M8�C�;��N�T�ζ�4�,O��L��8�_��LX�q��j��00_�����Q�~�
�b": ��ߑHAl�2yD������H�L?`�bt�P�~�L#���5�:T�3�#�t���`�P�ά��U�>&g<�;�1.x�vg�Bڎa�S�;sRk����gn@�xB�ۏDN�~`bϫvg.:O���S�ά� T��H��t��~$rbM�uH��0��(i���c^���7P��k�C6�n?�(��:��ĄN�C�;��l��{mu�C�;'-�=[�T��i���!5�I+mP��3�eb6�Hl��i���nF�	�Yj��~��:�����m�����m�׫��_�E
I�`1��er���S?�e^�� O�!��I���ѵKR����29c����er֡���~�er�#�`�w�̋T  b
{�L�e�m���2�$c�� C3�k�;���29�m$rٹ�2��۬#����
e`cӑ*��u���/���t�erɆq��M��~���>�L�`���͒o,�_&8��t&�e�j��0�`�lշ�e��M��v���[��/�+��[��/�k2�)���S��J3Am~�bґ1"����	%��S�(�&(��Z1�P�t���y͸����0ӗqIOO�aT�==զ�Rx���T�@b5O���jkv���٥�="٫]�x݋�S�(OWܯ�S��de
��w�����n�[���u�(<��<ծ+��V�ڈL�L��T��W�S=���
x���.��b�KPm�1&��}���:Os0�T}_�
�cl�\�<U_q�b��F��"��"I��B�ɥ_8�oT]1�0���� �Bc��ި��u�f	)X��kT썱��L�SI���-�h���� �PC3_��G�|	�d��� �$�P�����d��� ���
��� ���X:��fq<{D�t+B��z���� �]4=�p�L��d���� MlQ<���W�����)�D�k�&gi��O�T@AӍ��E�_d4@S�(�>y�-��1�m�&Y�6}4S,����0C����lѣi���L�<�肑p��>뫉hvց�����'f��N�� ͅQM�u���G\4W�����B1�jGЬ�ݏ��Q4�5\;���µ����(>��UMd�^՟v��>!  $�E�0�z&���v�pfWL��<!� �T`h��ND�������o�̔d  ��&Kpt��t���Ϸo�@��G��cv��x�����qfA02m�F4���f-EP�MS[��R+8����:0���c�l�~��$�F��I.�Љ�8��h5,Řm��%u�|t>f�d�Ŀ`ӹ�c�Ŀp,������i���4=Flf�/���8�p������}u�>�}B�SM�� ("������, ��??�m�H�h���p[��WR0�����jA����i�� � ��Cg{�U=�Պp5㚞�jE��qEOg�B^��ԯ�Z!U`�pV�6b�Y���Zq�*���V����g��Z�e8`d���S�65�r�zH5�r�zH��Z��^�`�"F��p�~Z�iH�U{��W1�bj:�6C30=M�m!:Fm�i=�����&�@>��&o��������at�dlN�^pV�N|��35����at�Ĭ�E'�	���&.�&�ڱ��0���>�␒i�G۰�Y� &ց��i=��f���zP�Pg��i=��IPap���^d8�g#���Y��^��Y]�͜��ա��pV�sVz�L�:���gu`p�����eTܷ�Y]9�f�js��Iˁ�W����5�h���L���U=V1�[豃q�IЮ!��x�H�-lJ_�[�`�_8���
 0ly��D���
Y�6��P7K�#n�C5�BHL��}	���n����E[��b]0Q|�8c�,���3�_��}�5����Ś���$	(Ye\գ}���f\ӳ}��>e\ѳ}�Qt)0��>Λ�D�CP.+0t��3���v��3��{v��3�Q��l羹X��F�>Q�����SFBt�w:�lg��m"���������������(~������X�>n�H�`A��Z8R�}�;O3�a�]��U��8��f��L������X���z&g*�|�f� ̵-��Ǳ���X���a_8�ݱx��n�>������@�P;D!$�;���e�}<cM��^���'��blb�l�؅��X��Jh���g͋ѷ���+��cK$ZB��x�e�K|���KJl�X�|	��[̏Xb.�,��%�W��5���)۸�ҿb���qVܴC,1�!{*nع�̶l6�:���5�:�����p�H�N6��À�V�
?�c�m%��t[���Q���V���50����Ls`/�W�R����Z��1%6��cbSM�����c�Y6�Wv1n�e��Z��~>qb���_�'�Jq�W�qG�t�l��9�ե��_u㎓�v(���4�����gp���]0	�)��7��:�[<�]<�u���s�Q�qI� +�q�G<�!d�q�g<k[03N�gmf���x�C�����vț:�پmd���3��|�g��g�c���0���{�`�(���nŗ�/#�#��(-����3�P�P�Lӫ����2tZŗ�/K]�[��O;>��8��/��v�cI0�|`4(��2E�ŏ;
f:_)�^����W��]�<�8�&�/��g�6A_|)�������肉Y}<P|	�"'WtP�/�b����QѤ>_eX��;N��_�tb�XF�&�8�p,�O�/�,����sX����Z ��j��N�nF8a*��	L
ٌ�y[����yR��s4@)�>�ӍP�8،��،��-��w���:6wK� ��!��XD�7#�Jc3�w�SE��lF�}���9�a�_�O���(�uK�^lS��`"��-d�\��+'l|֮��G���BHf9���%^�����P��`��n]0��v8�p2(��x	��&V��p��Ċ�Tp�IBy5�$��JB�M�l�#�$Ϧ�Z��$+&A�Cd>{�X�ܭ��$�X�ܭ �&V6u���&V̗RS��J5W��X��%�X1/I�p7��/<�X�8���s��5&V�o;��+��7�������ʦ.S����cLl�M/�/���p0�`2��!!&V���(���l0�2��M�tp|;�L����}ĝ�43 �!�*(�ob%�J!%+I�W5	�Q2���Q�X19Ui�+��ob� $�:m��X��ȸ���J��\Ρ������J�    �5y{D&V�$yD&V��[q�Ή�� g���p+��:�2��Jó�`�Xi�Ci�uN��l�I#���z�~N�4H�t��nbe-
6�2��JC`0����6������6���
hlbe+�3(�)���Xq��̊�`���]0n��7��^׫I��սFL���"��j��!�Wy����E)b��0R
}�)+0u�\��<!%W}"Pr��Jk�u��+
�����0RrMj���Yr��u�)Wr�g	%��J�\�E����ʕ�P�H�>h(����x{?���K�����/xPr�N�8�doa������ʃ�e�P�HJ��cRr�,Ř�\���?��}�>�q|��bW(�zNJ�EOּ���Z���]�$Pr����^���7
�U��/�NL�$^�c�6��'f55���,��h�>2uL^�ŋLӇ�}���R^��j"�ax=������Э;o���/c�1R��:iB��ܑ�Ƣj-����~��  $�V����.{#ڭ �	1Ta���� �.��v��V  ���u�q�Ƚ�`�W��f-�I"��,�`��.��EG��.{��E�hz�i�MO�1U��%�L&��D��K��D��Eo-��\RQ(��RL}j�&��1&6u�m-�^����&A��բ��7�.���B�,X�4�a�<��O,Ͳ�r�vYE�lK&��e5U@Byf�cr|�Ia�h��buc�a����0����t�u/`(b�,���	�����<�k� g��S��3�#q/��S`�P��3�!H���X&4yD�k�g�����k��!��>�F������kM�!��>�.�p���jL
��,��D_��(��zli�E��5�v�G�u7�ܘ�b��c�u����f_�(��f5�cLlB$w��񵾸�UG���7p|�$�FM��l_+���f�J#�Ҙ�Y��sάb�m�����@���e.�)�Ɖ�`��ev;$`t���0P��� �)���	鋳4jC#	��ą��=��.�Q	HWe\ӳ4��̸�G%�<ϖ�\�O%�<[J�<A!;{D� �]q�~+Ae-�V	g%�<�bWܯ�T��ưJ�8*A�)�ؠ S��B%h����l�G����� �Б�9+A��S���_4��q����dd|%���-�*A>k�b��*A>��R􀢘�6�-��1&6Y���\��J]0�ܖ����[�� ��b��@%(HZg������|Wj�BN�9Նd]��w!s�.�tv!/x�.�亐)a��V}f�BN�Y�х�|�#Jօ�|2��L�]�5� ����jK��.�亐K�`(bd�{@A҅�,=�G�������ŔtS�1&�i]t!;�k�:(����9��:���.d�{U&6����ֵvp|��um&������.��UQvt!j[��Z�&x㺐Uw���n|���<�؍�B�*�������0�ѭ���fp� Ҭ���d����9�.�֍���z�M��#�k��K�q�g2�2N�u!�|����Bf5U`��BNyBeC�#b2Qڅ��.��t�Bή�����L����х�{B"�Ʀ�FS�R�qׅ�;�]�'3!U�B�%P�"H�����]�^Dkv�BL}@<�BN���.d�F�Wњ�&��1&FU�]��*�F�������Ц�H��Y�M�/����f3�%`�J�9ۚ���']ȏj�h�婐5;��$�͖NlkR*΋.d'�%��c�I�90�`҅	f��u؅\����.d��%��]���T���)S�Ne\�_	��@�;�0od�ထ��A������3�x@�'H��=2��+�ۯ̋��ȼ_Ç�!�5��If/�W�$�L0�t]��`ꐀ)�"S�J��Wu�E	� q�Н����Se(�2am�)l ���5�(8$`�*�PŔ���"8��&6A���5��:0�`3�'��L � �&񠜓�y��]0n�x�p,���k=�)X�D��N���a��I��M�a��{	��P���:�x�D��v��AvI��z:���杠�p:���i ��)�0!8e\�_g�,��j�j=����%˸���Zv5����s��_g��Y�j�j=��»�ֺп�jaHBWܳ�Y-]��u8�e��TsVm���Z���Y-�&�`�pV˒Ŭ欞��1�
�	�M;�X�
(EPHo�:�^��y�aBc,��J�K�i+���Y-i���c��c�Y��o�d���ˈ+:D3z~�e�i܌~�sq��c���e�Y�S�2���(�#b�YC���ˈ+:�*�U�eĵo}y#���)�S�2ⶵ�Q�H�N�O��sq��N�-��2��HG��[F�j�4�p]�e�����	7�DL�30�1���:�Й��=�SR�Ӷ~,#���Q6�ˈ�ޗw�f6��}y���v@6�~q��M,#2ܓ�~L,#2ܳ������u�wY��C�c���	\y��	Z��᪩�L���L�83�/F��#S>��^����ه�W�̔�9oΙ)���`�Ȕ/��a���2�cl��#���������<��S�H��2��A ���G�e���|�"Ĕ�)�E�r�El�����̔�1�֖Sb�؇�cLl�7�r�
K�1�&�˶ռ.�0���r�ϔ�aFL����r:i',A5�~K�Ժ�F��A��z���d
�a��J��)��h��vʻ����ר;)�uA��kԝT��Zm�����c�*a�C�����BC�v?����}�E���� �����a�W����}߭��D^<4vf\Q���7�.��~�hz����!W ���6�%�og��*��~�CRq�\��]L���� ��&�� ���dk�Cs����&V��@d�A�'���@'��~ <��A���{��4�~H:_�X���~PM)t?�F݉���|��`�� /,�~�G
�A��� �D�����#S荺�&%p�Ĭ���)��/��>�s�:	��n�F�ɶ؟s�/e*P)�f,N:�9ؠO���&�t�X8�[����:Ό��P�drA�n��P�9�:�m���O?��v�t����5H�-�g�2&��~����(0���%|�-�G^JH��#/��v� !a2Ɣ��o^M��� ��[�#��^b�����5�R�̊ɚ������Y���� ��LI�b��8��o������Z�*(�)����Swb*ʁ ܷ�։m�M���:u/��X[�ɴL|�b	]01��dZ&A�r��?߽2�wփK!DBm�M!�B�"��F����g���=�}i����±p�pӊ�~�}�H��M�~���tG�u�K���u@ЙqM����2�\�d	5�}�&�g-<!��]`h��
��}�}ۿ}��-k r��֩0r�� i0���f^
1U�<f���-��}����lÿ�^\j[�"�X�m�x�~�_�Im��1E�m����ML�������WoR��K1%61_�X��q0�������Ɖ�H ݰɍ-kq�X8KG���m����Β |���}�s�@�-����,�,GI��f��p�|��(���%(&X:�@@����Q|{���:*�����Y|�>,f2�!�
�8+��^�1�K�D��>��Y|4a�
��Lh�.����i��.���?�VT ����16��R7i����:4�+����cL��K16��f�Ѯ���11����N4A"����D3	�]6�^4�T	�j��cr�
%|��DIE0�|$J����'B�d����0�i�C��3'3� c(d��`@A��g���'����RFO�&3�����`6ӝbL�|ͦ���yy�lZ�c�{�,�b�{�4ϲ��O�c]0y5��'?H�țd�0<��g3=��\œ�w�MҀ���FMB�N6��5	19���kԤ}{�~A�&��.�t�!��9ȨQ��F�	�yHY�LC#g	�䄳< 1
  �,
A�0�$�,^d����T)3N(Kw����O�e.��+eQ���~�,��F�&e�q��c�
��16^R��2.j�W��E*
���6�0b
�*eq�[�d���1��;d)O)�Rk*e�r-��VAQL}�n[�&ƾ�7M�<��,^��$)�Ħ
�C��'n&�2����i\�7���7N�ꖸQ�IY�[�悉ٺ%n.��E��6yHY�PD!�5�5PjR�E���KY��6b}Äۤ"/��#�%nV 򛴞I�-q1ra�$D4��P���ͺ?߾���7"q22���a�� LM�_�I�	1���C�A��Mօ��>N�B0���l��0��h��5�
�"D�m�:`��IR��0��yIɲ;A��������5/)[`�Q�5/)oٝ�"���N�MGʤ��\NQ�j�(��&D�[��yI[��6yQ�}��A�&�&y�w�4��5U	�ew.���$%�S��w�Eq#2�X�F��cD� ���w�#2D��ထ��X��cD��φ'�P���G�N޲;Ϳ�2ob_
��Sf00�Ln�\5u��T{�)@�T�O���T��Fd�}(bdD���#HFdv����2`b�:Ŕ��Ks�ɸʰL
:~DfثN1%��݉1�0���
�lɖ��`��mY �p��!d��hD]�VJ
Gdؾ|�f�h����l~&u$B���M��/�|v���ͬ�z����z���Ճf6�LP�Y"�.TOh��X�P=m�
9��;�6�����	�(FcY��M�B���mrHZ%dBΙʔ��"����8����Mur]��#!��qM������H�����H�b?���H�bi��gǲ�zߎ��)JR����b���u�`�]ur1�F�
1�m3�SP��h<0�:�����v���4,��]z�#E1%E]M)��gE����#i�?>)*� �16mf����#`t�H8���3�H��?IV6��F��<~0�l�p�Z��L�R��6S鲝BYN�C������?3��,)J����7�N8�T��<Cu[ �p�.T�[�G��$T3N��3�u'x���O2N�����~C�}�yB�%D98� փ��G���z��zw�zFz����3v55�:B���Sg�����`��m�OC���gl���t�zF�`G/���M������b�I1(�)��c,�����zN[J4�>����1�ٴ&�,>T�Zi�����[�ZK�缥D��z֖K��AJT8��3�Ҷ��H�-%B$���R,�F�68��_��F�Yk_8NƄ�YU�[S
E�\�byS� ���4�^գ��˖���eK��\O4~���*e4UX:�Jc����RF¡�U��Ǌ{vV��6��#�jkBSSGU)﹍ �LYf��3����`��*庥D#��:W"H\8t+߾���vc ��J�Z
�cL)m�AUɥ#���Ŕ�D>�p�W�r۲�*N�JY+-�*��,U�N�m�AU)�Y11K����n�������e�UR��t%���F
���yt���0��~�?F�I�D����T�J��%��P�oJ ("�:��w�,$��z��� x�_'�%��(0�㏾a��?��M; x�\����\JPD���>+v~���z�Eċ��d��U�!�J���
r��s�G����ǘ1�ʸ2�
��Of�(�^W��QS<���|���N���oQ�bh,��4��m�<Ϗr�'�5�ϐz�9��_��UI�H~n�9�3��y�!E����6�[\��9��|��Ư�M��z=���� q8�笨)E�u*f�b|�^�"=Ä3<5ο/j]C����4�p���i��qz���B���"�dx!v~����<��҃`O�t����
q�RA�� � OLO���1�[2
�i�{���uȴSՎ��
r����"���*%01��UY��~��H�_MQ���5WPS�v�����^�s�w�+D14v�15���
�>�1�.��c޾_��fyヽl��t��mtPt����a|;�tD�Okk�w�������oļ�w�ۚ���W~�A)�����Rm��
���Ԁ�{������iG�c��(�"d�c�+�֞��0��ɸ��kvF� ("&b� �W��U,��cg�P��%��=1�t;F�ļOC�l�}:��Ѓǫ�&�u����m��qL���[�~zh��[x l�u�a}��rŎB�x���PĐ@GO(����"P�TE1E+v0�1�X]oط_�{��:�����׉(�Y0�1��֓@��P�XF��������A�f>�)��P�.���/�4K�sߗ����S�����0@$� �!œ"5����%�2��.M�����0r,\]�����=�����yV�ʀ8��&�W���$��\��ထ�Y�����@i6E)A�C���G����tsB�����U�D�W�`8`�^u=�S�~(���tsD��;�k��d��      {      x���˖e�u%�N~E���,�M��h["�U��w��a�af(�t<dQ?S��p���Z��] kaq�#cca��*�����sι䛯O�N���7_�~8��������������7�:]��t�����O��������|���_�����|�������?^�~x���o��B��������ߧ�>^����x}~x�����_�t�x�ӛ;߾����ӻO�ۿ^����������߾�t�p~c�3o��B���������ӟO�nNy��������7__��x:�\��O?����ͷ?��i��ˏ�燇����޼�����7_==<���/W����?ӿ����{�W��}��_��ϧ���O�?\���x���^t./i������C:��կ�Y�t�Ow���?�x���������˻���?�oӱ}��|ss���O����^�xk�����ѿ������/ӿq����M��տ]��]]��4�|��o��������>�����|�w^��۴m��i�G�Cx����7��w?�{��������t4w�E�e�����9_�~�s�m�_D\�_O7��o�?�����t�'��������Û_ܦ��O��O���1�V6�D)p1���Q��������)�Ɵ��կO��?�ϴ�Sw�_��o��~u}�밖To��B�������X>����˚��9]��շ�wO��~Ҫ?��9�tsw?�����J?��ᮣ��,n���7wW__����\����L�+���[}�����ǟ��ջ�׷w��_Χ���駫����7�h������o�?������S��ߞ�����mz�韹�f�n�׷W�<_o�jaޚ��0�����ۘ�������x����ߟ��?�����oϟN�ٓ����	W.;�+%q7�߽�??=���V�-�S�����>��a)��>(��c]x5�<e��7������1}�/���'�~�g<��jA&�ӾLs`;���J1���5���������o�n?|�����gF�s6�rpX�?������M�?�n�~u��M��+�J�U�W�M����]z2Wﯯn�n�����ur/��������^_}u��������Ҿ\�Wh��ϟ��@��=��Ӈ��x��7o}�k��/���qxU\�d>���q�h�ײm��=��=J��x�p��Ey wiɋ���ǻ�뻫d���I��t��9�������i�?o��_.��բ��^H=]pmj̑�Ǉ��$=6xAw)�>z���i����û����Ѧ��������k��������p�3��F��[�
:{(��g#��1��z���I����#�o�n�{j��駧��~���n�Z�6�/��_�_������c�'}���]�)��]녳�p}�B���ӧO���O?�-��},yl]���������W�����ӟ�n��=�[��� 7����������Y'b�ӆqn�c��1t���N<���/?޽�����/��=]?~��_ڑd�Rm|�[�R����ǫ_�_���?�x�C��3ϯEZ�#
�{����!�7W��t��c�K0^��bx�y�ӥ�>?"+j�u�~|-Y��xŲX���2�pw{���黫�
�U&��7��(n7�1Zgsi)N�9�ý9�{w�8�M���MK�z)�>�������s9˥��1�,ۅ%S���r\�.���Ϸ7��\���L��(	�m�8?���|r�����������RΞ?_��1]����)%����ϾA����ϿJ&2�����9�V�mFzݻ�SP�E�]a�޵t���Nv)���|4c����?~�����3٨���gy����t�9���D:$�L��������vG���!��N�����Z�tB��ˬC�쯝k�Ћ��!��>���6�q�c��|�~"�i�(�G��=����������O������k�-/(�I��ӏwi�W�t���������b}�g�s4�Η\��ݞ�����Ĝzz�l�7�ߟ��x����ϥ.J�K�k)�wO�ߥ�S�����g�5�KD�M=�����2����(^�������){���%�8����\��LFu�ё9	OK�Z�������z�Kt{ޟ��}�Z���:��?�����ҫ���f�ٟ]���ڄ�Ã�"�W.�e�#�r�����i��mp�Xì�uxx;���{�P|���wPY��4�B�,�V"3��]�F���ahg����߾�d���%kϷ�C^tl��˹�şZ�p��	�'MRʐ�������/�#|s���L�>���/oN?��?�g��\�:�s�k櫻�w�M����9�����+�i�T������O��w�~qs��Ie)a��
&���;�)�q�ǹf,�~�z�_~��)k�9_�;��nCʃ���#��x��.���.���H��!�w��KKݲ?� +ꯟ����p}T}c����5H�j��Bԣ�ϴ����!j6�2�����SB���q<�:}�1d/��[��^�?��݇�Ǉt�W�L���݇S�G�LAZ.��t��S�4]
ݵz��0ї�L��N�Q���ν��L
�6�3��g!9����z�ǻ������^����I�����O7[��{�5�_He𥴗x���|ޘ��H�.��Շ�}���SΊ���~��P�'���D� ��Y��ґH�1����3�\==Y��/�S��}�T���1]��H���g�OH銤�)�=��K23�1u�Γ�����b�k��U���'[У����+�xf��r��kQ��CN,�볫P5����Ϲ'�LŇ��ݫ��
�����@�����<�For�"U�G����i�������?�3�m#��#t���,6�<)��р�����X��S���^R�
��8q�GSU9,]������it}ϲ���?����g
n\�Vݚ����xt��5�]#� V4g��r��/R_<ByX���XF�����z������t~�~������~�u�ߟS.L��q{�䕛��՟��2Q�*qZn�}�	C����oR.}�����}���?�������<K��0Ĥ`3��C�|D�f�%����.M�⮍�C�]�W�"iZ��������|���Mz���ﮟť�1(
 �����}��O�<�Q���hV���M�L�?�ӏ��yON�����CC�]�)��ї����A
��37���a��b"[1�;���5�iK9��yx^��������4�֒�ߥD�,�椭��^��x��Dá�Z��g�v��r\AI�a[�Na����f��N�������_��s�����T�3�@a1���Ґ��99�-���ciT�oI��>�n�W��Ο2d��Ὼ�Oi�ӻ��c��I�Ig�籃>�b��ne�.�h6m��HW���q���_���	8��V���#�����6R�/����ˆQ8��d2��_����#W�=�uu��;�������� se����B=M�d��U�ժ�v2
���NS_zܖ�5���G{�6����C[ώs�!�S�s�����+@�C�W�����y��?\��Wr���)�^�T���1-��p�_x����U#/-���j ��3>�#2�H*ݯ75[�`i��=�F�HN�g�O9~��s��c`�.V(�I�pC����]7zþt�SVr��y݇�BS�Ůs���%F?Q֫:Y��ܣ)����0s}�q����Zw�[,��'�IV�����M!��?����� j�U�b��A��(81�h|o��d���۸�X���	�ǩ�Ty����`�M,�%*�ꨚ��6��s�56.�*dAΣ��N�03ݲ����C[�-A�"�$?������O)�EX��}�lOH�����%�7hu�t�b��׽���_��fP���{��/(I�~�Z�P������Dܔ:��s�\����&������2�4{�oc��^Xv�4� ⸼VR�\ ��wQ}	���t��(���fs�!��(ˆ�nf� _�^j�U<X![�J�}_��"�_�Ze�R���pw��z�|[e���P�(<U������^������D���    Pʓ!�'� >���jw�)��ʙ�E:�Fk����7�@~W�ԯTG�] ��2�Ji���Rd.�k_J��Z�,[��8xH����Y��ۏwO?==o��9=�CM�2�f�7%
�B1z��A��*��mf�F7I�:�bAA9%s5L��&;��d��o�O�v�3.{�&8�����$s�1���~�$&_Ql�QK�^O,~ʹ��.h�����Ҭ��\k(qKr�oLZ��Y/u�T�S���_�.aXh�)gp��{8"��46�����sfC]�Sp%���`��*��X��2��e��m�v4���r)�*[�S� �d���?�}H����2��	��u�����7)<����V���D�_�*YB+eE�LRd5�6^��K&Z�
�r]^���ti:=�Rױo8|��jx2�HF�雧/OW�<��?�᛻���������@��A����4a$�$�bJ�h������JmZ�xǫ�.��D�CY��v��ʢ(��"u�x��P�@����<>�q��˞�We���5S�c�6bd튊��>C2x%���	�jq������
�};Z��l4��{��,�e%᷆=�˧�����=}�˺`i��P�ݑۀ��)��7��$c�p<�s�L黦`o�\����|){��ۙg��b���R�}wst� W���Y���K�@�XS�2���߂���Q�F!��^���p@���
+ '담]d�^�� ͳ(�
C�d��5s�J��m����E����b�ri1�?�44�F;?(
��;���Q�΢�)� 
�W�Ф�T�r��i7�2�--����0KOE�����3m��֦��`#F������|P�ڹ / ��Jq��\Z�z� xA�\dM�%�8.�lKhRjA|}vIBΫE&�%FFP4Т�CG]�X��b�C�" �ղ���J�!`������e��<qS�C�O++L��'������c����m����񖀋��hW�%��;$��QwZ���l&~z9HmHЯ˻~�j�y6RL6��wT��/�`�5SW��TԐ㩳)��W��3͡h������]""[�I<,���7�pl��|�C̹�V���i�FJ�+i,%-�[��u�h� 0Z7����(^�5u�vP/5&@{M�c���p���o������?x@j���zMj ���jlC��#�3�z���6M�/��8<�^���^%J$j�p��nF�&�Q�F�o�1{�A���>�59'�a;n�ۿ`KL�@1����P���涃6��-V:�9�n5�(SЕ�L�@OJЫ����ϲ�Y��D;��'��Ӎ뎧Ӏ�ǌ��8 J���O8Q�tߴ��Ăn��J��m���b$K�Ct��3$��I{%����c� ��Ҋ��8N! �"��I�z��%%H2h��lL�3�z�����W�h��?������⋵����_�e܁�}�YipD���m�]^p|-5��c�@DO{�W��
�!B��ԕ��0fS�y�Q��@�������MYg���"Z	[$���i�"�,њ#8��6D���1]��*�먫��o�9	�U�nMlJRޡ!�A1�m�.��
��KM�m����D��O,ҹ�S~�[Ƹ\�R��*��Y�l�:�r
b�&��z.ɍ�d+Dfk�Ҵ؂hБ��뢞���Qr���S�vF�Q�w6��+loѦpNX4�a�Fft�|�(8{,�;u�9�o��D��&�V��ͨ#��1���V֌�K6�J���|@$�B�E�w��{�)�p0�� 3�~C���,#E����#��2M߭��iب�4a��[M	;���<�H�Ќ��aJ�6��aZ\�A)�� �K� 99ӄ��"�S�$�o0��T�6��AEl#5ݩբ-I��y��t1jF�4���.28����Y��U�}��j�'�^*��Ai����������!AU	2yX�(OE�zQ�{�]m��S���\ �(�X���@�]1ʍ��P�r�d� 90�u�-JOf���[���<�|�*y�옔1dWH��a�(ԟ7��G��Q�� �V��C��e���^�T=os�DY��X���Tj��]�ÞP}G����.b.C�omL�V�p �#K�e{�}���E��7�ot��`�6J�0�ه^�4WBz�1�]��l\��mnL��9%ă]5��<��h���k��1�Yz�2�y����!)f齃\�?��N{F�ڕ~�1��s.CY]0ܦ�x|Ȩc5���?UCBA<fEJ-�;�=�s>�	�k����/���5��e.QAq� Y��8cg2���I�h�zk��h���	��se�?؊z��QQϸz-���ȕqr���A_(}M�H%�}Oc��Iݒ�#�=�he�,ºRH�J��Ѵ���)���k���� e3n�[�M5���?~�JKQ��,y����ƫibٌ�~h\At�&��B�ܽ�j�$:hJx^o2)v�1�1�����
�j<����w�,y_�]+��\�3i�NUx�<.㻗r��Z���^��=&��,Nf��:c�����I@��0OM�L��p8�EF�����(Xȓ��k���H����=�"v�6���&%X��z��!�,o��j�����k�n2����X�<[�"j���$��=�-�$0RdD�*e��e~�7��\!�zȬ�i�g?�΍�A܆���V�/
x������		�U��TMT������Z�)1+%'��Ow�Y����������wHs���%��!'}�S��\�+��ZѠ��C��B��k��~��)�V��m�A�UÆ�y�{ڗ��L�5�D�	Y9e�!��z`I3{FvH�]-h�1�Ba�[��@�9�*$VRf}��[Q&�XY㞣$�l)=["*/�ݶ��me�&�ֆ�fZIb�__gh�oR�t��u�Ο��g����e%\0�s���ke�g'��*Q�o��u�v�W�d�h�˘
�K����p2�a��/w��Is�8e�.'L���������C�ۏR^��@_�D@�8���������պ�:-5�W�KY�:<z$�њ,�:�<ر¼%��d�DQ��Q�3�՝������\g"!�@*��ˡ���",=���>_{V9�2a���1�wXCjD��۾5�ь����`�Tq���"��KL�\ �C�S`��+C�j4]f�<�w6����KE ���Mm�1�a��FzQ
�|^l�+�8�n� �N�at��N��lD����^lE��.�m��y4~v��B[E5��hI�Dq���
vg_z_�GZj'3�'H��Z�����7~��u+ �U!��9�#�V�I�ŝ�r�$�
�n�S�c�ؑP+vA2�u���^��<u8��~�:���dK��k�b�8�L��5���*��N`���w��i�9� �0pF����f]��L6��K��R׌Zc������i ���k�/4-�͒wy���'Oz��(۸�k4e��L�k�����q,��&0k��O�S���h_���P��[O�������ׇ1�%�1���&�B�L�s#��~�m��)��kRKw�۞�Z�����l�(ݼ���`ZS�+7�,���i`k����"�Rdέ}���nI}�'۵A0�_I���A~��\�% m�{�n��^��̴��5��u���a_��PP�8Hxz�-��p&5d�sA7 �٭u�Wv�%G9Ê����4���ܸtE��`Y+48�e�pʱ�����
d/\�y<�u q��d�Q�F���d�_uXX�єAO��0��:���^v;�q��Kj��c�F�<�06l�p�h1&2�� R�?r4�ƆU�G;j�.t�-^�6����B�,'�};���ꘓ}�egXt�W�ϼ0�B@����ĳ��2♹V�\RPp��E�/L�~���&��zK����S��a_7pU����|b�q���S-����W�iN�.[Pkt�79jʮ$w���t[�`�Q�
�~�:��*�j���.�:��=���#��%r��K,dd8�\�Q������~~3 �b1��¢%�@zr��z�O    �!�N�^�p�|(�M�0�ṏ�-��d��i��J��Q��p���[u����G���d@���fn��P���皬�<hc@-��i�b}�L�wy�McS6*!�A순�4�LRʙ�L��CyV���a�Myߝ]�PQ���㊏a�ʢ��%�uP/s&R��~�1Z1��.=\+'g��r6���Ӈ���P�f�j���N\���x�B�Z��#wD>$��	ۥ�ሔI<���Q!����	�~�HY�4�u"$3��I1SNR �)�`e^�A���G-��
jf_���N��r�����s�&^�]y]��:7?Oc��)X���ߟ�|zus��� Ѐ�����QQ��MGMd~���[��W�J�������0e��꼷·�T�4�I��Y����@X"��7c5�t��ﲌ�d��t��ށwJ�����s���2A�L؄�Ⰿ�!3��.t��<d�Bpa[%n�D��n����*vF��\08h[��.<O�Ż�@����p@�\�^�$�%O	.��i�~�VpZξ�P�-H�	��d���Q�]`����dn�_O���"Y[X�.rAF��@�p���N8��9�]���k��'���d#��kT��Խ4���X�[�_�_N}�&�(�r�L?zm2�9T��j�,</*�l!�C@�����O����g��:����4���p܀��/\������u��A�dd46� -�E0��ݍ },/j�o�J	�A^��A���r�n�%)���]4�x}��6������!� Q�&eĝ��\�Y��-�D�f����Mp�|��Ȁg�w���B�5R�8D�-5T�E24(�_U/��h�K�ޫ���BK[�J�t���I��6�~�;86�]��Z��A�˫5����I�G����&ɺ{S�Ui�A�]�pԫ�̣�s�U\F�n�ꁕot`f�@��3u?t�����ZMNpl"�x][lv���������z�
��^W�>ߍ� ��;�/;�0
"�6fx7����IX-7vo�u�4=�]�R�rL�^�n��u�
�fV����ި7LH�87����0y&�B���������x�tY03�R�]�7SAߞ��������/n�/^�-e}�Q��W�F*x�&�0����"���͏�SP�����%�Y،���t�i��*�~���L�e[EY� �T^��-�]����[饊�?U�9����h=Oss���n�gL	3��m�;�@^oGL�塑)T.N�ЈA0	x�=Yx�X�.e^���kӵ��@Y�b�%TR��fO�:�Ο��{��A/��j�"M`�9�pu]5�G�W .�]��R����|��B�;|&O�	�:vP����yj�L��] ��Q� �|�	�Q1`�v��7ivu�[���yhH���;b���@S��+B/�&����S̿"l�)��Q���A+ ���!���&����b����an;p����e�
m
]��>�����c�j�X*��
ņц����R&���f]�R��҄�y���o�;UƳ�Xm:#�*_,���n`�f�o�Po��ȼ��d͹�缄�n�Ki<23|lQ��p�(O��yS��i�i�ᬖy� ��'��=���"P}N!"�t�f�X���ٰߩT��Zi�a���L�M���ujJ��7��t1�F��(���*���e�|��A��(�2��`�Z?ڷ��C?xmބB���ʅ��u&X�v����%��
=���>���H�0ٟhJK?��QHB�-��703��GL�9>�s� B�B���ڒц���>=>D�D42o�?A_%PxV[����
��:�ZZ ���DQs���`���=�Ck�W:j �&zYh��T��)�hU��')sj�2���7�,�tE�Q&�6fT��m���l�J�BW?r�h2b��^�1p��`��Hv�A =�84O��x��.*\�|��8�����M����:��5�^�6�E(/T3O�\09���a�e>d�;FN7�/���l7jK�M㾪apY�C������&�45��S��$6����F�̕1,�Q���RȂ;�HS �iM�/�I�w�0R�d�e_�T��5�~���֠?�`�~��=`�x�բg�� �l z�E��0 �3���J@��ͦ~���ֿP�d�����=���Ph :��7��b�#�]��6��Q�1ļ8�ϔ�-�����5�d��ϔG���%�s�������������h�ъFU��"[~H� A�9���5��zI�(8*��z��9t�`v��V0xɒ�P�ɿ�:�KZ�٦ʼZ�~�Gj��&�Dj�s;lqj��(u^���Qx��X�r��$͜�i`�I�{Ϋrpa�v���D�}h72����5;A$C�	�@k	�r�<	��Hw�d�t�ʄ� ���z^��޸�9�x7G�߲�3���J̗�?�~9PL)!�'a�lB]����J��1&CjZf���r�
_�@Q��6�e3T�9J����^!�T���	I3� ��ߣHQ�Az�q��h~�MWz)�SR)��j8�#5�EQs�Ti3O[شf��5�و�=SZ���R��^ze�{��Ԉ�Q������r��3�P��Fѕ�W����J2-�y�w�*����4�wE�_*߅������DJ��%�j޼
]�Fj��RG~�v��ȃ4�D�Q�zN�F�N_����]z��]ܥ��=*h�E�D渑�6�<j����" �tK����\�s��zH\�0\v�D��4a�� e�EU}S���B8FE|�uKe��o}2UJ@v׌���j��Q!��e,K���+�^>G�y�n($�'���[�Gs]��]��E|���R���^��mp�=*j,��}�tZL����yv%*�4A�1]NY��Z��S�Tvcig������)]��ĕz5Os��@W�������[X��!�1jO�s��a�O�����B65�fXYJ!шyw?���/6����^��M0�G&X�+�2�5����1�����>y�`9���zc�
��D�fr# ��r��5B9�QV �tUQ>�z�� �^ʠ-,@�z%g�����Uċb�ΐpN� fZ����Κ�aNǚC��:����i�c���& ��emE�&��?*��ђu?d]+$��E^*v�+�4}��G'�
�oO#>0HTB��Z��#�!� Tbtm2���d�M����� a'��xiʭ�;�67��
�v���15lԇ���i{��C.����ԯ���%�sOm��|ơ�Q����w���]���Fmhՠ��Z:]-��9f�V�;�L� -�ГK�/Y9�}���q�U�s~���eZ�E��1Ԟ����DAN��I�IA�$pni:@a4��C@�
'��*>�Nh�[��pS/�:aO�Z�p�b��-y���BC	2]Ă�Y4A`W�}�ѕ��^4�c���|�2D�`J"5ј$��X�� 04���P\�2@��p1�vc��h!��n��9Ġ��)#�����~$�(cN���)��y��dH�_H!�4R�����DZ�:�C��!�,����?9��?;O2WCR�21���q�����ź�z>���|kt^��+�+$H��%�Eɔ�C�Pf��^�$HX&c ������J��,c���<2Y˙�:�c#!�%�K��Qk-~YkLK��`,.g���#�Jv ;ȚX�VvX��)F�=��zC�	^�pܢ�^�#XKru�p_�hOs������qjZ���X�o��_�(E>$�Ā+��'�c%�~�~��1�rQJ�ie����fF��@�����#��0�rZcV\�2(p7��:^�&�00
Ezf�������¯�0J�ʒ�uDҖ n��)�tc%�H\�� @GKNGd��пƗ�)�Y��ȇ��e�l��t���]�hm��&�w��dr���J�͖�bEΫ��6�QC��`Z�bMP���KA��C#�w������Q�haNM�W�Gq�=6���|    WG�5�E/��6oZ,��Ou@e s5�4������;L��L�n+�z���9qX��A:*��z�u5$\�|KJ[�����������2 ˉ��k}�ֳ���h;%i���4B�JZ�`8A��h��f�ʽ��=W� wl��:%�垹����-m�-�;G@��� �H˙U���׽v�5�&s���G���_�%:=����!�5[�;��/MPxo�:��2��������KR:̌<*l��,�?���0��ᇡ!ğ��e%q�-[�j�9Ԫ,at�/�c�Ң�+�̍A����}��z�RIt�p3���z��U�z� ���Y	�<H�@�h2�D��(��:������/L�KN�N�]+��{��!�S8�e�Zb��}���&�~T1��-�<a����Bl���4:�ŒX��4�F�FzZ� �w���i����i[ln�� S�.<�ۍh��Bm �"l`����P�����~<?Oj[��wW�V���I$ Œ{NoK� IO,%GRF\��t��C�V
�~����h�x��<��������E�W���0��~�) ��X�.���7xR�"]*\y_H�i��ɾ���'iM� sT�-�qXQ�,`��#nPb�Ϡi�f�MR�(Y�ڲ=���XZRҝ��e�����������znZͭ���x���kZ��4[����H��t�J� �D�컆��&�*�V����"���;s����CFS�4��25��g����H�͎$���_�¸��dP��R9b���@�E0�I�T^�Jwcp�u]��n��|�_e��N#���/�O�e$�*�6Ž馊�ꋢ�`m��2�Ã�lZ�*��H��Ĵl��4N��(u��+$_��j~&;�Z�����T%�(`a�@�Yp�	�!�y/&��94�0���q�Ⴘ��LYM�+�tRWh���IG�ѧ�\�^�nS���ߺ����j�����]@���X]�+N` �	K�tlݗ��J� I�u����6�'h���	u�QÕ��A��(z�9Y]�4��r
Cfk��$���Z�F�z�
��k����՗[O��Q���n<�`E�-y��׸��c>]0?�!^��
���Ov]T��?֩yr�0-BC��H��
�
�-G��DN�á��8�;/c�Xױ��F�ܨt�)5%b0����K=SC�+#B/��0e�Nf2�M�M���%�V�e�J��M�{x<}�2�������91Tu�)=��0cM�a��e��55o���V��9�b�k�N�ئ�`O���vtt�z�/K[�HB�6-�h��˅-1�t�$P~y�|D���3S�9G�dB7~���8�~y)M�$�����;�>Du�.+��)��I<B�+�3R���YZ��*�ѷ�o���2�H���%�����|**^X��B\�lY>�Cg�r�"�|x��R�ƧV�H�F���pvJH���$��wyc��߾S�fQ�ַ"~���F�EQ$��KKH*�LG/SJ���U�(�B:ˎ��wR�4���O�A��e5�	��>e~�����ș5�V$Ϳkɼy\���Y=�Hߥ�X��[_!�F��l҇���H����Q�����ÔlZ3D���CK�c��A��2�ie;�F|>xiE�������Ej��� �M�]t�I�����m�%d`���]�k�)�R]ՈGf�0"2-E�ͩ~�^�O��ڰ[�"Q�S�����<\W��u����J�館ӻ��B'�Z�3�!5H�JWkR��ߣ����e�E�+Fg�,f�H����
�����4���'m#}�`���&����W����͓E� CD�Ɯ�J�vP��h�c�Z�T��]8�X�����{uC��ʈm����T�v�$xn����2�s�$���I<� �`��7��xO�!�%�Z���m�9".����s��2���_H�v��./-��`R�8�� �kR�vP��K��5�T?�wiXV�O�#h�a��B�������������q�z�i�^����Iy.:)K���R���L뙘�����Oe;�*~��j�_dC�7 �)�D�X��C�0:Z-f���v~�ҠTK��-��mQރ� �f��u�#�G%���5k�r�,��sS��8���9N@K.[,Nѐ� 8)GQѴ��B�>�kq�!]�c��gX�Q^�-�F���	�|�r%�ɾ2":O'-'�)�g�+�(�Jy�Ѳ[8�#-�8T�!���ߜ굻t��T{��y_��m��*��$��-����no����|����M��dW�lH\��V�F�hcQW)a5�Zu��rd`���ɶ�C��f������Zq��8B3��(S���<m@�0��|�c�D�պ�<j��uj/M��@WW�	^�.���h�;�C'�p��Cf��Ztt��b1��ZEBͧp�@W\�@�z�١Еj}�C�>Zt艉�'�d����-���p-:xO�6��62Nk����q�C��]-j��2�5x(,�6;x�1n�Ϫ�]�>}Hq㇫�>��O[��g�h���G���$��>��2`&��aw/`�'~�T��6�_�é�i1��V�k
�M-��w��C�5�	Ć��5i6���`�MZ��§�"��ؼl��i������\
�����[?f"ʩi<)�����FU�#�B���u�>�-��W��r�-:��V��Ɯ��F�)!9P����"l�h�6OٮL9�$�
`Z���<�����j�`}ҳ�5jP��,J#g,	��H�%ބ�ǧ	+�Ђ6���5�Ng��z�fh]�����Hz%QE׺>�C)=j��^*z^����u����ƺ(���m�����9n7^�5��8�X4iE3�L5֞�i����B,�6D5�!w6hr��� �t%(� g�gm&&d_F�),��� ����t?R�1F���u*pt~��t�t������/�+!1����«�X�Ӷ&�ܑa.�s%����k�d[��>�� 2�-���z\���[lE-h0JE\�z�<W�!O��@��'��\��5!�}�����I�K� ���>
0�mh���h҆�2��IŜ��!�8�t�ʡ�>3��L)#5�H󪅾l��Yu�����`�CӁg�|)�"��VޏY�A.P�D������5^(�)-���I�y���}Ga���S�q��%i��F�W��n�%��-o8��e��FW���� ��r��k�a.P�Z���$�=��q�ٱG�B�����Mwd��k0F���4(A �O�gh��:~��KHGs�Y F��'��j��
?*v�Bo�.����v��|ͽ�Qvm�E���@z�K
�yI���.�YeI+�ntk��@�\�&�X�b{�ԗ�8E�'�#�cx4��б�x��b*O��S3�6���K��X��l�"��B�p�S�<+�&�8�ȴG��X�dG�2L�����4�X�P:[h#qz��)D��{�F{��TF�9b��J�(�U[m��R20��i��h�
\�{k�IB��Yε��['e떈��_L"̴~4� �X��]�@�3�VV�D�D��{Xc��D����;��7�gRv'��e�G�/���Ҁx1��-j��Ӎl<���܅9RNl�=%xD#��/���*�����hL:�&&�C#W�ʈ��)�6%KE`��r�m���`*	y9t�+F2|��u2�.R��T��(ze��,�o�T�eԳ�{Y;ä-�7�>	�}L9�
M��%�K�Q��^k;уV��#q�Cf"�.ː�g��e��¼[�jY�aF�\�u��	V��>��5׸�W�pc�}CJ�,�\~R��M���?�J���ġ�I~b�V\B�m��"x>3�yi.����A+�iH�N���[��c�Ofx��gL�	�ءT�1]����S��k_�X|�������H�%(G��r��k*iz�#�ߙD�Y�Å������u�`b�3�1Df�0c$lu��N��(���j�0���$a�F�p��d�;    ����.y�:|�.a
8V�؎;��l��QZ��>�2Kȕ�� ��JK[�˲ה���"s��� Rk�S3�4	�2�*#T��D��rpQ@��8G4^4�L��t��p��u��;��yiNfHc���ȵ+4C}�o�l�|��<^-�(�/� �xz����6f��6��$�\��z��0��_�҄�%��a{�{�N����T�g�z	=^���_�_��-K5����<���'��Z0��#���k�bE6�j8�ܐ���P��p��8�醈�`is�e�D&�����Uv���|P��'\݅�A��fHu�;�J`K!�Ō�W�oU��D�?��DP,LTs����p�~�+���G�nb�B 4�4��e.X�j��d!fM�B�D���l<Rl����+��<�#�(Bf�8F+W��mJ��ԝ���j�]����5��8 �.5�tȤ����.�j�7�%1I��j6�<#
7XQ����� k��d��u�w��e'��d ܶ"����|�4F�=�:@���
�#��U+i��뤁C���Z��RW���ߦ+8vE�&��L���������;�}hl*Z�
\��vP&���_������΁�a������9�� �N�cE�Mׯ�������S˯S�ɭ�ns���q�j�w���"��Y6*�xt�����A��Dx�u��W�J֒+�j�y�M���Ъ&�v���XMm��љ���n��J���O����A��ϋ�Aŭ��hX�����pʪuAb~2���)[�drf0�i�po:G���UU)���f��ܖ�O_�`�P���{��A����Ǳ&�%=nH/�/YS`Lod�K�t���^��	��5��J7����1΂jJӹlc�O�Py<�+�,2k%�HiLK��=j�O�6L�1FtfmC���٨�A[�Q/�m�¾�m��*#(K��Ct#��s$��I����1�Z��1y4[�U���~��B� .gI�|��&%
WX��l�W��b��z `��Rg�$NҲ�\�J#�§�3�1¥��0���v���
h�*��u4e�s[ �V �`�3����Mc_�_���+O`�$��yu�ty�b���6�uH���>������G�
B�n	B���F/�W��-�ӕ��M�w6�_����B��'U����=n,��
o:�Q�޳�&�.�F?$���S�t�?���������tQ���<���9SNa��$�Y/'�������]Z[�J���o��xHy�UW�jC��+7���[;1�ċ�K�@��n���)l�(�c��"*TJbKK�B�G�k��y�*�߷A k�W���6Rd��	����\����U��\̖�-�I�=��nr�mЊD��̘��`W����槓ev�1u}O�˃)TF�S��֭��ĽQ�p���Q�ǉI��r�۱̖�0^�k�狺.�QVl����-�zN��	��^#w�&`3(�U��IAwk���֤��<:~�[���4/o����DZ�s� ��
>/P=��y�ؗ�����*��5*�AuA��:�p�a1P�p����6����`'c+r��R�=P�K������)��ժ�p��Z��|�I�S�k��yPS��:��/��0�Ω*�yĈ���Iï��:D e>d��Ǉm'.[��Ödy������������ �	BD�q�����)�4Q9�5�e���y��+$�d�b���8�,��4�n�%�5�s�uܳϽ�H���Ӟ]�l����ؤw�hh5�c0>ZaLgj�1V\zTorT�X�h�_����Uj.�*=\�k>#'�g�b��I��l��Fh2?�X��9��Ư՘y#����RxԦg���	^D9��fZ wdc�R�s���MP,��'�YSwP!�� wrםI�G�)���l���f��q���D�ݹ���r���&��c���YtĚ9K�ä��.��� \�DKߎ��x��x�hK!��jx},����w�&�%��q,���VX,=�p@� /�y�{>��_h�R�cq�%N5�#��&���E��^��mN=��+4NNp.�R}�I��͋M��N�@$G�G��\�]�g���;��d��}��
\Q4�eG�딨כ\H�s�{3�8)���:y��A��<=��9`��[�9�lry��S�I�b1n�@ɍ��9�݇u������m��Z�8�4�T&YT�p�x�]����)%��Pz0�!�:o1�5$d�:T�I]s>���QCM���J���q*��*W��"vG��
���6�_�N>��9�^9+�Gx���kF��xG2�{��+�z��ٽ�i	�GV���|T6��z^�8��xv����炙�,������t�\`<��?o} ��J����?8D�bSԋ�y�F�u'MYD�P��uɕ������~5n	��G̹�/�@��V�����S��]PO��3ZS��!t����[��xѐP���4^RJ�Df�w��Q�Q�a*�h���-��{Y��ɾ���d�^�Ё��3��7)����:%��l��X�����9r��j�e�g�h"��K_���r|�v�Q��@rsa��i�7S!P�
�Xnrsx	%�n)����㕚T��4hu��W��B.*8Z�x��n���&/��������Ji*����,@j���_��<4��)�W��;R�7�)�O��޴\��o�:�&>�
�$*�#���.����hê�\&W1x<J�k���=߷�9��Cz߷�y�^]�ʦ�B����n�$է�!��������{:�bٻA���@$�ŀ�mN�*1�a ���J
�|Ym�S�B�v�{�c�4�-��ߝ�(��Cz�`Kݬh���HT�y�B���h�H����Q��޾���1H�a����7c�����'�s^�{��j\���X�X�gv�/(�xk)4}�6�1������#ʖ$Y�M��z�]�U��S��#�u��N��$b�RF�a�#m��3Y@���	D�0zQ>�w]f����Ή����������VBbJC�WʣQK�nο��`cP���B#D�,X����Q�~�F�^#��,w[^��}�� _^��xj4�f-�]�O�If`�R_<���pL�W׬��'2!4�1��6�"�LSu#��F�o]��Y���J�B[?f�ʋޛ5zܢ���v�ؒ�؏R�	��bÅ^���k#�'�#�o��[;3 ��I�����Aͫ?��ՇId�8����K�b��l�{ؙJޔ��K(�h�R��ŝ�GBR�H�ܿ�s�5��sS7���u-^v�&G%���śA4����츄O��",fLzR�49<j��d{j��$�M�HP*�������Fc�#�	եl@|���1ˠ�fb\�����_Hw� ��']׭��VxB��3ã�[�� ڀ��4j`��Gp�����@��X�UuoT�9�����Y��#�}��d_�Y�;݋��ek/>X�u�����\+H݊�KN�/���0�=��d4e�ֵb�n�>
�w�e%��	�Lc'���^�-���!	���.w[P�t�dj������w���v�˻^�R8)��r�B�C=�g��v$��ҥ��o�һ������8*gP1੽�@w̈"O�h�<��B���+q~t�b��<�1��iIM&�>���=��m~������!�=Q^}�ᮕ]@3B��Ĳ���Я2)-:Z�ߴqn�a"b
�Q�}�MeW�n�8vf��m�@D祱y
aZ������k��Z�㥲����e��0��}�Y��r0��L�b�-Ga)72����7wi��=!�(�W��-m�`�4c~?2@?.XA������ZWxUB_��@��C�5-j�a�d� ��(O��1���ֲ 	�Ӡ��(?:���k���i;9�)����ʥ\Y��f�%�p�C�6�j6�G�i��M�����3Ԋ^��y�}���2�.�d��O>���9�eg�hP�#Pc���ڢj�F5�����uz�+EW���v=j�<V�ٵ���++E;����    ��1ih ��꒧��9�c���.ą���~`�1�K��!p0�T� Io&H��"�w�e�!��d�wŪ��N����o��MW�<�r�=V��H�)�ۂ8AϠ|��2��������ǀ���72��ɓ�a[A-2;#�NBhŪ�LM
U?�2Az �!���E��obl�C� T��0e��k��"ܴ!��,�Ш�K/ơG��#م��0�%E��l� p���|H�L��}�յ�'1h����^j`
hǇgzߓ���$l�X���p|b����V(V�o1�?7W���|��Q����qs��8[P�B7�>�ːy�[~�Q�ɰi��!2#�:wh����bQ���4%���3�b�W�#)-�"#�e� ]�f�-ͨ(k�u�Ѫ�eÃ�6���~t$��0@��s�u����m�%F��~�n��_Q�jz�#�H1�.�jh(f�#d@Ry̲^��R ʦ2Ƃp[�R�0���8�V"��������]��2��A��,�5��@J�H������^O�We�M}Q"֨jH4��Ԙ��2�xC]-�532�/���� ��&@'�6ﾮ-6����������r�
A�QWS?��֨A;�2;1
���&W�&BҳНx�r�"��P��R����"=x�\EZ����4)p�h��A2�~��_4*���Q�CDY})S9�M�7�����FDS!!ߞ��������/n�/^ĭ����V�Th ���;mIs�U\��*��v[ߚK׳u;�E0��u�t4��ؠ��aS�ǪQ�5�$�A�,Z�ډ+�Z�oD!oN��ꭴ��D:P�ц��Գ�Ĺ��6�W
�^tKL�塣^a<`	����:�ؗS������%������,� �Q̿��t��>\g�FzŞ�|�L�o��6��@��5����Cj\�s\.�[Hg�>W=bBU��"}�Z̙��h�F�E5M"�[���O[�a�6�z��S��{k�7�i��e��y=�H0h�z���8S7z
�W���7p�C��Yk��o��C� ���|fM��=P�k��ۊ`�B�	윕�1�<��^d�t�)�ɂ���w'[��!�Rc�@�ܸ��V/���#T�C
Փ���┚���!h�P���l7p�3f8o)��~AB�K���i�s'z�?���*�R�J����23��A��.�Z���?���5�Y��*�X�H�{���Uj:z*�M�6������|��z��~�>�\��nD�]W�2F0���%�q`��.�_��ʇ�����Q�e$"�4��w�˧�,�Fmd`s&�'4Q�g�}�Q��?��∷l��0���=9Bf8)��'��4���d}�x(!���7�>��H̫i>�t.B�%ҢfE^v�9�H4-ں�˽W"~'�o�D֋��g%�l���$J�1EC�(d��N͞���YPJ��x8J?��1�LU��
i�a�n��e}MZ�l��V�T\��`�{�4��q�vZ	�@�AY���@�L�o�Щ�N�[cC&�������(Qh���צ�$
��&粻=j����5OS�|�Z-�.\���(�#n�6����I�uD�_X�<|5+1B0�C��a��qN�Toq�-S0�
��F���1u��b���R�Ӹ��ޗ�oT���f�h�(��6�
A��0��h�K�u��a"K�U�-+��&���OQ�A���<FP�.K���+��H�ȎI�X��ټN��	 M����:Ј��Գ��� �5/�D�<�6Ȼ���z"�_u��WK��,�m���uj������L1]Z1�mȂ��qL��;S�� ^B~�˾�ҷ���k�bkL(�cI�z4.iE�*�3#�~H.A�9��t�f�J/������W�=�4ra�~�	���
ؐ��Y��%9�lee^���2py�ɿ��e��$V�w�M٣�z�F�F�y�c ��4��#<�NI+u�HNKT9����4/^��NG��a��]ԳS*s��0Ph�Z^�'�=�y��!�cM[���(��X?'rr���1z�`�e+<���LWn�B�)Ø�ڲ���]�d�Q"H,�N?z��!�x�!Axg���K�3Ԭ��f�N#��Na�hW(U�2-��&��E���>
2E=L�1�[-o�)N/ŁJ*����gL����l� ��̱eg5`���G#��3��,M����B|���yZ�Wq���0J��� iEʆ�C�z�V���D�<�ﭐyUû�çqe�]Z�l�?@*�������K_֭�ޔ-�T���a�Z�ۮS� � ��WJQ�
����~<�Kϲ����C��]���4Y9nP����B]��ZZ�{ZC/59�H@�u;wq�NG��
n��3�e�M@1BJ����)c]�>�)M��]=JB�.�M|�咑`��e���o�#�
J�,S]��5�ZQ��96-�u�'� =��+��;�l�ѕ��a�a�����T�V�q� n�%*j3,�}�&tY�3������xC+݋1�NYL����k`�讒�k��vOk�%�"2�~+3j���1���&�����i��*V
��?L���m�jpE]Y��,�~���x�Uˑ���� �,�l����@�'-хS���b�(�1۔���,FO�UX��L���`0U&��g�}#���y��2���j5�>�*!H@����'t`�A������肯��6����E�?�GnH<+��2�AF=�'he�I��ѡ򈭢�yt	��W�?��N[����V)�\����Ғ�?da+$��8�G^�D~��4������hu�\�A�ɿ��RX�������!)AL�tm���d�M��Ĝ��q/��pj�ݭ���&��)������pL9��d�t�9mUS/@�\�@)�F�\-�@����%>�1���H�|�������5Kf�R3Hl�o5��È�Qe1�^��J(8HOnb���"�վ�|�B����-nx�Be4�W�=��q�[�J|�6����Wŝ��-q,���&y�T�z1Z;��R��_4�����)D���{��@}��L�t����t�`���7�����A+�/'}��t�`�|�3ĚhX��4��/��e�_RD��Q����A-���jW����s����C�j���E��D��2�Y�߃���hH��<��\����ˮH(Zi��D�>9�Z��Q[)0�T��,s��!�*sӊM'w/a�]�i\�˿烫ѕȷF�e����PC��OZ)�L幊KR���Y�r2P��n��
�\ib��+(��#�бV�sG1�LmY�Gm2�0�{�J֊��;��ɹ���	����
'h�Jv@��1F�=�f�mo(?�ϳ�@��R���=��X�7)toOs���EJԪ�Yʬ	�^⯣���(�^���,�D_�^?:���"�R;�Ԁ�Q��f��/?�������!��J��]��f��k� ]Y��0���4�B��:�(z(K�בN["�!]�w:��<a$�$g���%�G�#�Z���4�2K*��s�N5���z��R����pdL����5#vU�4��Q5���*�H-��ʘ� RM?�LA��CC�w����d�P�ha|M�W�Gq�=6���|qWGȉ	C/���nZ̲`T�AUt�Ҋ�H�&��% CQ��b0Q_��x�i��F`�,�a��̆�(�-++f�[C�bʒ�o�i2<>��k�@6��rb���[ߣ5����Cة:�h�L�4B�J��`8A�����IF�������R���Y�:��6���+G �����PN�g6�c��+���4�K5�8Ng�z���Z�:%3��fK}'�	�vQέ�V/�	Uq�* �(���3#�RZ;(�ϧޟ��Z�G�04��s�pC��$��e��O3�[�%Ԃ���`�PZTw���������1C�]*Ą+O���EW���:[=����`�,��(z��Ɍ�[�5��V�\p/�w�_���0�/�9�9x�0g�Y͇4RL��k=��r��r���Q�l��8���b��
�I 9  S�tKb�?s�҈M����.���D5��Z��ִ-67�Z�f������p6Ezԇ�X﨧���c�o�'9������uz����z	J�$�.b$U$ŋ��HJ�]D��M�w����p|�(���0���gB�Ǭ�l0L�4z�M���i�Q8�����L�
W�=X��ɾ��(��M�QL�d�qŚ,��|��ȟ�-����a��$�<ќ:������%�--����2R������N~�Z%r��kp���^m�4���?)�ֲ;�:��2ݵ7@��%��a�DZ�VA��p},���r�)Xrg�Y�6�051P�_S뗟)G(��"�v4;�$BJ�� �C�ƒA)�k����C=�^�5;���V�wc�u]��n��|�_u�OC���_���0�́���<�/�0�Z?�"É1<�К*������ôl��dW�ɨu��+a��jf,;�Z�����T$*�(`a>�YY�	�A�yp/&B�94�0���q�ą�g��s8M]�i�w�Bc}-;28�>��d���u��UW�V���_V;����$�h���5���p���K7)i����/����(k|�����Pg5^�Ƞ�m�𜬨]���]9�!���Q����g-F#S=p�Mݵa�C���˭�P�(�M[7n	K�"+�<}ݫ[�1�.�m��fk��'wQw~K��q��4L��#9AA��,\�2�E���/�V����5x���o4��F��M�)уe'k��LI����LԦÔ�8��@P6]7Y�"�p�6jָ*�{6%����}��s�������E(���B�F�h�5}�]^	K�Լ�&/[���?��Ϯi;�c�z�=zf������ٿ,���=�o�2�F�~�-1�t��S~yz|D����3S�9G�dB7�}���8��y)M!)�����;��|�P���ˊxnf�K{yR�`�j�c�Bӡ�*�ѷ�o�'�2�H���h��S!�����rtk��9:kȕ����S� �ӱ�@�U:�sk,��pvJH���$��wycP�����/����k�W      �      x������ � �      n   �   x�5P;n�0��S� E��;�:0�5#=%B� 崹}i9]D�|?ꉶ�B��]���YZ�C �)`{�X��[���6�������(u�|�r�2��/���N'����lN1W��E+����RUHYb6�S=U��^��h^�d?;Kѝ,�=�}	Ǥ����w{'��������*���\6C��"7|{��*�A�#��h� s\�?�S�f��I;p��/����	�u�l��|���      o      x��Zˎ"I�]_aRK��RB���t�<���Ro�/w�D������Lw�T�QI�h�j��9��Hr�KU�x�5�v��^�`p�� ���U��<��6�rɆ"�L36���T�S��8yx�l����<mp�eM�Fa��8b�ah>���N��L3�����i�kǶ�Z0
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
�4y��!�Q<���@�N�L���2˨��ZueT�c�V��/oسD      q   �   x�%���E!е3'@xB/��:&��
G�h_�ٶ����˲�Ɗ����~%��;V �]������l.G�_c���=�Z��p��#�~F]�p�db����d���\M�Y�����,8|l�~�ȫ�<��	�3���J�D/I�r�,�G�j^/�ci^/N>�c̾T��󿿽�?��@      w   �  x��W�n�J]��� ��>Erv��ȉ�ǵd�"�RGT�n7)G�� �,&�Y�N?6�)�V��5[MR]]��SثϺ�埍,-;�rS�t��Bv՘bʭT:�Op)�i ��05�j��*�b/ث���	{�^ipHI�tB���/�Bv!���T�+K��S��DTr2�-MEU��3�Ҕ�P��K%mmx�q�ң��Li�G��^l�c�){?�!��ob��&��q��������^���r��W�N�\�Z�]��T�����؈W�ҵXa��y-�aR��|�MIץ�zJQόq��7,�?�!
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
����Gd éG7Z�@(��V��<]�xI�D��0�:����"�휟�V[����s�ݧhӉl�Z@����)��1b�yi��3��>}N�9:̝����D˃�w��U�p�tS��9:q��Ɠ֊P���R�#��6Q:�~�{�c��]��������?E��      p   �  x��W�r�:]#_��Se)"Ej�<��J�,���&!P��}�����*�e.�t/v%�M��.t�c+QK����J'�^=K�tC�̳� I�>��;����|�ӑ���Y����Q/�~��[I�}-�Â�gI���;KG��<���|�OY�M�����.��͕.�D�_,�ߺ]Q��lv|mM�/�ي�����F��)����|:r��$�3�0Ͷ�^��_-��f�=>b��_����pw���F6O�Ң{#�o����W�_:(�!KY���_�>��x�O�d�S�NJ���x��퇔��ֵ�l�K+_�T!�-�U%�=�mve	����d���36���Un�5;v/p#1���L�Y��Y1��r+	�J^��+¤��P�2"�q�K\��^�;ux]��Sz�7B� t@u���� �E���5�뿬�EN���(��g+E��gi��S�5J�R:��z���.�.���o����M�
��8Ĺ߄n��q�4��E�D¶'�ʏ�a�RXT��cTӡ�FTY4�2��w�եO5j
���e%��.#�X���[Q��*��j��fkl��9f�!{�~Zg렬 �1��`�C7��O6��I\�Q���l<MS�4�;~Q?�C���?k��6��(m�%P�8σ�©�
T]�x)7VJB��d����u/��8�Wˍ�g�K���kx�ز��zB���7V4���R��.�1NT`�XI�R�6��Gt��(�y��]A�:�O�UI��S��ح�c����{��O�y㐱c�%Ɉ�au'�Ơ�;��}����fk��<�N;��)Z�s�Zoj�*^+(O���>_ual��!O��c	�d�ρDv4�y�[@Kbo ���u��dҳL����p��7�*�zM���� ��;�|k��Wִ��7�ы�H�6h��E[TP�f+�4;���!�	oX"���ɔ%�,,�����kk%g�>�v�~��ΦI�=�e3��q�=���9�[���Zcȸ�<EW(�'�!�+9���R��	���d�d�w�e'���c��RpM8T�~(�Xc��m�EZGRb�L�ڎK�/���^�}#b1��1������x�'C�pk_�E!�C �{Y�}�
�樓�M��z�j
Қ�U�h�K�oe}��}�����.!hM�ŴNb|Z��`�֮/S>}���t�pHg����حz��W�s��a�>[.ι,�6�*�9����׮t��1���Y ��'��t����y�:lL�� ɽ�	�r�lk������u�3u�y�Tq�A���f����;k����N�G4Z�?^,�c��ߢͶ�+c#^�1d�����h��wt2��#��4$9�Xb���HL`����~��[I�0�l����s���#��|>c�$6�X �b����;��~CӭݺH��`���ڡB�����mB��gL�:�����6B���줰,�Op4K��ǉN�)O��R��[k�2�n��ZZ{�c��{��1����n����0vz�4��v�S>4��R{f�4��(I������,;n�I2��t�e��p�~F?���;�U ̇l==@E���S����.��Cq5�{O��8gW�t/�U��-�8zN�tL�A��)�.1`x�z��z7���X��'��h�O���#��6{#^�Z��h�˟zG��Hޫ����g�o      r      x�m�[���D��Sa�0�;�q\2S�u"��Y{�BH�\�OJ?�������6��g������5������g���>�[*k�OM?�w�E/a���75��~R�_4��|h�C��׵�wwUQ� ��o�&[sX��E�y��Eԟ�<~�����dm�X��oY�Ơ�C�'��b�Ї��ކ���9E:���h��ۤ�O��z�����T:j9j맾�����ۮ��nа����}0������4��.��Xi���F4��M6�N�5��.���.Oo���xl��.*����n���w���c�ۃ��orH��;���B�4��4�%æ�]��^{�hf��?V8�y�^1z{t��3_B'+G�3��EvI껥%Y=6����J�s��d����Q��������� ���4u}��w���
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
�\̑�&5T���!�۰gxYW���Z��qZ��ո9}<��F^ԧIa��{{�����!�#�+1���������V��v      s      x���KoI�'~��,�})儿ݏ$EIl�&U���^Bd���T�&U������ ���j������򋭙y<�#�̮����JU�/����~�rQH���.O�f&!�g�{V��G����
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
�Y�M��4&G���)b���'E@���'vW�7��<��� ����w\�Z|�	<�{ 1u<mGJ���ݰ0Z;�\?�o=�Û���5.�)�E[c�����?��?�?m���      t   ;  x�uWMs�8=ÿ�9�%��:z�co��D�٪��@$L�� -?;fj�rعo�47��}���)WR�e��ݯ_�n�l����,d�o�����:�,Z��bᙠ����L������/���F�쒅�L$8��;�J�~m�=�0�?�I���h��#�9��Y�_�ޚ:��O��k%;k4<��s\���'�vL�D�Βo������[����g�DD��@�)�j�)w?��N��j�W�޷J�,��Ώ�� cq��n�F�v�>��4��i52�Wt��+B�l�����Ep�x\g9��m��lm����
u���" �����n����(~����.$��łW��e��r�>?�C+q2�W��+��;
鯿<�σ�,�i%U+�Q�kwm $	~���b<}+M�U��7��ˮ����E�,�	����>g�\�Z� b|M@�1{���=�� 9�ID�1���^)�@��^�FxƊ��yz��Sv/��,� �s��6aĉG�U\�ht���Ѓo0��k���G�s������5�AW
Pg�:��� (�)�%{P��;�W[[�F� ��A���vE�Z�r�K�X��-�dK�^��[��d#K����~����h�}���حk�w
�pO>GD�Υ`WC��G�]��עV���V�%�v%8%� щ�V{�9���LNh��p>ÓD�~���ߺ^�	������]H�"�b*�a%��p�������W��)�G���s\5��(ɘe�UGuՀ���$2;M?���[1����Fa���"c�bk�Js����$'�#�=�q,Y��]����� 9�֭z�6��t
�Vc�I J�S� ���GUTۮGO����s�)K��{�����!:+;�!@���]6�O��*��:)�.���$ȗ�a\�gЖ+�V�|A��A5�X�6En&>M�;�Vv�l��"
�Ѷ���w���0%yE��[J�T����aH��o��Zv�d_l�E�j��9�s6	[�J5���-�=���ϛ��id�٨���f~���{!�qz`Fs�Y���/�"�wSJ$J���8��A4J�F#_�0vF��⨂"��loI���[5t�?��m3�W|�x[�u:	( �(C�0�6��EI��ń�S�0�����8d�E��S��O�1%_5rG���T���d
:z/�4a�<E��k0Q�-���u�1.�$�U�pL��O��;$�؇���}|��C��	d|�Pᴮ��ǷP�����O0�B-�ܘ�ŇO�R�J���$��~,Q��(�O�l�W�:���,K���+q��)���U5Ԉ��o��s��M�0M�$��
4�A�P �n�]C��Fb�@��IΏ�s�H����_dS[Ms��FJov��G��fw�L|HB�1Oz7��=�b�w<��JA�OX�Dcg9[�.u3.}1��t.��>��cL�� ��-)�;Hi��7A>+_B�������V�}Jw���/�C������buӝ?��q-�� -I�O0S�-`�K͍5Fr�`A�S}��'7>G�2�I>�&b��Tc߱
��{�9��D��}�)V�2��:w��n�Jg=J��������`TB���gO�}�i��4=�@��ܩ�۞�k�v<&sM[;������F잗?~��@v0��q�8Y�D�t=�J���d��,Zg�5F7/���s�_T��y�w��Vo
-u3կ�4��4��?�n�e�W��>4����MZ:��:c9,�m�X<p����5�2��/`��$����0�Cd�7�_L�E��Et�z��#�w����������i�n�P����NO�el�I��1��������XSm�?m�s�����͡����z�u�l�yd�v"T4n4� ��q�7� �)�q���tB6�J����j�����WS�'`3l��٪r����x(��C:�x��hg+�5:T�'�>t��KA�#���|�~T�=z���  �؏3�8��hk�:���v��bbBc$�F�t�=���u-]�o�&���,��I6u}��������4�#��������"���:>��)5�_�����r�      u   ,   x�3�tM,.I-��2�O���9��J2@L���R3F��� _�!      x   C  x�U�ˎ�0E��W�
�l��&�Z4m0`P��Vad1���ӯ/e��.���%o�w7�=&^1�%����Y)��a:���B�-�p�);X�q��pt1
V����[H�$l^��b?#�T/��@�4��S�F��SA��4��p�����S�T�6#c����Osg�w���Ꟙ> ��k�a�B��P��J5��Og*]@�����;�p>yK��NsY����L#���2�Z�|�4l��>
�pN���":��1\�=eT�dR��5�b-����hO�t�#Q��E˖ix�㹄+&��ox�ӿ��V����@]���b�|��,�0����{�.�M�%\�i%�
���^�P겛F*zx����HL���[j����������tHe���hc�8e���8����{{D�Z�rM.Җ�|�ҍ�
lv*�h���e�>�4������%J`XǺ�-&;`�;'���iW�Jt����h8�z�y,U�#K��F�@r��#�뭥�)�/q�S���S_Z��L���.j���[����l�,]�dX1�����-��F�ì9��yn�ח���A��      v   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      y   Z  x�E�ݎ�@���O�l�ǿK�3#��DY7{�=��'�8���[H#		�WEq�N���b���aԥ.n�̉�
Ri"-�)I�����ȉI����n��U�Si) M� T�ҬP�M	I��Z����a�+ve�c�Ԣ9��Z��P}����A�avFx�Ң`x�;^��GJ{	:�bI���2j8���
�gQ��GTUB*a�{<F$���(����J{4Ū�j��V\֗�t����c�.�܋�;��1�#~�Sw"�V1Y ^�=�.1cX^^�k�8�=�"/őI�Q}�4k�j�8�蘨1���%o;	�;WM0����u�5޵�sgH����H��h֝�fdG�o���p��_��l�l��{��k�oH^-u�4�?"WHb[ĻӃ�'$��#iZ�L+2�~i���Ȃ�����ao��
�GS���6��?]�x�T�H7V�o\Js��Y��oA�;�M�
>��ݧMd��m3�^��
�]���@�Î7nα������f�~���f%ޭ!�{��d����)������ΐ12Bkj-��ϑ�{�H���A��	�+i�G=c�M���C[���`�U�T�     