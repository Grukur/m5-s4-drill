PGDMP     3    2                {            m5-s4-drill    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16989    m5-s4-drill    DATABASE     �   CREATE DATABASE "m5-s4-drill" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "m5-s4-drill";
                postgres    false            �            1259    17006 	   arriendos    TABLE     }  CREATE TABLE public.arriendos (
    folio numeric(12,0) NOT NULL,
    fecha date DEFAULT now(),
    dias numeric(5,0) NOT NULL,
    valor_dia numeric(12,0) NOT NULL,
    garantia character varying(30) NOT NULL,
    id_herramienta numeric(12,0) NOT NULL,
    id_cliente character varying(10) NOT NULL,
    CONSTRAINT arriendos_valor_dia_check CHECK ((valor_dia >= (0)::numeric))
);
    DROP TABLE public.arriendos;
       public         heap    postgres    false            �            1259    16995    clientes    TABLE     �   CREATE TABLE public.clientes (
    run character varying(10) NOT NULL,
    nombre character varying(120) NOT NULL,
    correo character varying(80) NOT NULL,
    direccion character varying(120) NOT NULL,
    telefono character varying(15) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16990    empresas    TABLE       CREATE TABLE public.empresas (
    run character varying(10) NOT NULL,
    nombre character varying(120) NOT NULL,
    direccion character varying(120) NOT NULL,
    telefono character varying(15) NOT NULL,
    correo character varying(80) NOT NULL,
    web character varying(50)
);
    DROP TABLE public.empresas;
       public         heap    postgres    false            �            1259    17000    herramientas    TABLE     �   CREATE TABLE public.herramientas (
    id numeric(12,0) NOT NULL,
    nombre character varying(120) NOT NULL,
    precio_dia numeric(12,0) NOT NULL,
    CONSTRAINT herramientas_precio_dia_check CHECK ((precio_dia >= (0)::numeric))
);
     DROP TABLE public.herramientas;
       public         heap    postgres    false                      0    17006 	   arriendos 
   TABLE DATA                 public          postgres    false    217   �                 0    16995    clientes 
   TABLE DATA                 public          postgres    false    215   �                 0    16990    empresas 
   TABLE DATA                 public          postgres    false    214   T                 0    17000    herramientas 
   TABLE DATA                 public          postgres    false    216   �       z           2606    17012    arriendos arriendos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.arriendos
    ADD CONSTRAINT arriendos_pkey PRIMARY KEY (folio);
 B   ALTER TABLE ONLY public.arriendos DROP CONSTRAINT arriendos_pkey;
       public            postgres    false    217            v           2606    16999    clientes clientes_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (run);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    215            t           2606    16994    empresas empresas_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.empresas
    ADD CONSTRAINT empresas_pkey PRIMARY KEY (run);
 @   ALTER TABLE ONLY public.empresas DROP CONSTRAINT empresas_pkey;
       public            postgres    false    214            x           2606    17005    herramientas herramientas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.herramientas
    ADD CONSTRAINT herramientas_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.herramientas DROP CONSTRAINT herramientas_pkey;
       public            postgres    false    216            {           2606    17018 #   arriendos arriendos_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.arriendos
    ADD CONSTRAINT arriendos_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(run);
 M   ALTER TABLE ONLY public.arriendos DROP CONSTRAINT arriendos_id_cliente_fkey;
       public          postgres    false    215    3190    217            |           2606    17013 '   arriendos arriendos_id_herramienta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.arriendos
    ADD CONSTRAINT arriendos_id_herramienta_fkey FOREIGN KEY (id_herramienta) REFERENCES public.herramientas(id);
 Q   ALTER TABLE ONLY public.arriendos DROP CONSTRAINT arriendos_id_herramienta_fkey;
       public          postgres    false    217    3192    216               �   x���=�0��_q��V����@b0u5g[����o������J��nֻ=T�~�׹w�@"g��0k}�<�����7��N13� �=�əSg��?���~�6��jsX70R��<�*2e 8�8�%՝}�,<<�1/�0��\Q�e��l�T�����7 ]m@�d���^�I=�Q'�Vh�         �   x���=�0�w~�m@��:��	�$AW�h��3��m]Y�����sW�Myk���+|�^I�q%���"��4N�	p4F`�4�s�65%F�ã������!�Ҕ�	�';��8N�T��Ex���������Z�j �X�w�����_���V3�D6ñ��~U1�=P��S�iV��#�^�� �`���         �   x�M�A�@໿bn*l��etɃ!Һ��ƺ#��?/����TuS>[����ک#'C��!0��y�	�C�o���k�lmi��]�_e��d�R_�_(9R/]E��w����%N�iv:�n�<�Y�&���Skm�'���G8         �   x���A
�0@�}N1��$V�r墋�T�խLӀIS���& ^��?����6��+,�ёٽ,3z�s�J�$���l%,l��DX��|��=���b����R�I��CB#:�8dU�m�cbMf��v�I.�<r$��s���� ��n     