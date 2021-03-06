PGDMP                         x            authserverdb    12.1    12.1 =    q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            r           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            s           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            t           1262    26092    authserverdb    DATABASE     �   CREATE DATABASE authserverdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE authserverdb;
                postgres    false            �            1259    27340    client_id_seq    SEQUENCE     {   CREATE SEQUENCE public.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public          postgres    false            �            1259    26093    client_subscription    TABLE     
  CREATE TABLE public.client_subscription (
    client_subscription_id integer NOT NULL,
    client_id integer,
    created_by text,
    created_on timestamp without time zone,
    service_id integer,
    updated_by text,
    updated_on timestamp without time zone
);
 '   DROP TABLE public.client_subscription;
       public         heap    postgres    false            �            1259    26101    clients    TABLE     9  CREATE TABLE public.clients (
    client_id integer NOT NULL,
    client_app_id text,
    client_app_name text,
    client_app_secret text,
    created_by text,
    created_on timestamp without time zone,
    environment text,
    updated_by text,
    updated_on timestamp without time zone,
    password text
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    27338    clients_client_id_seq    SEQUENCE     �   ALTER TABLE public.clients ALTER COLUMN client_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.clients_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
            public          postgres    false    203            �            1259    26189    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    26109    permission_exclusions    TABLE     ,  CREATE TABLE public.permission_exclusions (
    permission_exclusion_id integer NOT NULL,
    created_by text,
    created_on timestamp without time zone,
    resource_id integer,
    resource_method_id integer,
    role_id integer,
    updated_by text,
    updated_on timestamp without time zone
);
 )   DROP TABLE public.permission_exclusions;
       public         heap    postgres    false            �            1259    26117    permission_role    TABLE     $  CREATE TABLE public.permission_role (
    permission_role_id bigint NOT NULL,
    created_by character varying(255),
    created_on timestamp without time zone,
    permission_id bigint,
    role_id bigint,
    updated_by character varying(255),
    updated_on timestamp without time zone
);
 #   DROP TABLE public.permission_role;
       public         heap    postgres    false            �            1259    26125    permissions    TABLE       CREATE TABLE public.permissions (
    permission_id integer NOT NULL,
    created_by text,
    created_on timestamp without time zone,
    resource_id integer,
    resource_method_id integer,
    role_id integer,
    updated_by text,
    updated_on timestamp without time zone
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    26133    resource_methods    TABLE       CREATE TABLE public.resource_methods (
    resource_method_id integer NOT NULL,
    created_by text,
    created_on timestamp without time zone,
    method character varying(255),
    resource_id integer,
    updated_by text,
    updated_on timestamp without time zone
);
 $   DROP TABLE public.resource_methods;
       public         heap    postgres    false            �            1259    26141 	   resources    TABLE       CREATE TABLE public.resources (
    resource_id integer NOT NULL,
    created_by text,
    created_on timestamp without time zone,
    resource_name text,
    resource_url text,
    service_id integer,
    updated_by text,
    updated_on timestamp without time zone
);
    DROP TABLE public.resources;
       public         heap    postgres    false            �            1259    26149    role    TABLE     �   CREATE TABLE public.role (
    role_id integer NOT NULL,
    created_by text,
    created_on timestamp without time zone,
    role_name text,
    updated_by text,
    updated_on timestamp without time zone
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    26157 	   role_user    TABLE     �   CREATE TABLE public.role_user (
    role_user_id integer NOT NULL,
    created_by text,
    created_on timestamp without time zone,
    role_id integer,
    updated_by text,
    updated_on timestamp without time zone,
    user_id integer
);
    DROP TABLE public.role_user;
       public         heap    postgres    false            �            1259    26165    services    TABLE     <  CREATE TABLE public.services (
    service_id integer NOT NULL,
    base_url text,
    created_by text,
    created_on timestamp without time zone,
    service_app_id text,
    service_app_secret text,
    service_name text,
    service_title text,
    updated_by text,
    updated_on timestamp without time zone
);
    DROP TABLE public.services;
       public         heap    postgres    false            �            1259    26173    tokens    TABLE     V  CREATE TABLE public.tokens (
    token_id integer NOT NULL,
    client_id integer,
    created_by text,
    created_on timestamp without time zone,
    expires_in double precision,
    refresh_token text,
    scope text,
    status text,
    token text,
    updated_by text,
    updated_on timestamp without time zone,
    user_id integer
);
    DROP TABLE public.tokens;
       public         heap    postgres    false            �            1259    26181    users    TABLE     �  CREATE TABLE public.users (
    user_id integer NOT NULL,
    cell text,
    client_id integer,
    created_by text,
    created_on timestamp without time zone,
    email text,
    enabled smallint,
    fax text,
    fullname text,
    password text,
    phone text,
    updated_by text,
    updated_on timestamp without time zone,
    username text,
    company_email text,
    company_id integer,
    email_validated_flag text,
    role_id integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            `          0    26093    client_subscription 
   TABLE DATA           �   COPY public.client_subscription (client_subscription_id, client_id, created_by, created_on, service_id, updated_by, updated_on) FROM stdin;
    public          postgres    false    202   �S       a          0    26101    clients 
   TABLE DATA           �   COPY public.clients (client_id, client_app_id, client_app_name, client_app_secret, created_by, created_on, environment, updated_by, updated_on, password) FROM stdin;
    public          postgres    false    203   T       b          0    26109    permission_exclusions 
   TABLE DATA           �   COPY public.permission_exclusions (permission_exclusion_id, created_by, created_on, resource_id, resource_method_id, role_id, updated_by, updated_on) FROM stdin;
    public          postgres    false    204   cT       c          0    26117    permission_role 
   TABLE DATA           �   COPY public.permission_role (permission_role_id, created_by, created_on, permission_id, role_id, updated_by, updated_on) FROM stdin;
    public          postgres    false    205   �T       d          0    26125    permissions 
   TABLE DATA           �   COPY public.permissions (permission_id, created_by, created_on, resource_id, resource_method_id, role_id, updated_by, updated_on) FROM stdin;
    public          postgres    false    206   �T       e          0    26133    resource_methods 
   TABLE DATA           �   COPY public.resource_methods (resource_method_id, created_by, created_on, method, resource_id, updated_by, updated_on) FROM stdin;
    public          postgres    false    207   A\       f          0    26141 	   resources 
   TABLE DATA           �   COPY public.resources (resource_id, created_by, created_on, resource_name, resource_url, service_id, updated_by, updated_on) FROM stdin;
    public          postgres    false    208   wb       g          0    26149    role 
   TABLE DATA           b   COPY public.role (role_id, created_by, created_on, role_name, updated_by, updated_on) FROM stdin;
    public          postgres    false    209   g       h          0    26157 	   role_user 
   TABLE DATA           s   COPY public.role_user (role_user_id, created_by, created_on, role_id, updated_by, updated_on, user_id) FROM stdin;
    public          postgres    false    210   �g       i          0    26165    services 
   TABLE DATA           �   COPY public.services (service_id, base_url, created_by, created_on, service_app_id, service_app_secret, service_name, service_title, updated_by, updated_on) FROM stdin;
    public          postgres    false    211   �g       j          0    26173    tokens 
   TABLE DATA           �   COPY public.tokens (token_id, client_id, created_by, created_on, expires_in, refresh_token, scope, status, token, updated_by, updated_on, user_id) FROM stdin;
    public          postgres    false    212   �h       k          0    26181    users 
   TABLE DATA           �   COPY public.users (user_id, cell, client_id, created_by, created_on, email, enabled, fax, fullname, password, phone, updated_by, updated_on, username, company_email, company_id, email_validated_flag, role_id) FROM stdin;
    public          postgres    false    213   �n       u           0    0    client_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.client_id_seq', 1, false);
          public          postgres    false    216            v           0    0    clients_client_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clients_client_id_seq', 1, false);
          public          postgres    false    215            w           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 25, true);
          public          postgres    false    214            �
           2606    27343 ,   client_subscription client_subscription_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.client_subscription
    ADD CONSTRAINT client_subscription_pkey PRIMARY KEY (client_subscription_id);
 V   ALTER TABLE ONLY public.client_subscription DROP CONSTRAINT client_subscription_pkey;
       public            postgres    false    202            �
           2606    27314    clients clients_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    203            �
           2606    27376 0   permission_exclusions permission_exclusions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.permission_exclusions
    ADD CONSTRAINT permission_exclusions_pkey PRIMARY KEY (permission_exclusion_id);
 Z   ALTER TABLE ONLY public.permission_exclusions DROP CONSTRAINT permission_exclusions_pkey;
       public            postgres    false    204            �
           2606    26124 $   permission_role permission_role_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_role_id);
 N   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
       public            postgres    false    205            �
           2606    27422    permissions permissions_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (permission_id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    206            �
           2606    27467 &   resource_methods resource_methods_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.resource_methods
    ADD CONSTRAINT resource_methods_pkey PRIMARY KEY (resource_method_id);
 P   ALTER TABLE ONLY public.resource_methods DROP CONSTRAINT resource_methods_pkey;
       public            postgres    false    207            �
           2606    27498    resources resources_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (resource_id);
 B   ALTER TABLE ONLY public.resources DROP CONSTRAINT resources_pkey;
       public            postgres    false    208            �
           2606    27535    role role_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    209            �
           2606    27559    role_user role_user_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_pkey PRIMARY KEY (role_user_id);
 B   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_pkey;
       public            postgres    false    210            �
           2606    27592    services services_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);
 @   ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
       public            postgres    false    211            �
           2606    27611    tokens tokens_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (token_id);
 <   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
       public            postgres    false    212            �
           2606    27645    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    213            �
           2606    27351     client_subscription client_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_subscription
    ADD CONSTRAINT client_id_fk FOREIGN KEY (client_id) REFERENCES public.clients(client_id) NOT VALID;
 J   ALTER TABLE ONLY public.client_subscription DROP CONSTRAINT client_id_fk;
       public          postgres    false    203    2750    202            �
           2606    27619    tokens client_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT client_id_fk FOREIGN KEY (client_id) REFERENCES public.clients(client_id) NOT VALID;
 =   ALTER TABLE ONLY public.tokens DROP CONSTRAINT client_id_fk;
       public          postgres    false    212    2750    203            �
           2606    27663    users client_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT client_id_fk FOREIGN KEY (client_id) REFERENCES public.clients(client_id) NOT VALID;
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT client_id_fk;
       public          postgres    false    213    2750    203            �
           2606    27499 $   permission_exclusions resource_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_exclusions
    ADD CONSTRAINT resource_id_fk FOREIGN KEY (resource_id) REFERENCES public.resources(resource_id) NOT VALID;
 N   ALTER TABLE ONLY public.permission_exclusions DROP CONSTRAINT resource_id_fk;
       public          postgres    false    208    204    2760            �
           2606    27504    permissions resource_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT resource_id_fk FOREIGN KEY (resource_id) REFERENCES public.resources(resource_id) NOT VALID;
 D   ALTER TABLE ONLY public.permissions DROP CONSTRAINT resource_id_fk;
       public          postgres    false    206    208    2760            �
           2606    27509    resource_methods resource_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.resource_methods
    ADD CONSTRAINT resource_id_fk FOREIGN KEY (resource_id) REFERENCES public.resources(resource_id) NOT VALID;
 I   ALTER TABLE ONLY public.resource_methods DROP CONSTRAINT resource_id_fk;
       public          postgres    false    2760    207    208            �
           2606    27468 +   permission_exclusions resource_method_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_exclusions
    ADD CONSTRAINT resource_method_id_fk FOREIGN KEY (resource_method_id) REFERENCES public.resource_methods(resource_method_id) NOT VALID;
 U   ALTER TABLE ONLY public.permission_exclusions DROP CONSTRAINT resource_method_id_fk;
       public          postgres    false    2758    204    207            �
           2606    27473 !   permissions resource_method_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT resource_method_id_fk FOREIGN KEY (resource_method_id) REFERENCES public.resource_methods(resource_method_id) NOT VALID;
 K   ALTER TABLE ONLY public.permissions DROP CONSTRAINT resource_method_id_fk;
       public          postgres    false    2758    206    207            �
           2606    27541     permission_exclusions role_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_exclusions
    ADD CONSTRAINT role_id_fk FOREIGN KEY (role_id) REFERENCES public.role(role_id) NOT VALID;
 J   ALTER TABLE ONLY public.permission_exclusions DROP CONSTRAINT role_id_fk;
       public          postgres    false    209    2762    204            �
           2606    27546    permissions role_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT role_id_fk FOREIGN KEY (role_id) REFERENCES public.role(role_id) NOT VALID;
 @   ALTER TABLE ONLY public.permissions DROP CONSTRAINT role_id_fk;
       public          postgres    false    2762    206    209            �
           2606    27567    role_user role_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_id_fk FOREIGN KEY (role_id) REFERENCES public.role(role_id) NOT VALID;
 >   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_id_fk;
       public          postgres    false    209    2762    210            �
           2606    27593 !   client_subscription service_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.client_subscription
    ADD CONSTRAINT service_id_fk FOREIGN KEY (service_id) REFERENCES public.services(service_id) NOT VALID;
 K   ALTER TABLE ONLY public.client_subscription DROP CONSTRAINT service_id_fk;
       public          postgres    false    202    2766    211            �
           2606    27598    resources service_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.resources
    ADD CONSTRAINT service_id_fk FOREIGN KEY (service_id) REFERENCES public.services(service_id) NOT VALID;
 A   ALTER TABLE ONLY public.resources DROP CONSTRAINT service_id_fk;
       public          postgres    false    211    208    2766            �
           2606    27646    role_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 >   ALTER TABLE ONLY public.role_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    2770    213    210            �
           2606    27651    tokens user_id_fk    FK CONSTRAINT        ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 ;   ALTER TABLE ONLY public.tokens DROP CONSTRAINT user_id_fk;
       public          postgres    false    2770    213    212            `      x������ � �      a   P   x�3�t�u,(00�М)��F�&�1~ ��Ze��qaUijUQP���Pl��Q�9˒��EUj�U)���D��=... �,"      b      x������ � �      c      x������ � �      d   �  x���M��6�לS����9�7؋ �ad��gĢG����4����HJ5�[�c����_ܶR>>�I�����������O�g��<}_����}5�o[�����GH[ھl��V���-��^��s>�s�Mw�Dh��0l�z�kmw�F�~�	=44[��A�E㦡��cآb�@)�(�
�r��Z����J�D1�N�h�p��^[��E�p�R8I(���p�R8I\�{��E�p�R8Yg����b8@)�,.�#`آb8@)�,����b8@)�,n�=`آb�@)�"�:�B�-׏m��r�(�Z��:QZ�ES"�y[`QM���ES"�C��ESb��D�rZ)�*�:��J�V�Z�ҵV�Z�ҵ6Q���H�&*��h��j�D��׉��ڴ�>QZ껨�@wRb����o��ԁ�R��\��A �.�
�r�E���û�0PrxsJ�b���9(�C�(�z�����\1W������P���^'J���r�(�zhK}��Ի�kgN�\���D)׮����)׮�:Qʵ���ݿS�]�(�ڵ���g���E%�Z%�X.4R��ra�T����D�M��pj��E�p�VB�pZ��E�p�r8�z��-�m��[x{�t�Ñz�E���Mb��z��EE���Mb����a�j6M�l��%%�6d���؆L��ې|n�ڐ(�!%%��DN��Jሕ�Di�'1W��ks��sJ��E���T�D�H�(�*)y��T�Ĭ-���R;�<�a�`�؆L�r�b�@)W�H�(�*)y��T�D�\�(��\�(��\�(��E����/\�_xW�~a�� J�F���@I�*������@I�**1��JJ��DI�*���ib8mN�5���5-�2��F����D)W�4*�|��(���D)צ�Z�I�(צ-���R��2N:���XUM�l�*�TUE��)㸢&���k�2�o��� �&��DI���(�/v0e�����Ct(9,v0�\�f����÷������ַT^?Th�sd{�A���KN��KV�t�%-z�Œ��bI�^Ev����n�dU�o��U?n��UW�k�J���ɞӖ��[��eE�&����l&V�j��Xѫ�VbE�&ۈ��1`ڲ�W�=���,yE��R���X�*�^�%���U
����X�*�^�%���X�*�^�%����˫����ZsO�%^�ûmunR�h"ԹIY��P�&e�B�{�G4[Թ�Y��P��f��:�7k� Թo}Ds��A��z���cT�	(��u�k�l�:�G�[T�[T(���k�����%�(�=~D�g�p��x�R8�kxk���^�[��Խ����-*.u��Խ�z��M^g�F�&��~D��a�z���d��Y�Q����(��u֏h��hP��{op��M�{�k�l����_C%kPͦ��M^S�F�&�)_��l�^9|Dǩ^�&��5J6y��Q��{�p��M�_�q������%���
�Q������l:o6�ǖ��������ƋO5L����<��Y�KiJ�c���cKr[�[�����ؒ�ǖ'�L[�ylybk��e�ǖ'�L�b���=�9|V�*���&b���b3���|��X�w��J��;�J1mY���awb��C�=�U���v�z�Ú�����U����X�ʫ���j�%����a�+�vxbK��eU���W^���t.\,y%��l"��s+ӖU�jӖU�������\L�b��?c��a���D�r���U��b��:��J���p������.v'VYG{����햕��O�cڲ�W9`ڲ�W`�+i�X�Jڟ/�����%���&cڲ�W`�+i�X�Jڟ/�����O6�W�����i˪^�%��{`�zL[V�,e������o?�{�<>�ˊet9��n�݂��e�9��Hp�_X___^^�����      e   &  x����j�F��}��1R��׻��$�c�fc�,��a�.w�q��#���AC����S�r�M;�7_>���������7m������m_>N��v����{�����?�>��ͧ��{ܗ��gM��<=����MjR�I���6_��ۻ1���}�,�3|�@;��	���H:�Ӓ��F�-{6�v`� h��OD�[���Bה�e=�dB�K�=�P	H*Tc.	�(��p �� I�J� �R� Ʉ5X��E�)�(�	�(�	��8�	e`��J%J�t�8\�L��%�̬ hv*H�/���ye�8���	�/�[h���@��b_��vX�����)0���{3@R'@�A?Ѵ��o���-v���5�C�Q�3��]f4�0�P�빽���ELf6*�ӨtJ����cj� I�ʹ�����P�B��O�ᓾj�����K��f��	[���1P��	�����F�����
���)>�'*�Vye�w%�v�r�Y����Rjn���3� f�FR�u?�`޹�Ty�'�@����V:ocM3�q6Κ�]�O���Ԙ���2�r�Pl����>Ȼ��@�K���K����qׁGc:傂��`��(�#�e�a�v�2Nߐ;LU嶁ߔ�Y�t�bSn)J���;|�������w�xoN��gBB1���W���M�7�~��P}�ۢr�QRC�7H�.8�"50}����K��TQ{�r	�'��E�ؤo(��R3�(�ڇO�n~�_+�����}f�6�@� �1����@��������������@��&8}�	�^��������yZ��>��Z�#Y��-{U/9~@X�yx\�샫��ţ��Z61��A��$�wJ-�T�>9�&�y�\�yu�9�f��]޳�7P��R���,�^���5��wʚ���{��]J6[��vY�I&4˲S�3�$˚M��^a6)�ۥd3A��˚M2�Y��:od�P,k6��{�٤�w��z�I�9�l�ɻPP�.�y�0+���R����f)Y��λ�<���������Lw}�Ɨ]��i	?eK���/msi�]یC��s+k����/�e�\n�kշ���-+�%�Z6�㣬-����jk� >���;�����>����1�	S�#�e�/�	UX]'�y�*Q�V��y!��Ƈ�^����Q��X�dκ�uKi�[2cݒ9�v�����q|�ƺ%3�-��ng8�]��1%>2�aJ|d�|Y���nB�����Y���_`�|i��VIx�>_��K`�|i��V� q�>_���ʺ�3��ׯ?��:{\��R�v�8wo���N���e��gtK{�����F~�����d�n��������:���Y�C����?�n��:����!t���������?k�=��@%���?�#��@+,G�l�،ѓ�����:c�l��D�V]"�';#v�%�u��Pk�n��?��?�N�Й�C����?��B�����F��:���Y�C����?�n��:�3�Y�C8��������O�G�Y��#!�F�Lq�`�6I_y��������CD:�      f     x����v�:��ӧ�h�)�w�е�ZPJ\��uD�ƶ�%9!<=:X���t7��$�I�����$ɲY��x={�������]S�?ݜ-�$I��I��N��I�j����^���ly����=WB�!�l>v���V+��� o���Ez�Z�'�-$d���c���WM���}Ɖ rW$��ύ�v��C���w,�HyC�4Mɋ��8�yK�|eRL��rI�(Ŕ�X�e���H���a:�BX!���p�sݎ�]���i�x��rkP��Jݘ�kJq���F
A�϶��X� ��m��3E;���.D��5g�����}�1�} (�K�R%=h� ������G�R��Y��RԾ@�AA�;��e�iq�={�?U�cw��8�GжI�ʣ��@�5M+��,O�#�[��>����m�#Y]sm_���~�V�?!�J�/+t�B�#�PMe�^0���r�K�w�^4���zI�z��z���e��2�G���@в����`"��f��z��B��99=+�13�l�N}�S����GA�����2�(�	�3��B� /#hY��n���h��&���O�K�8"����d���+����ݦܐ��H&�2n?m�P@A����QfT�A�{Vo�i��c6A�>�] X��W���2����՛��r�����Tb�5��uf�8��H�/1��y�*Rp̬�N���A���Kɞom���l!�2���&F㽊T�aV"���-J���H�1C
;H�Lg��ѝ�Ta���D��9E�s�������d�!)�L��/f"���)<��s�=�{^0w&�(��*J�6���	����gUHޝ�'bH%��h'���Qk�����6R#6d~�Y��)n"7��^��9}��H#�j�)�J;�����>1�]lN�-�2�b�b&A�6��}+�-$t_�B�VG��5�iK�3��Ohو����@��"�Ӱ��b2��uY�?��=�#�P_r�P��B���8�g�!�PQ����f�q�C�$�վJ���a5����U��IZ��
�=pG}��9uA�z�wj�$�&��|>Ԯp{�u�UZT�y]q��I�N��;�T��E[<�1����������7���      g   o   x�m�I
�0@ѵ=���6؈�h�� ��-D�B[!���Sd�z������k&|֢��I��2���U��3����7�&�Q��d��MM��Y@�h7��N���Й!.�JS      h   [   x�]���0C�3�ia	&��s4H!K�b�óc�����\��ry��kVqq�!1�!nq�G���d"E�P��X�bEr�"���ro:*      i   �   x�m��
�0E��+��i�[7% n]m��HJ��{���2�sy9W�1��)Kc{0���9Tǚu��`	�U�U�V�J {dQˌ�?y�������N޺WRcTE�O�GiCnnڸOF�fcaH��h�;}b�.I��K?�=tPz�̩�c��3��I��8�o��z�      j   �  x�u���,���Oq_@�%�2�p�đa'��7�h���}4��U����3�U���s8������?��G�!R`�IzJ9�Q�!9�G$&��B�TC�9ơ��ܬr�����/������Gwsk���SH���w�"����Q��c��Q~R<�N���'��-�ZrX�A�E��BL�i����&H�<9.�Ҝ9T�=���H�f&o�3M'�#ړ��J�q��B�C비"U����v�n)G-��'0F��e��ĵ/�o����Τ'�A9=�G�G���Ejl#�.)�9�_6k1{�EҰ�w+ᆝf[}��3�Qϔ��Pb_��L�$xp�|��@��{L�*Ԕ@<C����d��u��ho��!�§���U��
�8$t^8W��B�+D<��Ӽ �
Av(Ep��cx�5�Z�k��o��!ݤ_RQ=t=@����H�1�	��8��F�4�k�MЬ�Z04�5�P����> �Ʉ*�K~��4�Zj��"��6��3��t�^5Zvo15�w���c��q,iE��? �-�(����B�4RFU�Z���3�D�d�2�79��Hko�6&��:U�ĴX��@�W��$'9*q��O�Y�p?�(��4My��tc��j.�#�#�*>�4i�sՑ�J�?c`;I�;Z��T�Xv/1��G�7�:&]ޙ��"��+f���v1|��'���(��E��h ������Baͬ�)�M��V�"�6�1�0״D �k(�An�tFH���d@B4�F�J�������\��vg(f��=��Q[��p��Z ~3|��'!&���b�5�1�Amc"�֌�Pz�L�鋁T�"G/Wå-���I��|1|��'Ǔ�Pz1�1W�i;��Z�<�<a�P��Se�k����L<�i�,�5���$_�렒��P���BQ�z�9�'n�2s�1��$1D�H�!׵�y�
l��|c���OhR0(Գ{�y��Ґ²B�}&%8U�i��&(㯰(�%z�xY��,�K�4��&7��
@/�7�F�ig䬂Ȅ��&�0�����aaA�⍳cs�{�*�G�]���On���>�J/=�F��^��p ���	��!�8��Iui=����Dkr�UK+2.��O>�_���G������(��&$1V�`��@#�z��hXR&���=d�$��:�'��Z_�EF:��7��Qœ'������l:�h�Emr1�0Tgs�#:���-��bp��u����'9}i2��~���iߵ��S�ј��M�[$b!�ZQ��jX�0���k�IKF����$�b��݊E�A߱�K��^��ъ�W��
1�.���+�d�ޔ Id���s�1�#N��}1�b��C��N.�͗�su����n���D(@h͜n�4��8t���[$���Cx�'�Y��M~3�;c}x�������� �]罵�ߋb�I�֭�W�[�u���)̮+�^������Ǐ����      k   J   x�3�4�?(2����ņF����܂ļ��Ĕ��<�p���&���`L��V�oun1���qqq �/@l     