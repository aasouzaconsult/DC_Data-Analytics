PGDMP             
        	    z            salarios    14.0    14.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    33715    salarios    DATABASE     h   CREATE DATABASE salarios WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE salarios;
                postgres    false                        3079    33717 	   tablefunc 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;
    DROP EXTENSION tablefunc;
                   false            
           0    0    EXTENSION tablefunc    COMMENT     `   COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';
                        false    2            �            1259    33760    dm_salarios    TABLE     �  CREATE TABLE public.dm_salarios (
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
       public         heap    postgres    false            �            1259    33765    salarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.salarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.salarios_id_seq;
       public          postgres    false    213                       0    0    salarios_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public.salarios_id_seq OWNED BY public.dm_salarios.id;
          public          postgres    false    214            t           2604    33770    dm_salarios id    DEFAULT     m   ALTER TABLE ONLY public.dm_salarios ALTER COLUMN id SET DEFAULT nextval('public.salarios_id_seq'::regclass);
 =   ALTER TABLE public.dm_salarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213                      0    33760    dm_salarios 
   TABLE DATA           �   COPY public.dm_salarios (id, ano, nivel_experiencia, tipo_trabalho, titulo, salario, moeda_corrente, salario_dolar, residencia_empregado, percentual_remoto, localizacao_empresa, tamanho_empresa) FROM stdin;
    public          postgres    false    213                     0    0    salarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.salarios_id_seq', 1, false);
          public          postgres    false    214            v           2606    33780    dm_salarios salarios_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.dm_salarios
    ADD CONSTRAINT salarios_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.dm_salarios DROP CONSTRAINT salarios_pkey;
       public            postgres    false    213                  x��]Ks��^�
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