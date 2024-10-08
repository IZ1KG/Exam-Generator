PGDMP      #                |           Exam_Project    16.3    16.3 0               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24827    Exam_Project    DATABASE     �   CREATE DATABASE "Exam_Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE "Exam_Project";
                postgres    false            �            1259    24828    answer    TABLE     s   CREATE TABLE public.answer (
    aid integer NOT NULL,
    qid integer,
    astring text,
    iscorrect boolean
);
    DROP TABLE public.answer;
       public         heap    postgres    false            �            1259    24833    answer_aid_seq    SEQUENCE     �   CREATE SEQUENCE public.answer_aid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.answer_aid_seq;
       public          postgres    false    215                       0    0    answer_aid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.answer_aid_seq OWNED BY public.answer.aid;
          public          postgres    false    216            �            1259    24834    exam    TABLE     Y   CREATE TABLE public.exam (
    eid integer NOT NULL,
    uid integer,
    pid integer
);
    DROP TABLE public.exam;
       public         heap    postgres    false            �            1259    24837    exam_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.exam_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.exam_eid_seq;
       public          postgres    false    217                        0    0    exam_eid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.exam_eid_seq OWNED BY public.exam.eid;
          public          postgres    false    218            �            1259    24838    examquestion    TABLE     Y   CREATE TABLE public.examquestion (
    eid integer NOT NULL,
    qid integer NOT NULL
);
     DROP TABLE public.examquestion;
       public         heap    postgres    false            �            1259    24841 
   profession    TABLE     W   CREATE TABLE public.profession (
    pid integer NOT NULL,
    pname character(255)
);
    DROP TABLE public.profession;
       public         heap    postgres    false            �            1259    24844    profession_pid_seq    SEQUENCE     �   CREATE SEQUENCE public.profession_pid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.profession_pid_seq;
       public          postgres    false    220            !           0    0    profession_pid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.profession_pid_seq OWNED BY public.profession.pid;
          public          postgres    false    221            �            1259    24845    question    TABLE     �   CREATE TABLE public.question (
    pid integer,
    qid integer NOT NULL,
    qstring text,
    qtype numeric(1,0),
    difficulty text
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    24850    question_qid_seq    SEQUENCE     �   CREATE SEQUENCE public.question_qid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.question_qid_seq;
       public          postgres    false    222            "           0    0    question_qid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.question_qid_seq OWNED BY public.question.qid;
          public          postgres    false    223            �            1259    24851    users    TABLE     r   CREATE TABLE public.users (
    uid integer NOT NULL,
    uname text,
    upassword text,
    phonenumber text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24856    users_uid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.users_uid_seq;
       public          postgres    false    224            #           0    0    users_uid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.users_uid_seq OWNED BY public.users.uid;
          public          postgres    false    225            h           2604    24857 
   answer aid    DEFAULT     h   ALTER TABLE ONLY public.answer ALTER COLUMN aid SET DEFAULT nextval('public.answer_aid_seq'::regclass);
 9   ALTER TABLE public.answer ALTER COLUMN aid DROP DEFAULT;
       public          postgres    false    216    215            i           2604    24858    exam eid    DEFAULT     d   ALTER TABLE ONLY public.exam ALTER COLUMN eid SET DEFAULT nextval('public.exam_eid_seq'::regclass);
 7   ALTER TABLE public.exam ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    218    217            j           2604    24859    profession pid    DEFAULT     p   ALTER TABLE ONLY public.profession ALTER COLUMN pid SET DEFAULT nextval('public.profession_pid_seq'::regclass);
 =   ALTER TABLE public.profession ALTER COLUMN pid DROP DEFAULT;
       public          postgres    false    221    220            k           2604    24860    question qid    DEFAULT     l   ALTER TABLE ONLY public.question ALTER COLUMN qid SET DEFAULT nextval('public.question_qid_seq'::regclass);
 ;   ALTER TABLE public.question ALTER COLUMN qid DROP DEFAULT;
       public          postgres    false    223    222            l           2604    24861 	   users uid    DEFAULT     f   ALTER TABLE ONLY public.users ALTER COLUMN uid SET DEFAULT nextval('public.users_uid_seq'::regclass);
 8   ALTER TABLE public.users ALTER COLUMN uid DROP DEFAULT;
       public          postgres    false    225    224                      0    24828    answer 
   TABLE DATA           >   COPY public.answer (aid, qid, astring, iscorrect) FROM stdin;
    public          postgres    false    215   �2                 0    24834    exam 
   TABLE DATA           -   COPY public.exam (eid, uid, pid) FROM stdin;
    public          postgres    false    217   R6                 0    24838    examquestion 
   TABLE DATA           0   COPY public.examquestion (eid, qid) FROM stdin;
    public          postgres    false    219   o6                 0    24841 
   profession 
   TABLE DATA           0   COPY public.profession (pid, pname) FROM stdin;
    public          postgres    false    220   �6                 0    24845    question 
   TABLE DATA           H   COPY public.question (pid, qid, qstring, qtype, difficulty) FROM stdin;
    public          postgres    false    222   �6                 0    24851    users 
   TABLE DATA           C   COPY public.users (uid, uname, upassword, phonenumber) FROM stdin;
    public          postgres    false    224   6:       $           0    0    answer_aid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answer_aid_seq', 69, true);
          public          postgres    false    216            %           0    0    exam_eid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.exam_eid_seq', 1, false);
          public          postgres    false    218            &           0    0    profession_pid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.profession_pid_seq', 5, true);
          public          postgres    false    221            '           0    0    question_qid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.question_qid_seq', 25, true);
          public          postgres    false    223            (           0    0    users_uid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_uid_seq', 3, true);
          public          postgres    false    225            n           2606    24863    answer answer_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pkey PRIMARY KEY (aid);
 <   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_pkey;
       public            postgres    false    215            p           2606    24865    exam exam_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pkey PRIMARY KEY (eid);
 8   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_pkey;
       public            postgres    false    217            r           2606    24867    examquestion examquestion_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.examquestion
    ADD CONSTRAINT examquestion_pkey PRIMARY KEY (eid, qid);
 H   ALTER TABLE ONLY public.examquestion DROP CONSTRAINT examquestion_pkey;
       public            postgres    false    219    219            t           2606    24869    profession profession_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.profession
    ADD CONSTRAINT profession_pkey PRIMARY KEY (pid);
 D   ALTER TABLE ONLY public.profession DROP CONSTRAINT profession_pkey;
       public            postgres    false    220            v           2606    24871    question question_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (qid);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            postgres    false    222            x           2606    24873    users users_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (uid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    224            y           2606    24919    answer answer_qid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_qid_fkey FOREIGN KEY (qid) REFERENCES public.question(qid) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_qid_fkey;
       public          postgres    false    222    215    4726            z           2606    24904    exam exam_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pid_fkey FOREIGN KEY (pid) REFERENCES public.profession(pid) ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_pid_fkey;
       public          postgres    false    4724    217    220            {           2606    24884    exam exam_uid_fkey    FK CONSTRAINT     n   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_uid_fkey FOREIGN KEY (uid) REFERENCES public.users(uid);
 <   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_uid_fkey;
       public          postgres    false    224    217    4728            |           2606    24889 "   examquestion examquestion_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.examquestion
    ADD CONSTRAINT examquestion_eid_fkey FOREIGN KEY (eid) REFERENCES public.exam(eid) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.examquestion DROP CONSTRAINT examquestion_eid_fkey;
       public          postgres    false    217    219    4720            }           2606    24894 "   examquestion examquestion_qid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.examquestion
    ADD CONSTRAINT examquestion_qid_fkey FOREIGN KEY (qid) REFERENCES public.question(qid) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.examquestion DROP CONSTRAINT examquestion_qid_fkey;
       public          postgres    false    219    4726    222            ~           2606    24914    question question_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pid_fkey FOREIGN KEY (pid) REFERENCES public.profession(pid) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pid_fkey;
       public          postgres    false    4724    220    222               a  x�]T�n�6}���_Xw�1I7�A��E_���b-�.I�Ⱦ���a=�u�h�9s���3����t�w���Y9���z�ő��-
`���c��-�K��H�0�=�Wx�W*Wo�h�0��ф�������N��~�yn����#������Cԫ�|�N�ţ��g���{�ϖ�O��g얼�n��^Y��/���~q1�{e9��D���P�R}�ف��T��9d���Od��7�8�`5��o�W4��FZ5����+�i*Y����`�@�%�Ff��$W-f�PmJ�K��*�5R7g���M:���$J���/���e2y��������h�ُ�Gi�T�k�"��F؀3l�$�`B�z��x�x���48���揙�^')Ղ��1��h�wU�(L�X���B��$n'��3k峔KA�'���*���_��J"��1���)�&)-|�|��	b��R�G��;�5���%��j[5��ߝ���w��%�&�[V�i���R�/o�bgbC
3Y9�ʓ���Ը�@�U�"D}������<+P�>;��f��E3�)kp�x�!�m|6I?���~�w���U�>C��lMZ�N�2��H��]��
Jܠ�5���� W���W
X�}L�E�Kd3���^�n��Oj�	\o=>�'��nJx)�ڍV_4˨kܪTO��P`ԛ�"H{}FK���X��4�~�ff�d,�\��5�� ^�����S�c�-�q4i�4Mzk��HG�g�_	�F���g��hf<%z=�)k�{J�[I}ɓ�>3���ѝq>��4��� �tH'�7��)�%�<���}z6�d�/:7$�Ko�t�F�dj���b��_w��            x������ � �            x������ � �         A   x�3���/�L-V��ˈ�7�$c��1��˘�#��$��r�]2P�˄3� ��d��1p�+F��� Κ��         I  x�}U�n#G<K_A��d�d�:;؇�l�7�%0@us4�c��ci�>�<��z7'�f��X��Y1{��� ��+�2X����gC	�@�H*��m���x���Gx��0��b��Jc��ojr-�0jƏpK)ýQ��Ul6+A��#m0�-�����>u�����(�o���Pc��0a��Z�`���r_<Z�)�Q�A����
yз��|�+�oY� |�,�0��+N�C���C��H���х&�5�~��?LI�Ϛ=�6����
����I�5�	��#�Ѣ�#�9_�~�������aݾq[�iRt}V��{��m�:���Q@�S>��i?��~�5�����	5�,q��l�I!)��\4�w�&P�������f)�zZr���B�g�S�F
l��"Tt�]�Ӻ�y�CkeduH&�g�e�3��!W�䘋�m��а>��f�r���n0�����!c��>ŕ�V�}��es,r��<�_��Նp�U׮
V�^�0,����>����d��2���	x�q v��A�}�YvK�����cS��ԞZ^�(nI��������|8�͓��/�2x5�!כ��$^w��FI<.�]�XāM�[ֈcV��r�zh�N�Ę��I2�hz�՗�D���Ʊ�l2�c��8��ãq���E��d$~P���$¾�$�U�٢8Sf��d�� �%��^�N7Q&�'�Grw��)�=N��̻OrB��4���F�����n8��⤒������Q���e�Y��)�\��������x����w��"_K�����H��y�k��g���1��V���/��y3�����E�         B   x�3���,cS#3cS3#.#Δ�<0
����ssf�TefCIS3#3SCs�=... ��     