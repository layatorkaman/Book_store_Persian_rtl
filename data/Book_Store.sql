PGDMP         :                y        
   Book_Store    13.2    13.3 :    Y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            [           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            \           1262    24817 
   Book_Store    DATABASE     p   CREATE DATABASE "Book_Store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Book_Store";
                postgres    false            ,          0    24893    accounts_customuser 
   TABLE DATA           �   COPY public.accounts_customuser (id, password, username, email, first_name, last_name, is_staff, is_superuser, is_active, last_login, date_joined, slug) FROM stdin;
    public          postgres    false    211   �5       3          0    24973    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    218   �<       4          0    24983    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    219   5=       2          0    24924    accounts_address 
   TABLE DATA           r   COPY public.accounts_address (id, is_default, province, city, street, details, postcode, customer_id) FROM stdin;
    public          postgres    false    217   R=       (          0    24849 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   �>       .          0    24908    accounts_customuser_groups 
   TABLE DATA           Q   COPY public.accounts_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          postgres    false    213   ?       $          0    24831    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   K?       &          0    24841    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   a@       0          0    24916 $   accounts_customuser_user_permissions 
   TABLE DATA           `   COPY public.accounts_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          postgres    false    215   �D       *          0    24859    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   �F       9          0    25071    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    224   I       K          0    25213    orders_cashoff 
   TABLE DATA           �   COPY public.orders_cashoff (id, title, cash_off, min_price_off, start, "end", status, creator_id, last_edited_by_id) FROM stdin;
    public          postgres    false    242   2I       G          0    25189    orders_percentoff 
   TABLE DATA           x   COPY public.orders_percentoff (id, title, percent_off, start, "end", status, creator_id, last_edited_by_id) FROM stdin;
    public          postgres    false    238   J       =          0    25094 
   books_book 
   TABLE DATA           �   COPY public.books_book (id, title, created_at, updated_at, authors, description, quantity, price, image, is_active, slug, creator_id, last_edit_by_id, max_cash_off_id, percent_off_id) FROM stdin;
    public          postgres    false    228   �J       ;          0    25086    books_category 
   TABLE DATA           m   COPY public.books_category (id, name, created_at, updated_at, slug, creator_id, last_edit_by_id) FROM stdin;
    public          postgres    false    226   �Y       ?          0    25105    books_book_categories 
   TABLE DATA           I   COPY public.books_book_categories (id, book_id, category_id) FROM stdin;
    public          postgres    false    230   $[       8          0    25049    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   �[       "          0    24820    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �k       L          0    25336    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    243   o       N          0    25348    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    245   %w       A          0    25155    orders_defaultbasket 
   TABLE DATA           ?   COPY public.orders_defaultbasket (id, customer_id) FROM stdin;
    public          postgres    false    232   Rw       C          0    25165    orders_discountcode 
   TABLE DATA           �   COPY public.orders_discountcode (id, title, type, percent_off, cash_off, min_price_off, code, start, "end", status, creator_id, last_edited_by_id) FROM stdin;
    public          postgres    false    234   �w       E          0    25181    orders_order 
   TABLE DATA           k   COPY public.orders_order (id, created_at, status, basket_id, delivery_address_id, discount_id) FROM stdin;
    public          postgres    false    236   �x       I          0    25205    orders_orderitem 
   TABLE DATA           K   COPY public.orders_orderitem (id, quantity, book_id, order_id) FROM stdin;
    public          postgres    false    240   �y       O          0    25359    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    246   �z       P          0    25370    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    247   �z       R          0    25378    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    249   �z       S          0    25386    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    250   �z       ]           0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 25, true);
          public          postgres    false    220            ^           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    221            _           0    0    accounts_address_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.accounts_address_id_seq', 61, true);
          public          postgres    false    216            `           0    0 !   accounts_customuser_groups_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.accounts_customuser_groups_id_seq', 15, true);
          public          postgres    false    212            a           0    0    accounts_customuser_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.accounts_customuser_id_seq', 34, true);
          public          postgres    false    210            b           0    0 +   accounts_customuser_user_permissions_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.accounts_customuser_user_permissions_id_seq', 122, true);
          public          postgres    false    214            c           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          postgres    false    206            d           0    0    auth_group_permissions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 171, true);
          public          postgres    false    208            e           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);
          public          postgres    false    204            f           0    0    books_book_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.books_book_categories_id_seq', 29, true);
          public          postgres    false    229            g           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 9, true);
          public          postgres    false    227            h           0    0    books_category_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.books_category_id_seq', 30, true);
          public          postgres    false    225            i           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 217, true);
          public          postgres    false    222            j           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);
          public          postgres    false    202            k           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);
          public          postgres    false    200            l           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    244            m           0    0    orders_cashoff_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.orders_cashoff_id_seq', 13, true);
          public          postgres    false    241            n           0    0    orders_defaultbasket_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.orders_defaultbasket_id_seq', 24, true);
          public          postgres    false    231            o           0    0    orders_discountcode_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.orders_discountcode_id_seq', 5, true);
          public          postgres    false    233            p           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 46, true);
          public          postgres    false    235            q           0    0    orders_orderitem_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.orders_orderitem_id_seq', 94, true);
          public          postgres    false    239            r           0    0    orders_percentoff_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.orders_percentoff_id_seq', 8, true);
          public          postgres    false    237            s           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    251            t           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    252            u           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          postgres    false    248            v           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    253            ,   �  x��Vێ��}����Zc�n�������4�H������\�"e2/�y��HG�$Q^�p�gN�M3��� [U�*j�Z{��LL�����CQ�B�O*S�'c� �h�l+
