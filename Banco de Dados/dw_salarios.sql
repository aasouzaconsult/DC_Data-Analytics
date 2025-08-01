PGDMP     /                    {            salarios    14.6    14.6 T    g           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            h           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            i           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            j           1262    28394    salarios    DATABASE     h   CREATE DATABASE salarios WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE salarios;
                postgres    false                        2615    28432    data_warehouse    SCHEMA        CREATE SCHEMA data_warehouse;
    DROP SCHEMA data_warehouse;
                postgres    false                        3079    28395 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false            k           0    0    EXTENSION tablefunc    COMMENT     `   COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';
                        false    2            �            1259    28488    dim_localizacao_empresa    TABLE     o   CREATE TABLE data_warehouse.dim_localizacao_empresa (
    id integer NOT NULL,
    localizacao_empresa text
);
 3   DROP TABLE data_warehouse.dim_localizacao_empresa;
       data_warehouse         heap    postgres    false    6            �            1259    28487    dim_localizacao_empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_localizacao_empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE data_warehouse.dim_localizacao_empresa_id_seq;
       data_warehouse          postgres    false    229    6            l           0    0    dim_localizacao_empresa_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE data_warehouse.dim_localizacao_empresa_id_seq OWNED BY data_warehouse.dim_localizacao_empresa.id;
          data_warehouse          postgres    false    228            �            1259    28470    dim_moeda_corrente    TABLE     e   CREATE TABLE data_warehouse.dim_moeda_corrente (
    id integer NOT NULL,
    moeda_corrente text
);
 .   DROP TABLE data_warehouse.dim_moeda_corrente;
       data_warehouse         heap    postgres    false    6            �            1259    28469    dim_moeda_corrente_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_moeda_corrente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE data_warehouse.dim_moeda_corrente_id_seq;
       data_warehouse          postgres    false    225    6            m           0    0    dim_moeda_corrente_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE data_warehouse.dim_moeda_corrente_id_seq OWNED BY data_warehouse.dim_moeda_corrente.id;
          data_warehouse          postgres    false    224            �            1259    28443    dim_nivel_experiencia    TABLE     k   CREATE TABLE data_warehouse.dim_nivel_experiencia (
    id integer NOT NULL,
    nivel_experiencia text
);
 1   DROP TABLE data_warehouse.dim_nivel_experiencia;
       data_warehouse         heap    postgres    false    6            �            1259    28442    dim_nivel_experiencia_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_nivel_experiencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE data_warehouse.dim_nivel_experiencia_id_seq;
       data_warehouse          postgres    false    6    219            n           0    0    dim_nivel_experiencia_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE data_warehouse.dim_nivel_experiencia_id_seq OWNED BY data_warehouse.dim_nivel_experiencia.id;
          data_warehouse          postgres    false    218            �            1259    28479    dim_residencia_empregado    TABLE     q   CREATE TABLE data_warehouse.dim_residencia_empregado (
    id integer NOT NULL,
    residencia_empregado text
);
 4   DROP TABLE data_warehouse.dim_residencia_empregado;
       data_warehouse         heap    postgres    false    6            �            1259    28478    dim_residencia_empregado_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_residencia_empregado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE data_warehouse.dim_residencia_empregado_id_seq;
       data_warehouse          postgres    false    6    227            o           0    0    dim_residencia_empregado_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE data_warehouse.dim_residencia_empregado_id_seq OWNED BY data_warehouse.dim_residencia_empregado.id;
          data_warehouse          postgres    false    226            �            1259    28497    dim_tamanho_empresa    TABLE     g   CREATE TABLE data_warehouse.dim_tamanho_empresa (
    id integer NOT NULL,
    tamanho_empresa text
);
 /   DROP TABLE data_warehouse.dim_tamanho_empresa;
       data_warehouse         heap    postgres    false    6            �            1259    28496    dim_tamanho_empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_tamanho_empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE data_warehouse.dim_tamanho_empresa_id_seq;
       data_warehouse          postgres    false    231    6            p           0    0    dim_tamanho_empresa_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE data_warehouse.dim_tamanho_empresa_id_seq OWNED BY data_warehouse.dim_tamanho_empresa.id;
          data_warehouse          postgres    false    230            �            1259    28434 	   dim_tempo    TABLE     Q   CREATE TABLE data_warehouse.dim_tempo (
    id integer NOT NULL,
    ano text
);
 %   DROP TABLE data_warehouse.dim_tempo;
       data_warehouse         heap    postgres    false    6            �            1259    28433    dim_tempo_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_tempo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE data_warehouse.dim_tempo_id_seq;
       data_warehouse          postgres    false    217    6            q           0    0    dim_tempo_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE data_warehouse.dim_tempo_id_seq OWNED BY data_warehouse.dim_tempo.id;
          data_warehouse          postgres    false    216            �            1259    28452    dim_tipo_trabalho    TABLE     c   CREATE TABLE data_warehouse.dim_tipo_trabalho (
    id integer NOT NULL,
    tipo_trabalho text
);
 -   DROP TABLE data_warehouse.dim_tipo_trabalho;
       data_warehouse         heap    postgres    false    6            �            1259    28451    dim_tipo_trabalho_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_tipo_trabalho_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE data_warehouse.dim_tipo_trabalho_id_seq;
       data_warehouse          postgres    false    221    6            r           0    0    dim_tipo_trabalho_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE data_warehouse.dim_tipo_trabalho_id_seq OWNED BY data_warehouse.dim_tipo_trabalho.id;
          data_warehouse          postgres    false    220            �            1259    28461 
   dim_titulo    TABLE     U   CREATE TABLE data_warehouse.dim_titulo (
    id integer NOT NULL,
    titulo text
);
 &   DROP TABLE data_warehouse.dim_titulo;
       data_warehouse         heap    postgres    false    6            �            1259    28460    dim_titulo_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.dim_titulo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE data_warehouse.dim_titulo_id_seq;
       data_warehouse          postgres    false    6    223            s           0    0    dim_titulo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE data_warehouse.dim_titulo_id_seq OWNED BY data_warehouse.dim_titulo.id;
          data_warehouse          postgres    false    222            �            1259    28506    fato_salario    TABLE     �  CREATE TABLE data_warehouse.fato_salario (
    id integer NOT NULL,
    id_tempo integer,
    id_nivel_experiencia integer,
    id_tipo_trabalho integer,
    id_titulo integer,
    id_moeda_corrente integer,
    id_residencia_empregado integer,
    id_localizacao_empresa integer,
    id_tamanho_empresa integer,
    salario numeric(18,2),
    salario_dolar numeric(18,2),
    percentual_remoto integer
);
 (   DROP TABLE data_warehouse.fato_salario;
       data_warehouse         heap    postgres    false    6            �            1259    28505    fato_salario_id_seq    SEQUENCE     �   CREATE SEQUENCE data_warehouse.fato_salario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE data_warehouse.fato_salario_id_seq;
       data_warehouse          postgres    false    233    6            t           0    0    fato_salario_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE data_warehouse.fato_salario_id_seq OWNED BY data_warehouse.fato_salario.id;
          data_warehouse          postgres    false    232            �            1259    28416    dm_salarios    TABLE     �  CREATE TABLE public.dm_salarios (
    id integer NOT NULL,
    ano integer,
    nivel_experiencia character varying,
    tipo_trabalho character varying,
    titulo character varying,
    salario numeric(18,2),
    moeda_corrente character varying,
    salario_dolar numeric(18,2),
    residencia_empregado character varying,
    percentual_remoto integer,
    localizacao_empresa character varying,
    tamanho_empresa character varying
);
    DROP TABLE public.dm_salarios;
       public         heap    postgres    false            �            1259    28421    salarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.salarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.salarios_id_seq;
       public          postgres    false    214            u           0    0    salarios_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.salarios_id_seq OWNED BY public.dm_salarios.id;
          public          postgres    false    215            �           2604    28491    dim_localizacao_empresa id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_localizacao_empresa ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_localizacao_empresa_id_seq'::regclass);
 Q   ALTER TABLE data_warehouse.dim_localizacao_empresa ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    228    229    229            �           2604    28473    dim_moeda_corrente id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_moeda_corrente ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_moeda_corrente_id_seq'::regclass);
 L   ALTER TABLE data_warehouse.dim_moeda_corrente ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    225    224    225            �           2604    28446    dim_nivel_experiencia id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_nivel_experiencia ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_nivel_experiencia_id_seq'::regclass);
 O   ALTER TABLE data_warehouse.dim_nivel_experiencia ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    219    218    219            �           2604    28482    dim_residencia_empregado id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_residencia_empregado ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_residencia_empregado_id_seq'::regclass);
 R   ALTER TABLE data_warehouse.dim_residencia_empregado ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    227    226    227            �           2604    28500    dim_tamanho_empresa id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_tamanho_empresa ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_tamanho_empresa_id_seq'::regclass);
 M   ALTER TABLE data_warehouse.dim_tamanho_empresa ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    231    230    231            �           2604    28437    dim_tempo id    DEFAULT     |   ALTER TABLE ONLY data_warehouse.dim_tempo ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_tempo_id_seq'::regclass);
 C   ALTER TABLE data_warehouse.dim_tempo ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    216    217    217            �           2604    28455    dim_tipo_trabalho id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.dim_tipo_trabalho ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_tipo_trabalho_id_seq'::regclass);
 K   ALTER TABLE data_warehouse.dim_tipo_trabalho ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    221    220    221            �           2604    28464    dim_titulo id    DEFAULT     ~   ALTER TABLE ONLY data_warehouse.dim_titulo ALTER COLUMN id SET DEFAULT nextval('data_warehouse.dim_titulo_id_seq'::regclass);
 D   ALTER TABLE data_warehouse.dim_titulo ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    223    222    223            �           2604    28509    fato_salario id    DEFAULT     �   ALTER TABLE ONLY data_warehouse.fato_salario ALTER COLUMN id SET DEFAULT nextval('data_warehouse.fato_salario_id_seq'::regclass);
 F   ALTER TABLE data_warehouse.fato_salario ALTER COLUMN id DROP DEFAULT;
       data_warehouse          postgres    false    232    233    233            �           2604    28422    dm_salarios id    DEFAULT     m   ALTER TABLE ONLY public.dm_salarios ALTER COLUMN id SET DEFAULT nextval('public.salarios_id_seq'::regclass);
 =   ALTER TABLE public.dm_salarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            `          0    28488    dim_localizacao_empresa 
   TABLE DATA           R   COPY data_warehouse.dim_localizacao_empresa (id, localizacao_empresa) FROM stdin;
    data_warehouse          postgres    false    229   Ck       \          0    28470    dim_moeda_corrente 
   TABLE DATA           H   COPY data_warehouse.dim_moeda_corrente (id, moeda_corrente) FROM stdin;
    data_warehouse          postgres    false    225   #l       V          0    28443    dim_nivel_experiencia 
   TABLE DATA           N   COPY data_warehouse.dim_nivel_experiencia (id, nivel_experiencia) FROM stdin;
    data_warehouse          postgres    false    219   �l       ^          0    28479    dim_residencia_empregado 
   TABLE DATA           T   COPY data_warehouse.dim_residencia_empregado (id, residencia_empregado) FROM stdin;
    data_warehouse          postgres    false    227   �l       b          0    28497    dim_tamanho_empresa 
   TABLE DATA           J   COPY data_warehouse.dim_tamanho_empresa (id, tamanho_empresa) FROM stdin;
    data_warehouse          postgres    false    231   �m       T          0    28434 	   dim_tempo 
   TABLE DATA           4   COPY data_warehouse.dim_tempo (id, ano) FROM stdin;
    data_warehouse          postgres    false    217   �m       X          0    28452    dim_tipo_trabalho 
   TABLE DATA           F   COPY data_warehouse.dim_tipo_trabalho (id, tipo_trabalho) FROM stdin;
    data_warehouse          postgres    false    221   n       Z          0    28461 
   dim_titulo 
   TABLE DATA           8   COPY data_warehouse.dim_titulo (id, titulo) FROM stdin;
    data_warehouse          postgres    false    223   On       d          0    28506    fato_salario 
   TABLE DATA           �   COPY data_warehouse.fato_salario (id, id_tempo, id_nivel_experiencia, id_tipo_trabalho, id_titulo, id_moeda_corrente, id_residencia_empregado, id_localizacao_empresa, id_tamanho_empresa, salario, salario_dolar, percentual_remoto) FROM stdin;
    data_warehouse          postgres    false    233   p       Q          0    28416    dm_salarios 
   TABLE DATA           �   COPY public.dm_salarios (id, ano, nivel_experiencia, tipo_trabalho, titulo, salario, moeda_corrente, salario_dolar, residencia_empregado, percentual_remoto, localizacao_empresa, tamanho_empresa) FROM stdin;
    public          postgres    false    214   ��       v           0    0    dim_localizacao_empresa_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('data_warehouse.dim_localizacao_empresa_id_seq', 50, true);
          data_warehouse          postgres    false    228            w           0    0    dim_moeda_corrente_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('data_warehouse.dim_moeda_corrente_id_seq', 51, true);
          data_warehouse          postgres    false    224            x           0    0    dim_nivel_experiencia_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('data_warehouse.dim_nivel_experiencia_id_seq', 4, true);
          data_warehouse          postgres    false    218            y           0    0    dim_residencia_empregado_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('data_warehouse.dim_residencia_empregado_id_seq', 57, true);
          data_warehouse          postgres    false    226            z           0    0    dim_tamanho_empresa_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('data_warehouse.dim_tamanho_empresa_id_seq', 3, true);
          data_warehouse          postgres    false    230            {           0    0    dim_tempo_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('data_warehouse.dim_tempo_id_seq', 3, true);
          data_warehouse          postgres    false    216            |           0    0    dim_tipo_trabalho_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('data_warehouse.dim_tipo_trabalho_id_seq', 4, true);
          data_warehouse          postgres    false    220            }           0    0    dim_titulo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('data_warehouse.dim_titulo_id_seq', 50, true);
          data_warehouse          postgres    false    222            ~           0    0    fato_salario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('data_warehouse.fato_salario_id_seq', 605, true);
          data_warehouse          postgres    false    232                       0    0    salarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.salarios_id_seq', 1, false);
          public          postgres    false    215            �           2606    28495 2   dim_localizacao_empresa pk_dim_localizacao_empresa 
   CONSTRAINT     x   ALTER TABLE ONLY data_warehouse.dim_localizacao_empresa
    ADD CONSTRAINT pk_dim_localizacao_empresa PRIMARY KEY (id);
 d   ALTER TABLE ONLY data_warehouse.dim_localizacao_empresa DROP CONSTRAINT pk_dim_localizacao_empresa;
       data_warehouse            postgres    false    229            �           2606    28477 (   dim_moeda_corrente pk_dim_moeda_corrente 
   CONSTRAINT     n   ALTER TABLE ONLY data_warehouse.dim_moeda_corrente
    ADD CONSTRAINT pk_dim_moeda_corrente PRIMARY KEY (id);
 Z   ALTER TABLE ONLY data_warehouse.dim_moeda_corrente DROP CONSTRAINT pk_dim_moeda_corrente;
       data_warehouse            postgres    false    225            �           2606    28450 .   dim_nivel_experiencia pk_dim_nivel_experiencia 
   CONSTRAINT     t   ALTER TABLE ONLY data_warehouse.dim_nivel_experiencia
    ADD CONSTRAINT pk_dim_nivel_experiencia PRIMARY KEY (id);
 `   ALTER TABLE ONLY data_warehouse.dim_nivel_experiencia DROP CONSTRAINT pk_dim_nivel_experiencia;
       data_warehouse            postgres    false    219            �           2606    28486 4   dim_residencia_empregado pk_dim_residencia_empregado 
   CONSTRAINT     z   ALTER TABLE ONLY data_warehouse.dim_residencia_empregado
    ADD CONSTRAINT pk_dim_residencia_empregado PRIMARY KEY (id);
 f   ALTER TABLE ONLY data_warehouse.dim_residencia_empregado DROP CONSTRAINT pk_dim_residencia_empregado;
       data_warehouse            postgres    false    227            �           2606    28504 *   dim_tamanho_empresa pk_dim_tamanho_empresa 
   CONSTRAINT     p   ALTER TABLE ONLY data_warehouse.dim_tamanho_empresa
    ADD CONSTRAINT pk_dim_tamanho_empresa PRIMARY KEY (id);
 \   ALTER TABLE ONLY data_warehouse.dim_tamanho_empresa DROP CONSTRAINT pk_dim_tamanho_empresa;
       data_warehouse            postgres    false    231            �           2606    28441    dim_tempo pk_dim_tempo 
   CONSTRAINT     \   ALTER TABLE ONLY data_warehouse.dim_tempo
    ADD CONSTRAINT pk_dim_tempo PRIMARY KEY (id);
 H   ALTER TABLE ONLY data_warehouse.dim_tempo DROP CONSTRAINT pk_dim_tempo;
       data_warehouse            postgres    false    217            �           2606    28459 &   dim_tipo_trabalho pk_dim_tipo_trabalho 
   CONSTRAINT     l   ALTER TABLE ONLY data_warehouse.dim_tipo_trabalho
    ADD CONSTRAINT pk_dim_tipo_trabalho PRIMARY KEY (id);
 X   ALTER TABLE ONLY data_warehouse.dim_tipo_trabalho DROP CONSTRAINT pk_dim_tipo_trabalho;
       data_warehouse            postgres    false    221            �           2606    28468    dim_titulo pk_dim_titulo 
   CONSTRAINT     ^   ALTER TABLE ONLY data_warehouse.dim_titulo
    ADD CONSTRAINT pk_dim_titulo PRIMARY KEY (id);
 J   ALTER TABLE ONLY data_warehouse.dim_titulo DROP CONSTRAINT pk_dim_titulo;
       data_warehouse            postgres    false    223            �           2606    28424    dm_salarios salarios_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.dm_salarios
    ADD CONSTRAINT salarios_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.dm_salarios DROP CONSTRAINT salarios_pkey;
       public            postgres    false    214            �           2606    28546 4   fato_salario fk_fato_salario_dim_localizacao_empresa    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_localizacao_empresa FOREIGN KEY (id_localizacao_empresa) REFERENCES data_warehouse.dim_localizacao_empresa(id);
 f   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_localizacao_empresa;
       data_warehouse          postgres    false    229    233    3259            �           2606    28531 /   fato_salario fk_fato_salario_dim_moeda_corrente    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_moeda_corrente FOREIGN KEY (id_moeda_corrente) REFERENCES data_warehouse.dim_moeda_corrente(id);
 a   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_moeda_corrente;
       data_warehouse          postgres    false    3255    233    225            �           2606    28515 2   fato_salario fk_fato_salario_dim_nivel_experiencia    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_nivel_experiencia FOREIGN KEY (id_nivel_experiencia) REFERENCES data_warehouse.dim_nivel_experiencia(id);
 d   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_nivel_experiencia;
       data_warehouse          postgres    false    3249    219    233            �           2606    28536 5   fato_salario fk_fato_salario_dim_residencia_empregado    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_residencia_empregado FOREIGN KEY (id_residencia_empregado) REFERENCES data_warehouse.dim_residencia_empregado(id);
 g   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_residencia_empregado;
       data_warehouse          postgres    false    3257    227    233            �           2606    28541 0   fato_salario fk_fato_salario_dim_tamanho_empresa    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_tamanho_empresa FOREIGN KEY (id_tamanho_empresa) REFERENCES data_warehouse.dim_tamanho_empresa(id);
 b   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_tamanho_empresa;
       data_warehouse          postgres    false    3261    231    233            �           2606    28510 &   fato_salario fk_fato_salario_dim_tempo    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_tempo FOREIGN KEY (id_tempo) REFERENCES data_warehouse.dim_tempo(id);
 X   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_tempo;
       data_warehouse          postgres    false    3247    233    217            �           2606    28521 .   fato_salario fk_fato_salario_dim_tipo_trabalho    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_tipo_trabalho FOREIGN KEY (id_tipo_trabalho) REFERENCES data_warehouse.dim_tipo_trabalho(id);
 `   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_tipo_trabalho;
       data_warehouse          postgres    false    233    221    3251            �           2606    28526 '   fato_salario fk_fato_salario_dim_titulo    FK CONSTRAINT     �   ALTER TABLE ONLY data_warehouse.fato_salario
    ADD CONSTRAINT fk_fato_salario_dim_titulo FOREIGN KEY (id_titulo) REFERENCES data_warehouse.dim_titulo(id);
 Y   ALTER TABLE ONLY data_warehouse.fato_salario DROP CONSTRAINT fk_fato_salario_dim_titulo;
       data_warehouse          postgres    false    3253    233    223            `   �   x��Kr�@׭ä�y����0�ĕ��#�Suk!�Q���=�t�Jn�*n�j�N���~Q(�7�@�P��oc��P2dR1fR3�
��B�tS,����)F服�RtR^P�Ŋ�mM�VlH�Ӓ����]����rɌu�9k�%돬b���l��a[d-�[^���}�G���8r��%�$�8���y��N�r�*^��>$���4b      \   m   x��I�0�ݏA	3�rLl��r�D$���Ԫ���J��DJ?��B�c�6�馶�I}�UU���[]�{2�������&�mF\k�k�)7]�z�$��&�      V   !   x�3�t��2�t��2����2�v����� 8f      ^   �   x��In�@�����D��L��&DI+�?Gjg}�²юr�I��R���F�t�*��j���������2G��<�K�߲�0�J�UV1d��4��\�g�3�N�1��W����E�,%�-W��M5K���K�`���w<Fy���9G��|�6�Wl�S���7l�
��`�O��V��B�X"G��#)T����RhH�bA�w��8Eϵ+���[Œ;7+�w�}H��;�      b      x�3���2���2������ �d      T      x�3�4202�2Q�\� ʈ+F��� 5�      X   !   x�3�t�2�t��2�t�2������ 8|&      Z   �  x�eT�n�0</��_P��q��5`A��ASQ�H�E�>�cK$ugvgwv)`{���F�,����~UN	+ߕE�|�Z��G�Ft^K���Ub8l�����(z3'!�C0>]��5
*aw�J�I����ޡЅ�JzT/�\����§s� )���KN�N���s���ª(�AZ�G�t&d�S���2�O�PA�Ԑ�ߤ�4�G:-`�Ta�ƍ��#JRj֣4%f-�"���yPR���چ>{���!Z��{!D+x~;����~�*��]15��6w<MV��0Ї4b$9ϥ���"�`ZJ&�#p�Dh�;�_��z/����7���ڬɃi�pގҏ����:��NN��b����?��:�'���Q	?�/�y/a�R�nx�3KR�SQ'u��K���5�x�ⷥ��m����������      d      x��]g�]���}�������Ǆ���e�����h� �?��'�'����������V����?]M�r0��hZ�����c�~�A�Y�<�Oh2�����#�Y�t�3$ǩ���A&���i�F��"�?�C�K]���C�ɩ�d���>7����%�"��BZD'^U�_� �!��_/�Z]=�����\�쟑���-�0���I�)��ս9��R��y1��pV6��pQ,t� �B��^�Cy�ILSWs����ucU�����[���p�ma�Q0�C�\YF��.�ӱ���.W�W��m1��,\��%.46�b�����.F�����Gi�kXO���E�f�5��[�wҧyUh �#J]�1�#Hp��F~G�������.��L_=!����C+Ɇ�vF��6�co ����4�����R%� �C�(/�Iu� yfǮ���1�5�j�颇�L�P��������jn�V�T��Y���wHj�T��@�	�1�����|3g����]�F�X���m� ��W�䴎:�uK[�g(.���ڰ���|�"����%�)n萖ʢ�+���G$vĞ�Y�]`޿���,�r��#�.�5�̕���	�p2vx�j���q���E��.����+*0���wIt1�B�c9�XY��J�ՀS�T43(�1\�[Mx>1��J��.X|o���M�����|�Ark��i�b�b���`ۃ�؈r7�>T�vq&V��z"X$����
��i��~�œ}��O?�.�i�:����iw�P��UX$W��0�\�K~E�R�=�Ҥ�z3��@����{e��f�E5S��y^}R���с��6�)�B�R�H́��R3Y;�k��TC(�漬5��äk3�S1]�3��)d��8=}��R_�h{��&.�vڟ�?�x�QP�,�d�pU��2d��5�\$ ;)Z����������u5�5����HVܮ����]
It�}�p_��;�sA�0˓2t�{J�]�(�t�{t15�)�a�?�>��m5�9[rs�9���:�58G^!����yP�NJ`��ג�ΥQ�(�8�GX�|3Y�����ĝH�,&0���l�C�s�7�Z��:E|���G&��'4�����%M�9[�$.�K�e��dѲZ�X�ð�X�G�zmP�	���~hr'>�����������5�jO��;���G��#M}�� �^�f���b#��D�:}����">|�h5����uکJ8���C�ؤ�j���5
�u	�����)g��|Z�r���v���)�ez��˪�y;�����K��W����-�q1ew*�ڤ"������^���n)���G�}Q燇��4?���`�Z�G܍��f���o囗�T�\.D� 03��qݽ�GY��s8q��&��C��V���o���Xuz7�s�l�V�c|�ڃϾ��9P��Z��ec}��+��S�zѭ�<��l<���ʐ/if��j��'���G�\,t��j��N0�����6^�����E�����-"()�g�_��j�!����u��x���𑏬�b��)�j���?����j�s,�Wt*��v{�_������7���&z�,�@��sPzL=�ّ�S����8*��_GE�����?�1���yɡ)��L����s��Dw[-��fnھx*Z��Fr����'���B �C��^1T�����^˼���][��Lw��ں����e����)�&�[��>M��1s��fk>V�(�s=([M�K���+#�Z��;�]�݊��| �f��*s�F��S�K*�v��cMt7c�M�)��,e4��W���� �������v�ӿ���s�UaԖQJ����Ex�}��zY��n���%�}^�&�k�zx�z�v0E>:����x|x������QYm<��S���y��G�Z��9���8�]Ll�  I��&�y�����N[�b�hc��ƅ�᠍DԶZ�{H��Ŝ�Ha}e�.�Nڴ�"��9i��?�H�����l��?���(BxD\��n��zM�������"�(v�����f��Eގiu��ڤ�*!r��p=�]��z�ȑ^���Z���t�)��O�V��C�e:��HM�]zt3��]g Ʊw�kԴK,����I�3'��:�+#A|$�m�=Ǳe5g�^�Q�$B�� ]�Xn�ޡ5�oW]�l=<�f	�uv)�]�i=�6�Y�h��b�q��6��S�{2�`:�r��u�hO�~��$�w��T��
�%|���:+���FT�Ed�2����>�4�R&#-�<�����{L�������^��qf��QV�?Ѡ��p�D�G~-%��&X<�������N��YnH�{�vf���~�F����H�w���I:'�:�T7f�YԸI������h4�~�F�󂅍2�\'���Zp6N�gj"��oo
�#��ϥ��ˉ?_���&��5���BQb�m��5ə"�����|��+�yx��]a��O��3��9��+�a������+c-t���b�����jn��`φ`�2ZmM*����ѓ�&W�����:/*.��ټ�5������S�u%�b�'�X�ܵ>r]+t��wz�s�ڂ lU��W��QEc����nG���U�ӟ�g]���H4"�fjri�Y�(�Z=�ŋ&��A>����b��0[V�:a��i�	�e.�C�l�-6���M�������	����!�>Pl5��I�f�l6$wvl��1�;0�o�Ѝ���sk���{��6it��Nu1��~���*����~��@]Ll�QE�i�����XC����+��R�NT�d��mS�E*���}�5�Fbf��)�pK�� BVb3��U�3��I�>Q��lR��`KI�������`��%�ˏ������f�O���\���c �-�7��э�NC� ��K�9gt�3 9"��)zdE��=F����sQM��j�s���DW��E6ۭ2��:%2t}p�3zM��Sř��]�в�U�׉��uZW7�I�	��>��ׁ~B��6���{�VSU0��;���T'*znczI�ɽ��:�\��=�2�0�aR�A�:q8s
eZ��^�z�m�6���x��e�r͂xi&���R�,��rx�`����K'��3��}>ZDm���7;ˊA�ָ��s�>j���DKv�ō&~n���_�N5a�����Y�h5�#�dN��S�c��Z�?��y�Y����A�ݭ^:�x���&%���Ifw���z�G���7������`�l��#8G<ܹ�������Ⱦh΂WG�Ơ�zPz�d���ˤ�]�t�1g�^�*���˨ʥ�b��:��+E����*um���EԂ�M���L��YTwr���������q����s�����D�_�e�k��y�Ml�)�m�j�{(o{q5��K����r��d`0F�rMC��WIK����Տ6P�=���\m�J���z�딨O���Q��Ɔ�{��T���CZO�]8A$.�v=�^!�`�?��h׉/�U�G����v�5�oWl��X�.6���jK?r����������j����O��sT]x��۝DY~�t��k�湍�-������y${]_��$�ҫ���a�o��0���U�N҂u/nF�㊰�I���'n�s�@�N�Ӥ���r�^�}>�^��Ď�D���������K55����9w��zc��#k�4:�.�o�c]�lLl�3Y�Ǉ�Z��]\���"o]-Ƶ�e܏��|;��S�	�V�B����g�J�.�~���})�P����&�F%���w�#����nkϿ��X���$�!�@|5TKs�;�2�_n��cg�)��Θ]�l)iZ��1��4!�ǰ�稹Q��R�-8#}"2�~�0r���9<���+;N���c����C
d�#y�{b�w�8� ����}9�	*(M���͗��E���'�̡n^=&ևg�gZ)2����/!�w:�S]��K�Y�4^'��|��W���b�o�� z  A��2W2MkD�_����볳��(#�a���>;�j��׃�"r��?�L�KK�БF_=��s�ѯL�.k��"W�}jF��Ml���|�e1�m>��3��6)j�Y�D��D����6u砾5W�F�4Ds3�	r�Z���>b}K�1��NejA��[��Vנ.�ѫ�b�
���9R����6�Z��:@�I��V�p��@2s즨g9�G??�v��c��<D'6R�_�YE]Mt��':v�l�$M���W��]�!#Ǯ��$o��U��_Z�i����8?��Y�M��j��y���J2r�}�~�|F��QT��+��oD(�m�u���8�n*L(��S��c5Ć�Q.���#t\"]>��<�Ѫ�R�����m��*_�X�������ї����+o\bO}�S�ꋟ{�>��W=?�k��~��y�	�&���E����QC�_O�C���Q�}t���A�-J-e�˯(Ӵ�ɷ*�;�50�Oŵ�7�o�=7��-�D�� �Lm5�S����L�S����!�Q�/��Ў�AZ���H��%2��[4�pf�:�j��W����:�f�t�؄E����n�e|�i����N�O�=K�n��_`U�׌��`l����Ex��G��K|]�N���]�E���	�F�GZpi�Ӿ�n�U�Cc}q��S��wi6l�#�����3o7x�ym�	��k��
1f,���`LBL2��r�c���*��}����c�G�d����5I�����~�`�'�k��ތ����*Ԝd��c�Q��$��zj�B�V�' D�A�n1/O	gU��)��j�e��?_@Βhd�qd� ��Q�[M4�5��k0r]��<�̆�Gn{JWs�+P-x~6��C�g��/�Z�
3ȷm7��	.�'V��?��&VjSZ���Ĉ~��g|��C"�Qd3�A�g	��k�� Շ.��K���4#֞+"]M4��2��>gu5��ץ=u�?��-F��n��	�t�l�0�J��l��2�5�R�l�<�ae.#݉�Y,�ܼl�%ࢴpd��ǃ�� ����1����d��6ۓ���H&�vI�j�������m��z{����|m�Lz?��:~��\<����z��mt5�~*�`�I�Lҥ��(�4h>P���z!�]�L�G$�.V����fE�fY����36@�˴M�?�&N�u�1�s�gcoMZ¯'2\'2��Qh����ҹ�8�n��Kw���Qۧ�2Kw�K0��>����+/�9��y�)å'�ݐ��!��KE�yA����67&�3]�e�"��j����.t��9gǉڋj��\B��,q�	�[C��O��bQnF��s�z�!v�v�s�8�J�n9[dӯQS�MV��bth��0����_�gV�2����)�n��t.rZ���vդ*$�Z�p��}o.�Dů�Ѿ,qǈR��O�S���M�y�,ޥ3��f�{�p^|}�<ŢY�	[��3�*�,�QWR����5"&�~�3�-�v�흓^-TA?��SD7�ٸ`�d���"�9�����Wq�������T��R�y^��8��$W9;9_*z�J���v�1��w՞�y5��}�ZD���ޯ��I�q�����ѿ4Xl8m��V��&s7�WM��d�_���42 {��[��Y�DWC_��_�C��٢߲�}����V�[7�O�l�2��e���Dg����3��Kv�ђ��8��+��q�W��(��������$�A8�� ����l��O
`�D�
ޙ-�k�U�W#����.7,����|�z�����tؑt�;�~(�Y�U��zǷ��IKJB���4I;��>�q}��f����z����a�ꋂ��kʢ�]e�iaϙ�|��W�^��!=�N����������>Nٰ      Q      x��]Ks��^�
��T�M.eى�H��d��[�Q�*����)[�����G7���i��8@�Io���\�r��<|���������ǧ�O�O_�n���[���w�R	x�����D���p�>����㫫Ǉ/��>�t��}�Џ���s&���?^啼��G�����͊���ۃX�"u�&�^�)|��/������B���ß��Aְ�n���L�/S�"�A(�%�^��B��M��mN. �V\���O�׫�3�<�����c�T�e�/����2N����Wg�_��5��ׯt7�2��ڻ�񻴭��F�n��V�����e{m�=�PR$���C��Ȃ�ն�����E�'r�d����*a���g�0d{�m���W�����+2�m�0sd�]���)�x����{�z`ZWv�����և��e����WY�mO;'D�x��p�i��i���||u���׿�|~��_*8@����ɿ����Z�������m���$�RA��b_�čQJ��O$$N
����}����>bY9R1yt6�U;���p�%�]B&���>< [ p�6B����:O��<��	�_��<~|������_�5���K�����o�(i+ps�%�U���{�z���栔� ���UcЋ������ x��*��Od��	���N,�@�u��ՙZ���R2"��"3�e���w��l����깴����o��~eӆN�tt�D#�1���N-�Xg�*�M����%g}w�B�i�
��O��7"۱ơ�K,�p�m��c`�92GT/M	�ͷ䇼��_d��oB� A��%��Q<Ug�PW���">f,>6Z���x��CKV�_~������/Q>����Z���?�gZ�G,�l���ٿ�vf�WH_tC�#v3:�j��ٸna���W^O��^��hg��듫�֌$�����".�3��*�H��\٤�*7,B�w�[�'r��?3b����hC�����4ͧ��Oq>�#�FZ��OV���O��r����W��p��������˫_��>}�[�¡wڍ4O�6^ÏO=��Y��|�K+(^��������J��_D�]�g�H�3JK�����<�ࣿ ±Bmv��W����H�����x���/Q����� ��6ߢˬ�����U��iA�11�{w��YI+�8zW�w�볽�ݖbP�[��&�*m����(	��{C�%���)I�w�󢝸?;b\G`N��!�[���s�8-=޿"N�>$l��vxxRG�q��L(�f=�F^�i�M:�R�u��̂7���9�i��.y:��r�$�!�Ag
��&���Ai#g��I;�R\�9W)�{�޼:��ۮn��y�z	G����*$���pO�B�(D�~��1#??}�
:
9ʅ���b�:�w�H.j��z�^"��_������vS)�?3Z*`��y�T��7'��������:�G:�(k�*����{�lMU2�W7�uѹk������|�����x��{��t��=�O�@� �*���Øצ����&la��/����Δ~��{o���M������u��m�j�¯���V����g
j��p�џA��~��uJ>@�#�3[��lK �y������F���x4A]�D#�F�Ao�Llb�T��+���>=D�v�m{�E�(�ǝ8�������3OX��B {s��ǘG0N��_6�1��Ⱥy=�;i�����ɖ�X�"Y�w����mJ�b%���x� ���R`��a�Bt{�r�@݌#�GƊX���;��ȑ?�tq�R˪[���De�\�����zM�d�$G-k��GBt����W�=Q��x�!b��G���Uǵ�F|3!O��z#JjR	�P")�^(�Vo�l����>]y��
Y��-���B<.KK��rw�2���JZ81���Ss����׋�[*C��Ҟ���A����a��M5�<q����>H>������$aӣ���H��^��b+Ğط�ڕ��,�i�ܽI2��ŏR����*�O�Ǧ%:#�!�'cYA�N�9a�VQ�Z�%�ڢ�Bz���C&gL�c"�R�Ig���L*�vAo������-�3/����#-IM�U�}+��!L��Ǉns^U����r����:�kJ����������^/|c57
N���t"c��v�S�*W2�?ަ�-�w�fعR�a;���$؞�K�|��{����	e��=7I��ݛ���8I���[h�Q%�+�R�MT؏���� PZ�1�䚅6�h����hr���m��o�ќ2[�VZ���Ek]��+��en��c!�V3ʴ
M����$��A�/
CV���%Ɉ
�Z8a��j������.�3�m�ͣ0��J��ۀ�����wOh�a�$��֢0���$�,u`P!g���L��h.ſ�/v��U�Q�B}ժ�J
�^�ZM��-
V7jn���V��,�#��nv�(N$f��/~�!��z�������؞�{���Q^�d�uNF]��+��/���c�W[R���vg��&��7�(��^h��=��RaAr,v��lo���>M�n��0%�1l��5_�fV���:����9�h_��l�FaG�W8&-0M2�}B��\cߏ\0Gչ��#�$�#], D`�(�s�!_��|])��2uDb���vl|`Sv��N�"f[U�p���������M���f�(ю��p;���F���\z��To�X�1��O�⅔@CJ+���+�?-��aq��yN����*�s�����{£%��8�~o�Ċ�L�l֫��8�q�I���(@�d����e��.���-�h[90��
�.f	z*Dg��%lpz+L�Y<ᙐ�8�����h�)�;S��B�f�,5C��o伵��+&�yBW����.rd�&���V�m��!��WR�_i�(�$k�S�<C�����=���& ���,�k�,5i�QZ����u~z�����Ѕ��Ua����E�y�xc��n�Q/%+W�P�+M���F>�t
8]֭2����~��ͬTb��^+'ڜ�pi�E���W_���CY��n�ך��x� �5�n^pT�2,bu��Oz>�}Q�]�9���\�ã"���3Ǿ?�gO���i����R{����eNl_fJ�0�ȓ"P능�VR0Ɓ�rck�e������xX����X�b��V:{�.��ޫ/F{���z�eRq9ŰiJ
R00 ��`��\��

�ϕ�4�>�M
��S�e%��x]�g��(��r'���I�Cښ�^�tHJβ�ݞ�]��3�s�U�8w�8+���~��MJ.�V{���۵RjV��Ωf#An��hT^0�Xt�}�[�ǽ�����*Z�/`9w�oȹrb#���iܾ2ټ+��]��,]|<V��؎��HX��"HE�,z$��	(�1�
vi>՛����$~o@����0r$i6k�c*�꾜Jx<_��Sޟ/ �����T�.�������K�d�1�g%�//�:nF�z�i�H� ��l���9�^hM،��Sh)�įz����(}Z���9�(��癅40X̓r �RR��S`�3��Z�)�3+�l���ߢ����}2�����g���LKv-�%K'R�HC�t��0����mޛ4\��Ӷ��Jef���T��=;�Y*	e79O��\�nd�m0}F�CI�SUۀt��>�[h� ������12�a�Q�!�(�rV��{-N�!L�YxSc��I�s��N��TzÄ�թ�IaY�%	)��Rl_	P��r@r���-��aє�"�[�oWu k���ִΥ��_dN���ՆK���䘄n�j`\Z�e�nM�#n9)*�s���5t�\�zIK����KL��a�(q��dѹ�n�c;��p}G�8@�p�^.�=�L>��[d%���>��W`cmG�'�+fk�"��Xn��/�"�d[H\�&�5��a$���D�S�C� 4�%��8�I�u�uz<a�E8���ɿ	�p�x�ĸ��t�^�Ļ�����E���L� �  �nE�'G���2�$�h��aüV+KH;E_������;Uv�2�'�r�I�I��؀�<z(���̋OȬ�&�S�&���KIsO�����$%A���EJ�o�)�[�V�k���$��j�Rjk�o���T�c�'K�⡔d�)bA�B�/��r�$�jG���Ԓ�����ھ[wؐ�a��d҄���0Y�I��[���8�A���^�@l�a��G{v�AH�g@����  ~<R��d{��]g1���7+�_��-��%���L�}h)QPRp�RXyp88��HUz�F-f� % u&��0�l"԰]���u���۠�����ܶ5���g��Bv],��N^" �c�ܬѵ�x;5��=��*Do��z�J)獴�Ơ̏�[E�$�p��ݫ�J���*t��^ޑ� ��˼�Vm�  6�p�|�U����}-��5�^�a���kj轸#n�'n���YY7[�f���?;"+G�sQ'��g'mw�[���� |7�?�M�s��cl(�"3�g���sv#�bl�T-����ZPjn���9�g��=�羗<��=,V��y��@�|{n.��ӳ�����G~/�@婀*O7�a�h�!�ہ��T/����@��9�}"�3��� ��@t��w�3��M�Eh��:I'!�@HG#�Ѭ��R��Ґc5�cս�I�RP���)�`�а{�����E��4Ò;�_e&��%Z�ޕ�lҙ�!HG9Q�+e=B:�?�GJ�o�G#)O���ƓF��9qW�U]9ǊRА�DdK�j�B�Wf���BXPHm ������(��mB��+@����s��鬎&���ǟ�����D���(��(T�!V����i�;��G\J�g����1��%?�@.c,L`�n��;IYJ�Ca�5R�e~��
z�i_�Ҏ�CJ�����oA6x���iw)���ѻ��1�E� ��gl�]֯��\<$	B
�`ڡ�P��lC�p;+��Q,b�P,�!F<�1`=��_=�7���V��=%@\���4~�[�O�8L��� ��l���y;�d"�u�ٞ3 w$0�'N��MƦ�L�82_�T��
�\[�9��	-����(I��F?;|��z>�m&��&�Ji!�k
�`��d�]Pۈ�Z��B���	�l�n�yB3P����M�DN�A� 5
q�0� �न���ԝ��pj�jb���� �R^��j �p9s���&�w�Z�e :e�S�^���>O��N2�e��ˑ�X���9�[)�?��i6�2�T�>��{���(�n���-dz��LQ��L�e�O��ˑn_�}�=:�S�>FOn�U���q��yن�_��:F/�W�J�e=tZ��o%�d��ڄ7�P#��쳜�I�/�-�|K�&�sY�iQ{�f�գ�@CfC�d`>@x�z_U�EЃ�,hj t���'h�9�vUU/";�׮�������g�Bz��96�(:#"��_��茈�q��qj񃰢�����	�@W�0�x�~�i�o��h����x��/eF�N���H�f�ZY�8���:�9����{������e�2/��ٜ�[o�ʬ���������Rp��_�|�)��#���]5s�b��G�]���ϔx��2{�Nh��u�C��%�7`H�ؼj}>Y�na֛�ۣ�^�n~;('�&#�:V=H؀�>]�i�&�F_�o��11'� ��H�N��j$B�@)��R�w��&�l���wc�����[~��d~�mZ�gg����q�kLZp���w��c��a��pl��Һ���Fe������էi�gTe?��v�-M[��%�p�䝟)`���"7��{2P��5�����q�of�-P`��];��#
��J��0���?t�Ϭъ���������!�ߵ���BXr\'�'Kw]N��y��</��<W���N���
PR�: �U�B"5,$�^�	HR-�%&�Y�m��֚o�ZJ�5M��R
�����&�M���� ���^�ɷ.�ٮ���Jl�RbM��/��"�����᭓+t����&���o�`Y�6U"�1ʘ��6O�`����Ѹd�N�U�(I����3�M%�ԥ����b���w&tV���Đ(�?Ɓ������K��w��"M�p4�%}wu��5�$�z���A��%<?	G��6�V����CA�fV`��}�8�黽�-{�!M��e��yi�<��iqI����z�t��
�:��<o>���Ixj�H���?7��ޝ�0;�5M�h�OR&
�j<���HT���:�D
M_�)Ն��������O_&\<�(��%��kP��oD��'�����nO*���R�E˽���J��f�R����(����f��̹��s�7�gI):�L߽���D^�g��W�ޤ�X�w3HI��\��>��Te
�Żm`���@�U$h�Q���i.;Z�Н�0��![F
���I��^H����d��h��-Z�2� ���+�w�Wp��%2�u�v|i��V��\qD���\�}r $-�: ���)o��P�ihb$Q�y���r���#("?nL�d���j��Y�)i�#?˨�T��q��ؠ��UBZ9B�� ��QJHx�!�o�t���Z����JN���*>���o��V�%Dm��N��ED����bmb�P[<��
���!s��&F���1g�~!���	pܷ��ް@�Q���=Y>	̚�֘I.}��̚�vV�I�|!|>Hz�+@�yZ��l��p�)pl������ O�����7dڦ3��y>H4�	�k(
G���:���Q��؞`i���:�v`��C�1�D ��3�pG���:v��;�V3�d��џ	�[35�����5� ڱ��w�q:���~1,u��J7��J�=;�����6�k����J B�oL�Ag�W_`(Gm9;� >3Aj>F���� ��O� ��Qa�80W"H��� ğ����6��ހA��Df0�l�7�"�hvv뮟"_��
!��AS���Q )��I/3����v�ܘ�@Hi_���af0��r��l�K��G�cb�K��D��xk�o�=U��@�"����O@\�,$VB�pN&J�bȑ�aY��H���e�����(erI4�{j��:�������l��     