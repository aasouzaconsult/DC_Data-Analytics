PGDMP     0                
    z            aula39    14.0    14.0 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    35621    aula39    DATABASE     f   CREATE DATABASE aula39 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE aula39;
                postgres    false            �            1259    35641    comentarios    TABLE     �   CREATE TABLE public.comentarios (
    id integer NOT NULL,
    comentario character varying,
    data date,
    id_usuario integer,
    id_projeto integer
);
    DROP TABLE public.comentarios;
       public         heap    postgres    false            �            1259    35640    comentarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comentarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.comentarios_id_seq;
       public          postgres    false    214                       0    0    comentarios_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.comentarios_id_seq OWNED BY public.comentarios.id;
          public          postgres    false    213            �            1259    35674    likes_por_comentario    TABLE     r   CREATE TABLE public.likes_por_comentario (
    id_usuario integer NOT NULL,
    id_comentario integer NOT NULL
);
 (   DROP TABLE public.likes_por_comentario;
       public         heap    postgres    false            �            1259    35659    likes_por_projeto    TABLE     l   CREATE TABLE public.likes_por_projeto (
    id_projeto integer NOT NULL,
    id_usuario integer NOT NULL
);
 %   DROP TABLE public.likes_por_projeto;
       public         heap    postgres    false            �            1259    35623    projetos    TABLE     �   CREATE TABLE public.projetos (
    id integer NOT NULL,
    titulo character varying,
    data date,
    url character varying
);
    DROP TABLE public.projetos;
       public         heap    postgres    false            �            1259    35622    projetos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projetos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.projetos_id_seq;
       public          postgres    false    210                       0    0    projetos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.projetos_id_seq OWNED BY public.projetos.id;
          public          postgres    false    209            �            1259    35632    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nome character varying,
    email character varying,
    senha character varying
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    35631    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    212                       0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    211            p           2604    35644    comentarios id    DEFAULT     p   ALTER TABLE ONLY public.comentarios ALTER COLUMN id SET DEFAULT nextval('public.comentarios_id_seq'::regclass);
 =   ALTER TABLE public.comentarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            n           2604    35626    projetos id    DEFAULT     j   ALTER TABLE ONLY public.projetos ALTER COLUMN id SET DEFAULT nextval('public.projetos_id_seq'::regclass);
 :   ALTER TABLE public.projetos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            o           2604    35635    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                      0    35641    comentarios 
   TABLE DATA           S   COPY public.comentarios (id, comentario, data, id_usuario, id_projeto) FROM stdin;
    public          postgres    false    214   +                 0    35674    likes_por_comentario 
   TABLE DATA           I   COPY public.likes_por_comentario (id_usuario, id_comentario) FROM stdin;
    public          postgres    false    216   ,                 0    35659    likes_por_projeto 
   TABLE DATA           C   COPY public.likes_por_projeto (id_projeto, id_usuario) FROM stdin;
    public          postgres    false    215   2,                 0    35623    projetos 
   TABLE DATA           9   COPY public.projetos (id, titulo, data, url) FROM stdin;
    public          postgres    false    210   d,                 0    35632    usuarios 
   TABLE DATA           :   COPY public.usuarios (id, nome, email, senha) FROM stdin;
    public          postgres    false    212   �,                  0    0    comentarios_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.comentarios_id_seq', 7, true);
          public          postgres    false    213                       0    0    projetos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.projetos_id_seq', 3, true);
          public          postgres    false    209                       0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 4, true);
          public          postgres    false    211            v           2606    35648    comentarios comentarios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT comentarios_pkey;
       public            postgres    false    214            z           2606    35678 .   likes_por_comentario likes_por_comentario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.likes_por_comentario
    ADD CONSTRAINT likes_por_comentario_pkey PRIMARY KEY (id_usuario, id_comentario);
 X   ALTER TABLE ONLY public.likes_por_comentario DROP CONSTRAINT likes_por_comentario_pkey;
       public            postgres    false    216    216            x           2606    35663 (   likes_por_projeto likes_por_projeto_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.likes_por_projeto
    ADD CONSTRAINT likes_por_projeto_pkey PRIMARY KEY (id_projeto, id_usuario);
 R   ALTER TABLE ONLY public.likes_por_projeto DROP CONSTRAINT likes_por_projeto_pkey;
       public            postgres    false    215    215            r           2606    35630    projetos projetos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projetos
    ADD CONSTRAINT projetos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projetos DROP CONSTRAINT projetos_pkey;
       public            postgres    false    210            t           2606    35639    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    212            |           2606    35654 '   comentarios comentarios_id_projeto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_id_projeto_fkey FOREIGN KEY (id_projeto) REFERENCES public.projetos(id);
 Q   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT comentarios_id_projeto_fkey;
       public          postgres    false    210    214    3186            {           2606    35649 '   comentarios comentarios_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 Q   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT comentarios_id_usuario_fkey;
       public          postgres    false    214    3188    212            �           2606    35684 <   likes_por_comentario likes_por_comentario_id_comentario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.likes_por_comentario
    ADD CONSTRAINT likes_por_comentario_id_comentario_fkey FOREIGN KEY (id_comentario) REFERENCES public.comentarios(id);
 f   ALTER TABLE ONLY public.likes_por_comentario DROP CONSTRAINT likes_por_comentario_id_comentario_fkey;
       public          postgres    false    216    214    3190                       2606    35679 9   likes_por_comentario likes_por_comentario_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.likes_por_comentario
    ADD CONSTRAINT likes_por_comentario_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 c   ALTER TABLE ONLY public.likes_por_comentario DROP CONSTRAINT likes_por_comentario_id_usuario_fkey;
       public          postgres    false    212    216    3188            }           2606    35664 3   likes_por_projeto likes_por_projeto_id_projeto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.likes_por_projeto
    ADD CONSTRAINT likes_por_projeto_id_projeto_fkey FOREIGN KEY (id_projeto) REFERENCES public.projetos(id);
 ]   ALTER TABLE ONLY public.likes_por_projeto DROP CONSTRAINT likes_por_projeto_id_projeto_fkey;
       public          postgres    false    215    3186    210            ~           2606    35669 3   likes_por_projeto likes_por_projeto_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.likes_por_projeto
    ADD CONSTRAINT likes_por_projeto_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);
 ]   ALTER TABLE ONLY public.likes_por_projeto DROP CONSTRAINT likes_por_projeto_id_usuario_fkey;
       public          postgres    false    215    3188    212               �   x�=��N�0���S�w4���ĉM�v�%kݒ���I��mv�9�bxep�d��;5lp�:��CFۑd.�q@Jɢw�X�H���j�M{+�4O	#y�(|���(�����m�m�P"	�)�\}�V�<_:�P�Kt=/���'U��{!L.DO	����ƈ6i���1���Cq��w���%���y�M�BNǵѫj��_y������(����DN�����@,o7�1Ǖ1�"�c�            x�3�4�2b ����� �         "   x�3�4�2�4�2�F�F@b�p�1z\\\ C>�         N   x�3�t,��LN<����|geN###]]C�?.#i����d�
S]s�
c���
�%�yP@E 1z\\\ �F�         �   x�M��
�0E痯��tq+Dpq�KS�@��$��_ocA��=��*��B(�Kx#��yl݌a��͠j-j����e�!��0�{�zο�1��Zh��'N��iI9�]�}�g.ue�mȪO��#��I�HH��m����{�ڔt#n���B�     