q(�R�G�{Yv�\�	k��9���1�,�x^��uG/����mbn�V��89���Kv4I��ؿ�}���������e�i�Ǘ��8�� ��7����H
��[@T. *�T��$B�A�=jd*���K��E�L_.S��,�,�ś�F�m�Nk�ƣ����򺥸+f��a� *�<�&v����0{�~E&��~��p���~���k�W��,3D��C���$s. `�q�]+	�u��Q�sC'�Q��#�LUǣi�t��uޝբE��W9-��Y���帤��K�6a���{��_�I��u�O|}W9���TJT�%3D_a��J��!O�l��VjZ��\��1��T]��I�a�l�.c�G�Ÿ�vo�ܭC�Ke�x��&v��?�>�>%��pf�s����C��>}�(�����o �@%\�������4�$�I�H���,$�$��C�Fs�io�i7n��}RL�S��2�f�lf�B����u��f�������ї��H��Ʈuΐ��~���������§*"� a�ࣇb�0��m�U�Ge�D�u|Q��wdc�}0�k~*����M{R�?�8X.V��
�!3\����]�+���E���E���3x"��s�fO\AE���e	SY9q��i�؝D�z��in:�|;n2��jJ�U�������{���ί���7yz��`6�C2���V�wٌ������7,bT$������)bH^�⸧�ڲ�Ev���D��Yj��P�_����:�[��Z`��7e��M�2����Iw��	ϊ݉c/�̶CD�*{��P�?��j�y�_1��j���(r%�PD�<@�F�j�D�ÎG�#'�+yT��tz��D%=�O����_Y�6��<J|�踹��SF+b�>�������L]98�ؚ�����F�Q�|��˹z]�?:�-�*�����>�7� �\`?.��L]��+N:�@���Co��+�hԑ'�M�|��zHO�Bw�G���|�z�QÕ(3Æ�*��B���&�Q��h�:#+D�o'1>Ǌo T�A�$N!�Ί�!_1DK('-�C��$~�y�e���(e�"�f���stC8������m����Mă��)�Y8��J<XT����-��=&($ �M��H��J�J��\�����uY"B�r�B\�d1wgIH�cuf���,���m&���c��Jy��0p-�D���nTj�^���.�;��Z�Ҧí��Q��y8������+���g�Y����*��%&�̮$T�"I!�ᗼ�����I��N6"���+�]8�Z��
����n�a@���Ճޚ䭩=�l��s��ki.��Ɋ�����e�TP�C�*� 1��XŲJ���W��į�hᱶ��aM�����Rz(�
�Lf���X���2�)��\�`Ӊۉ���m�<FO=߳v��]�e�t	�Q����NL� �?	��?c:�֛��v�-�UP�Z�.�P6^��9X�S}Gk�:����q�~���7�YM�ZP�ă�f)�5s��ѐ�q���^�Ot�B"�!-�%�g�,�L���}>�d��I�d���o��      3   �   x�]�A
�0E�3���$)��dԤ�64qaOo�B1��|��Oה�����2ɰ�(�t��ea2��Uc��el�� 1���R:��@�(�ń���\^�-ܻ�E���$���EV��xo+J+d��$��״F6���[�A�?��;��<�� &_�      4      x������ � �      2   e  x���Kn�0���Sp����w�'�%$�AP�"D��]�3p��IBi�xa{�|����XӆR�)��m������1�=|M�f��i�.��<BSЮIi�`�_mƟ}o`��n���m��G,C�1�䴣uB?�To��P��+,�Xs6ײ�6���20HX?�BG�
doQ�]�&�ٟc5,' ��2.Π�L���8���*^�0;���0趋��h
�ڌ6�!����4�iu����k�ժ�Ǝ����g7��+��<!\Ke���v*se�;��љ�'okZ�K���N���������:����`�v6F�����Rp�o~�W��0xF�H4S-� /c��Ǚy*��!�/�䲑      (   *   x� ��2	مدیر
1	کارمند
\.


��      .   :   x����@���tv��$H���5&�pa�x7�ɫ�&�H�M��~INc	Q      $     x�m�ے� ���av�M��]���:MBFp�y�5i��7(?(`�5C��F�3ZpI�0Q�H���ENV�y�,�y"yu� Bk��� A�l�x�=�Q�z�41���s�6���a\_o����4�1_C�7�<z\���M��3�
.̷ܨS�8��6�X4u�}�$Q�PDs|�ҧ9��<���g����=#��m7l�cCQ��֥^/Nn�h�?��yn����@[?����qۢ=����ua��uQ�� ����      &   j  x�}����6���S�	
S�m��W�@���FX�2$9i�[ iy�^��C�E�w���)E93�l�E����ϐ?))�sy\���b�<,��o?%��o�����"������L-��{�s�!�Y�]��3l@h��t{���n�"��p@��9�;�n�?ƂA��h���#���m�'�Z��Z�%5矃/@���H�V<`]��48��coz��?��Ȭ�F�ʨ�W�_Qo�F�m�2v\w��veÝT95��XA="�<�,�B�U@:�{-�Ύ��	K <�F,�V> ނȊ���ۇ�������Uk\���`�`H&l��8x�
��c��
��c޺�t�7Ӽ��C�OMα:.��u��õ꺢HK���$�-Rb�\�)뚪.MO��9{Q�ubaL�,iW�t����J�Wא�])���檊�i_W�x�]�RN'��sep�esup/ƈ��u!\B���N%��y�F�H=vHf���P��qz�2��@�ݫ��N������O�~ p�&�!����1�`5E���ݜ�,ҁ�V d� � 	k��@���2|^�?���i���,��e��靂s��a��\�J�Y$$��wS��?���exʝ�o��Q�X)^�rG)�g�5	e�#G`��s�7�ŹӭP�<tCӈ\�,E��"�Yz"�w��$/�GPL������M(wv�Cj�bB)0@�
�� ��P̚�f�8M��*T�5���9dYv(�!K�CI��\J]~7��uZ��p��EV	ͦ<V�_"`�kf��d�̒�ex?N!	�d}��g��~�'|�&�������nK',&����e1|��4��ĝ^[�+���M�=�^�,s��PT�,�� ��~���ܖ�IR_���ӏ���ԯ��3=�;۶ug_X�f�eγ{K��eR��[R_(��|���� s;>M��]$�lڭٮ�%�CJA *>W� &tN(f����n\��s)���ue�Қ�Nٍ�s~h��F߹���p=�u.��A�!����A/�+l���:�"�ج�΄S|'�U�i�*�\��lV��57S���8����T�Z&7f�*�[��7f���{�e��C%�f���$��η-�      0   �  x�%ӻ�C1��S���C/�f�+�=�@�*l���:bk �&jk��6f�@�� �_����������������������;��PzjPz�PzPz�PzZPz�Pz:0z�`�L`�loxW4=s==K=+=k=8=pz.pz�pz���>���y��y��y��y��� ��C�A�E�CЋ}�{�@ЋDЋBЋFЋA�ˇ�����������������������������WE�E�E�E�E�E�6)�BѫFѫA�뇦ׂ�׊�׆�׎�ׁ�׉�כ�_���`�����������Л�Л�Л�ЛM�řy��&�]��f�]�ߦ�]����]��&�-�̔��i���������6�o�Y��$��Mr~��$'�Nr&���M%�c�'r=n@�&{Y�k�� rMv!D�ɮ��5٥�&�_ ?�\�      *   ]  x�%�K�0C�qk19.���^��uD��
��K�%��8ڌ�d<��^jFk��8����x��K̭ �T e)��X9
�<
��
���WK�B��6^�6^�6^��}�׭�ף��~����S��R�M+�f�xs�x��qN*qN)qN�pΨ������Vq��*��R���z��Q��5��W���Ss��W��B��������޻��4�έ��� 4�l�|�9�Ai���4�c�,���~�J�?�Z'=���qt�����9,_::8�u�"u��t��u�bt�����]8���9no������N=�]zx���s ����$�3��ɇ���G6����B$��x.L�@	�B%���.\g4�C�)�@vL#��h9��r ��@.ˁ\��,r�"��M�����N|�o�,odg>6�C٩�����Fv�c#��<�y�*�XNd�#��}ˉ�zD"���c9���D>��X.d�(
��@v���ݣ�/Y��X.�c����Bv٢�ݶhd�-�}�F�|`�ݸhdW.�K��Fv频ݺhd�.ٽ�Av�b�ݼdW/���Bv�b�ݾ����'L�/�_�h`|�����#��O�Y      9      x������ � �      K   �   x�}�A�0@����	ffJ�!\��2��.<	%��&S��-" *Mw?y�L	���G��O�##"��L�	�.G�M���]!1At�MQǲ��R��+9K���4��w��)&o��̴�F����ԉ��V�hrD:��<*��&x�<�������5��\|/���|���w��E�q�&N�ڕ�$����&Ԅ`      G   �   x�u�=�0���9E�*�s~J������a��G�.q�D�)hAH��ʏ�s<�>\�^��4HA�D-UUp���Ɣ0�Y�D��E	=�15{QQ��ClCO�M'�s\ �V�x,�٢�<7�[
c���خ����ʩ�����_���<�]����nTM�      =   �  x��Zˎ�]S_�K����o��^Y
0d�0�Ē�I�eCr��2� B`Rg�&9#�h��hrv���9U��d[v#���{���ԩ���"�6�bw��$����lw�pU->�]���j&�n����O��I;K��(����=����Ψ��Ó��d��;��i6�潶��=�լ�$�3,���_��~����\���,�]&Ս��wU�.Wϫ��+\�M�D�)� ��`�KUs���ov�j�����vw!kˇuRͫ��m��K�K�;��]�Ƹ�)��X��:���	���&խ,6��< ��_b�T��MqhM���]`����-P�p���)�9��Z���ps9�%���5I�4�9o=Ј�
�`�j����L򌜩��s�f����&�'��e���%w��-����,�0�rVݩ�o�-��]y�Z@0��?ie�CB8������k<O/�B ,��^�Gȏ�R�V[\�
/ ,�7��ĝ���7N?�F�Z*�,<�Vي�e1jQ�Ǯ|1�skc[Y���V�`	��o���R}"�e������j՚Q#z��P�>��+D�heø��Սʶ_�p��y�<A]��4���_�JīUߔ��������6rɉ%:7%-��)��D�< �C]�ŗp�R�'|�R���IՐ�G�H�i�����^q��z%�QX8���NՑ��%Qc����c6v��QdZ������Wo��Gu�<�\���ۭb�eY��o�~���ǟ?��ӏ����_|���i��o�j}�a���fX͇��5l=��Q�R���OTqb�;�
��B����^��|0�GE�{�,��=�}�Q�ۧ�ܦu��j8)݃iz�qVl!L׈�������E/���+�QBw�c��q�3�����,6�g.�ә����j�ϐ��~_T׸	��Z	��J�.ss��/,�f��XA����s��ё��� �(��v$�Y���c�)�X�aH|F�R�qZy|��B�R��W��!��-��\X��XT?!F���x
�r�1Ł���Nm���ЏI��o :�������O�G\�h�h��'�4Ɗ��M��(�C������g�O����ϟ=�k�����קgh�݁���5��aK˚�x��"�B,(���A>���x��) ��,|�h�(U�<�b��
�����A!���$9�� 9��N�;��;f�*���C���Vy�����彴�v���4,���I��p' ��=��	�
��{��9{���!I	0����?�G ��QS�䣇��^��=����c;�8��c��\	,h����T�\g�����	?��c���ړ\���Cl�^�	ٗ�Fq�L�Y�|�*@j�1��2ī�d]�E!�T{I'Yר��a}����� ��qɐL�{Upҗu���A�gR3W�R��HV�6=���J�I/V�~�)]b��2���Y�� B��5������b(�+=�t
 ]����Z��3�PJ��k�rn!�r�C�$��O~;�#Q�,@t����Ա�Rl(��JN8]p��̘U�)}�dt��	��z
����4��P��.��!�AM�d�D�{�	W����^"U����Bv�	o�'��=c��D�5r�`�V�o	�;�� ���!���~K�o7=�h��~gX���h�ڝQ���h��ܾ.�� Q[�+WR�N��+�jз#v{T��eê��`����BW�����3y�O�3c������5s�hH
�v��3_V�~_�l�\s��/]�s+������偀��LH�D7<Ү�~[D��@(j�P�'$�
1K%�Z�*����AĀS(=؃b�Ft����{`�N����G�r-�3c5�*��3�%�_#�y��r����	AM�*�٤��U_|��R��=���[o`�O�DZ��Tk�wŅ{��|�>�m��(wڶ�v_Ӎ��*rhqݖ���a�ؑj1�u������Q������^�t/� �[@3$�����bn}���X?�n\�fJ��
?�!B��;ZfrU�:M+[�M�տ��m�{e>פ�:g7��@��A�!|���>m����Q�u��[��Lԥ�L%nf-�S^1�q3V�d^����O�[}��O����(��YE ��+��Z#V7��<QJƄ��!Wl��.b]O�)U�D��?;�}�#HcMo	g\``�f��`��D4��8@nWx���ݼ�����E�y�@�U5Lܲne�aCkJ��R�h��` O>Rt[E7�F�40[�M���5�3�Ȱ3��fj�u��0��]ѧ�F_��eYoJ�����+��i���������ZZi��V2������{���-��^�ОK���,FF���  ���q?�o]lX&�Y!(�I�Ǐ�\z���J�o(0D�1������w���)�"	2-t�æ��%�֘��=������;>N�������x͊gkU����g��[��Ӿ�jcIVS�Mz�yK�ݼ�P�GJ�ރ��9���4PW��]3m\��859��%�U����q�\�w��ܠȩze��}U�N\�NB>�j�����������t�i����$?���[��ܲ���.�N[��޺����`�
M��FlQ24 �@�����(FY���"�f���T!�a�UZ�n��l�cZu���!��VR�����o͚ŸCC��VB�O�q��Y�� A��_��b�=J{���U�:A�4wa5���r?�/��n�ߨu�D�LH�'���r������%F�J�*�I|�^�5l��!���gPh���r�WW��&�CEc�M�V�i���wQ�'�G��6����1H�9��POՎ�g���N:�}I����wz�7Զ�:��eQ���^Il��I�&�s��'˙��.8���q�O�&L��67�@F��֛+�\s�isk���[���-�������YK4����j�^*�G�fイ�Ei��^�� K ��7"�����5}����Ǭ-yt�ZҐ�i��cEHM�C	���!gx��n7�~��uF�^:�:nJ�@��֩���+�\5��c@H=JG]�cфp=����̼)��ymm��M<'I�73�p.���
�����`1�+z7c�\�g���?��t\�Keܰ��6fW�� ���|.���F�.�_�0_o��8��ʦp^u&E��z2l�X��Tu#��>qS	W�T�QC��9���p!�D�����%�%��>�ꏪ�$'1K2k��e�pG����k`Z:k�w0�%.��R[m��1ʳ�¹U�����L:�(��Wc��hq�f�gI��iB0Rp7��u�B�jj���X����,��ș���O�ȍk���!���/��T�Ϝx��\��pI��C�"�M�G0n�h�`x�b��	�߿��k�U��U�N/k���V�=��Q\�����8~�(��p�DG���;�(m!z������(����Ӿ�����ͤ,�,�j=�y�!�@Q�����Z�_W8~-7�cI��s��tf�P#Q7�f��'N��-M�u[cAa@�9�Q�x�����H�JlF}�^_0CI�z��A�U�]��'FOw`,d�	�5㞍���Ɵ�����JFٜZ*����Z�Qd�j#��ʼ�?�|,�����u}/D�9����������A[�.�s*;�N��=�+�S6�#�X���<fѠ@�c<�?����g;�1p�mh�z����=�/RV�>      ;   k  x���Mn�0���)���<c���p�V���ݠ"DE˦7��e�I!��K�����A���K^���L��|�:j%�CGʔ���{h�H��J��Lǲ6�k��Kp䴞��#Pv3"m���N�1㥱���78v �y���s9���� `�:^78vp�܂��/�Fzm��q���G1ً���,k��W�H)L�k� �t@�_KW�V-B4:J�`�U�I�b�؀Ho�H�3�2E(e��u��h\$/����&C\Wy��"N;/&*5Z���Q뤠v�`i��vChQE��(�&[{Vy������J���r�)l!D�D����[	8�~0/��/�l����B�      ?   a   x���1�R0[>�s����f>jD	
���
/tyk1:|�ѫR9�plby�o��KfP�L4�<�:�]�mYm������g��3r      8      x��\K��>�EC@ ��_s2�Cn�/�%6��>�M����:@l����uЯ��8d+	�C~ǌ�gRd��{��ٝ�fWF#�_�z�H��Bx��C4�9��F���f0[~��l�t����g���?X>�W��{3���%����r-Ζ?�>]}6B �k-�4[�V�\=Y��?_.G��]͆�Z��l����x�l��8�.���=�Y����Z�m�wA�f��8<W�ft�}df��aV��Փq�l	\;�δH6��geÕ�a�Q����~�z�D�<]���9������:�� �k�cX�j�����aC�ZA�&ȁw��	�q�E��Ó˃�Ϯ����/��'��|9y\EP������?W��	#�s��3����Y�O+٢,�����Saa������4/�?$�+/�Fٹ�5!��Y�-����~p|r���R������2�����Ǐ������u����
jO����읣������W������z��+(���cm��@�q�\�Y�Y�X�3��\\>�Ρ	x�>�OU{���l^����'����jHpTr=g*�\�I�XPheC��R��5(��a�>0������ �_V��z�i$�Z�m�c��f��r�F�JAPhYy�~̀�f�2/D�d�^,��/���������|yu~qt�'��sF��O'���Sa|�a��Fhh�t��4`���v�"������r�ۈe^Ӱ{Ҡ�Yq�D�h�D� �+�q�2�Rm%C��� �<�j���%�a��(ɀ E ��Bm�w��l𐣊 �!���N>f�󚲗��8�����$B�h3r�� �+F�&�/��'o�u�����$sK53LА�i�S>��Q$�5���O	�r�x�7^��l)��;0�o�>��q
 D:_���<Z��U�������z�l^�x
KLoEX`sX�Z��h���ts-�^B�s�!�]>\<$�`�1�@�g��ib@�bG=���,5���h�o�����W���;8x����GV%��k/��"�N�_,n�U%	�g4�h|�xt�x��$6�J��̵�K���!W��h�FK8,���C
�/O����aq�����ɍa]o�:� Aʎy�{:��۠]l2(�4kVV�o��-�4�Y����ˡP���b�xDoF�|�D���KR1�>�q��������h��5�ȭ��~$��}M��V0B����Jl��4I�Ʋ�[�s.8M+9s��`�����hZ�$8*��x8� e�Cp�6��:NXX<��W�ϵ�24��xmo;�՜�B�E1��	��_�^|������0]NC�1+��B]��^k'Z�m��z��N���t�2��y��QI�E��������%;�jp�8�]��(.G��l���t�����i?<�io:{l�\fT>L<��%P���:~20`$N�P�4G�;�1aMc�+Nt��d���!�6<�U�����DH=)b�"+ًkA��B"�E�@�Z���d���ɤe����ݒa�IG��d
mh�h��撺�K�hO$czd��dt,���{����b$#�I��?��%eRh�*��M��mg��&3��ĶۛIU܍̈Ɠ�,;�齩���{��R�亝��1,�"&��/7bt�����1 �:����*��gҽ�uo*#�Ϭ{�˽��ߔu�ޑ`E�B��a��EDQ���v�����,�O��k{��	~](S;Z|]wмu�"T�1��qD-���p,n��B;��N��YX�|=َW&փs�]f�8��qp.����m���.�ͅL�2��y�b_�-OO�Bg����Zy�dm'co����!S��Fco�K^3�,;&%	�}.x:&_,)Ͼ�݌-$�+��O�V.z���v�3=m�vx!k�p]�6(.��B�8��YӒ"X���P�:$�B�X�ڐ�0
v���
-С8�(�ta���J�:�:`L�d�-M��&,�h�Nu1�UTl�*t��j�LI��n����+nkG�;���4�M�� E�P��&�[��TIB�++c��R0@22b�I����A_���]�� ��������������ls�6M����c����p�� ��Ū��
#p�AǷ-�3�sp�GcRu��\]�%��	3O�݇��J�������y�N�n�\۞��*Fԫ�B���aC7�^��$X��r8]W�D��t~�dQR,o;�����~�К0Y���R{nM���g��V�\�~�њ��$lw��PɈ�58ůy'8'�B��ڸm]����c[AH�0�q�,^]]^}(V�4�"��G���d=iގ��K!/N���{��W;6��D�]��d�6V��~k��B�;�6�!�6�ݞnz�����5ҵ�0��C�ҧ���%���%����[�ڲ��n���r��n��V���ZK׮���:'��%���������u�u�G��_q�H��«Kn9�y�څ�'�	�d�,������G��9��c�T�Gvsı~��t�"wA;�%��ԻSt9��Y�6b�bss��7�:ǲ���9�x6��3��²#+uk̘3lC��A֝��nKa��M���bw?Y�)��?���N֗3~C�gkź���NB��N�4�D�؟�4���w>�T�&�4%�R�����T#lS����p.��z2 p׫w�:w�s^���_l�Y��&:a�d�Lv�1�U؟�S19�����~i_��7�'U[���Z�CF}�R)nMq�O|��*DO��C��m�p4�l|X�=y��R�9���:>_3T���Yc�WC��E~^5̼zV��ȷ��Kb�����J����������1±j�z�^ý(��!v��Z��T����m�/_�#����r���i`��u������F��(�T���]׬*v��O_7��p�z��D=�%�x��2� ]���׃�҆��k4��i[�C��5�a��'���Z�DGW��>��-��C�S�!�M�	ז�FEqA�����ѣ�h{}�	PK(�ԕ��Ù��+��Q8��`	�q�nHp��E����m�L��oS���M���.N��a��;'����6shHڌd�)�]��)�m?��s I@��&�5���;��!�Mm&-!XU"���!�^�:�ۘ�B�^�0�B�n<`����ΆI�j,\C],�A�j$���U��t("Zœ�4�.6W?���Jt/�qvy�8>���W����'���+�:�;y}��>< !Ecƕuh{=������V���|��L¼��W���>?;*^��`;���4S$�gP��-|Z���vc}��`��O�5��:�[ �k�R)8z�8�8�P�轶Ў����{a�-��5����7pjK̝�N?��9���;��ޜRGt�S|��j�&�5'A�����D7�p7�b�7�Sw�ɍ�>1t�w+�!6�`�\��������(����ƸM6)g�C�*��a���l�V��������������FHI�/ߺV�bе�Ű}�F�	;�hUX�;'5�ƍɹ�`b2�w2�jݾ��a.���l.�b{�Ѫ�����JE��� �ӫНܵz��4��%��	$y@*l�īDC(*y�S��m��C	�	Z�^r�m�l'�g�M�Ni���	�  nɊaN	���	� :�G�*��o3�@tS�����	�f׵�)5��AorJ6dZ��Ճ��T��Q��%�ޥ��&��!n�>��XP%ӻ��8ގ�J�x6<���zL�CT��w���%74!����QRQ>~�re��1�Y٫t�	w���p�jB����tס.VU�%�b��v8U��u�����)��Pe����ꓪ�J� �k#��@��#G���Vʔ�Y��5�̤�@�I������IӁ�e :�x$�T�`��A���u���e:�J�Õd�Bi8� �!��pAքo)��l�l��Z�v�.ؠ6|��Z鮤:)�CwI��`o�b|�֊&J'�č���N/���e��ۃc����&e�Iq8>b -   D���v\)�`��U��9��x�|�oj���/+�n��o���      "   7  x���ݎ�8�����U#W��g�b������Q�ۯa�!
�p�"���:U�l(�ۇ�}�cA�z\�H>��@��BQ/90�a%o��f�W�ǚ���ߘ���cU �J�E=���S@
��r��v07;\�8:�/�5���t���Ҁ ��x�ѕ6��a���^�$ [A"��4?���-�ǔ�/��!|��1��_\,p�hDA\9*sDl����?K�̬�<�Gg�\��Sw���FS�����s��X_��
�����P�W�s�*��a�A�s4�U�a�Ya��O�s )�����L���5��}���T�i�1y���}��ly:�&��i�ԇ��J�e)�u c���@��s�b�gԞ:o�(���Q_~��Ӻ�8���������e�3�-g�E��i�-�DrQ���n��<u��������y� � 09��i�쉒D\-IL�����A���1D3�i��S�Y~.�$Z�
��_��A�A��C�Z;��%�+����9��0`Rn��*F�����Ks}�]x}��0ɑ��(��[�қ�w����4"�FL�J�}�vҫ��T��J�1��v�أ�� �z+�>���_a�M\��a?��uM8�1"t^[�=�ع= �q��d��t�7q7_|���u��;�����Rc�ue?��ς���B���lB*w��F�ƥ�Ʒ���\�Z(�^d$7Lm��ѱ둜��?�RQYqQJ��K�Vߝi�i��5c7]6�%Z![.	"mF�8���
iI��������r�*�Z%e~�ooo��
��      L   �  x�ݗٮ�H������G>J���0l��5�Ŏ������s��Ti�s�o�"#��*���]�t�F�]F��i샮}Ul�G�(�㮮��w��ë�B�`9�PBY�xt����L�F�X��.�����j��$�s{%�����|'GI}04����9
|�^J�U�51]��TyDY�=�I���*��2�/����|e��vj�Ԥ�	3@�e�ٻH�ӹ
�j�8��9�~��ؚ�],�po���mCOYw�A�=#A]�G�՗v;cT|j*��6�Ccx�g�c���ߢ�aF��|�������η�_������]�m��?�q2f��V�Z�����*S�FƗ皢tp7��]O��L��K�'fqb��H�o<v��>�Mud��SE²�&�D�z_��ẅ#�H��O�\��I�}�B���k��I�<������|��>�$�v��yE?\���j�R�.�՗0$z��j��(��ߦҟj�T�A�گ9���uO�u?�<�����1�1��
.���ز���r{:��{�9��;����� �@�A�� �0/[�K�xI]E3�uCU.�u����pƸ#{׵-�n��Z��Z�hI���i����u���5o)o�� Y|9�E�N#�	ȼ�1"`�UcN��_ܐ������ihOax���&,���&y�8���L��Y���ΰx��I�>b����!��RX���'eҳ- �bF�v 4f�nq��&GZ��Q+�/!{�FR�z;�������:[3��n+z&x��O�.;��'G�'���ROy�Ɂ]'sݑ��s�ʡ�� O�F����=���r�n(�Ȫs����U&zWf$�O��;��xd�� ��O�ӊަ� ��;u�^!��\�������uZ��9�������MW�Q��VVe�)͊�) ��|:�q3��߃.G�:�&��9��!��[#^# �	k�R�&�ӓ�fa]]��^戊W����<�,X�e�K ��̬�n���5$3A�+�H��KyGX]-�-I��'U�Q�����M�x{�L��$s�8���J2�]g;8	�YTyI�zǾ����K ����O��w�� �(�1���`_����:<��:@j%��1����[rx�i��C��LS߶�'�R�$pC�.4th�h�&�_PRܛM| ���5�La2U�4Р�u�@?�G,�k�?P�:���u�IC�%��Q��S˜�+v�z��c��ζ��t�r�b�aoxO���~4��> �q�؎�q��s7H����[vܖ��6:I>�T��-��vo��C���3�?d�Xu��}��f�.[��|���tzsC=�e�S�|�|�g�폢�`�]+�Q��Ӡ^�{7��a��6i;��p	*�J�����$G�H �D�.j�~��tN����Jr�EU��ߴ(��>r{z�e%c�:E�4ؐ9����Yc2�y2M:Fi`8�/ ���� �A���@��<��HƌA1ȑ��`�g����"�[7�?p-K��x*������Xݑ_�Q�<�y�.�s5T�ǿ�q�|�,@#�kf1�W��?t�f^�]�0=3�Z���D)~�ِY��N��S�N���-@,Z ��@)��cRh����D�<�j����^�-
]�7_�&p�A^���cY<��z�3�Ξ*>�Yc)yJv-�";��Oh��zr����e����4q���YmZ�BB�8��!d���Z���!��-܇�Z��SZ��5*hV��[X4{"����;�F_���F��A֗��,bk��#���%���w��H�ٞ��]��R3�;C9���}�v���x!ry�N�lO�Vm9�1���:�R��]�ص�:�py�,}@�ɦ~y�p�ٝ#F��P���􈈥��AZv���TYn�6]n�b�����AI�p��NH"����h��8���j�u��yk��O�L&pA`�bd��5L;.ZYi�v^R�j7�·�*F���{����g(L�_��߾}�]�g8      N      x�3�L�H�-�I�K��Efs��qqq �<	�      A   :   x����0İ����)�J/鿎 'r��G<h�X�b�WJܩ�L��M���{�~�
O      C   0  x�u�MN�0���)��D3q�$޲�UYuS�(H���(��#�*D���&��2L�� ,�?z~���(���lfgU.�o��\ p�o�4y�	|t!r��0M?��(�*.�+�V��u�Tڌ>h!�s;��ZPAsq���7��ӳ����s�����lc.�3{P�z������%F�:!fQ�6:2�<Ƒֻ[��bĻ���К�6k��x�x�� �k�Q������!�=W�\��N%?�>��N�\Ғ�*���f<���q}�ɑ&O�d4�O���V�	������C�q�oם�      E     x�e�;n�0К<������e��R���iX�%u�0͊#1�n�����uE!P�����Z�Dy<��w��!G�|d�7�xbщ��!L����G��B���U�9�:PB������ǋ�+�V�:�/���+}#�Y<��KG�Ȳ1��x]�IT�&���=̺E��]ߗ�Kcct�Q��	(�z�ƾ��h�]�4gR�Ds=��Q�VPU�pGΊ�v�1Zp1�ǚ�i��N�0�&�^}"i��O|6o%� �)�t�o>>�f�񳺇]�~���?OS��      I   x   x�%��1�7��6w.��!��`��u�W	�U%;݉L�L����2��J�=���DF\�9�J�%��"�l�CHeF��r�!��o�^C��Y)R�������!x      O      x������ � �      P      x������ � �      R      x������ � �      S      x������ � �     