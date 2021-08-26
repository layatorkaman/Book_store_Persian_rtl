PGDMP     8    7                y        
   Book_Store    13.2    13.3 @               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24817 
   Book_Store    DATABASE     p   CREATE DATABASE "Book_Store" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Book_Store";
                postgres    false            L          0    24893    accounts_customuser 
   TABLE DATA           �   COPY public.accounts_customuser (id, password, username, email, first_name, last_name, is_staff, is_superuser, is_active, last_login, date_joined, slug) FROM stdin;
    public          postgres    false    211   ;       S          0    24973    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    218   N<       T          0    24983    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    219   �<       R          0    24924    accounts_address 
   TABLE DATA           r   COPY public.accounts_address (id, is_default, province, city, street, details, postcode, customer_id) FROM stdin;
    public          postgres    false    217   �<       H          0    24849 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   <=       N          0    24908    accounts_customuser_groups 
   TABLE DATA           Q   COPY public.accounts_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          postgres    false    213   Y=       D          0    24831    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   v=       F          0    24841    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   �>       P          0    24916 $   accounts_customuser_user_permissions 
   TABLE DATA           `   COPY public.accounts_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          postgres    false    215   C       J          0    24859    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   #C       Y          0    25071    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    224   @C       o          0    25213    orders_cashoff 
   TABLE DATA           n   COPY public.orders_cashoff (id, title, cash_off, min_price_off, start, "end", status, creator_id) FROM stdin;
    public          postgres    false    246   ]C       i          0    25189    orders_percentoff 
   TABLE DATA           e   COPY public.orders_percentoff (id, title, percent_off, start, "end", status, creator_id) FROM stdin;
    public          postgres    false    240   �C       ]          0    25094 
   books_book 
   TABLE DATA           �   COPY public.books_book (id, title, created_at, updated_at, authors, description, quantity, price, image, is_active, slug, creator_id, last_edit_by_id, max_cash_off_id, percent_off_id) FROM stdin;
    public          postgres    false    228   FD       [          0    25086    books_category 
   TABLE DATA           m   COPY public.books_category (id, name, created_at, updated_at, slug, creator_id, last_edit_by_id) FROM stdin;
    public          postgres    false    226   J       _          0    25105    books_book_categories 
   TABLE DATA           I   COPY public.books_book_categories (id, book_id, category_id) FROM stdin;
    public          postgres    false    230   K       X          0    25049    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   IK       B          0    24820    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �M       r          0    25336    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    249   _P       t          0    25348    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    251   �Q       q          0    25221    orders_cashoff_editors 
   TABLE DATA           O   COPY public.orders_cashoff_editors (id, cashoff_id, customuser_id) FROM stdin;
    public          postgres    false    248   �Q       a          0    25155    orders_defaultbasket 
   TABLE DATA           ?   COPY public.orders_defaultbasket (id, customer_id) FROM stdin;
    public          postgres    false    232   �Q       c          0    25165    orders_discountcode 
   TABLE DATA           �   COPY public.orders_discountcode (id, title, type, percent_off, cash_off, min_price_off, code, start, "end", status, creator_id) FROM stdin;
    public          postgres    false    234   R       e          0    25173    orders_discountcode_editors 
   TABLE DATA           Y   COPY public.orders_discountcode_editors (id, discountcode_id, customuser_id) FROM stdin;
    public          postgres    false    236   �R       g          0    25181    orders_order 
   TABLE DATA           k   COPY public.orders_order (id, created_at, status, basket_id, delivery_address_id, discount_id) FROM stdin;
    public          postgres    false    238   S       m          0    25205    orders_orderitem 
   TABLE DATA           K   COPY public.orders_orderitem (id, quantity, book_id, order_id) FROM stdin;
    public          postgres    false    244   �S       k          0    25197    orders_percentoff_editors 
   TABLE DATA           U   COPY public.orders_percentoff_editors (id, percentoff_id, customuser_id) FROM stdin;
    public          postgres    false    242   'T       u          0    25359    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    252   NT       v          0    25370    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    253   kT       x          0    25378    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    255   �T       y          0    25386    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    256   �T       �           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, true);
          public          postgres    false    220            �           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    221            �           0    0    accounts_address_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.accounts_address_id_seq', 3, true);
          public          postgres    false    216            �           0    0 !   accounts_customuser_groups_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.accounts_customuser_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    accounts_customuser_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.accounts_customuser_id_seq', 2, true);
          public          postgres    false    210            �           0    0 +   accounts_customuser_user_permissions_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.accounts_customuser_user_permissions_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);
          public          postgres    false    204            �           0    0    books_book_categories_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.books_book_categories_id_seq', 3, true);
          public          postgres    false    229            �           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 3, true);
          public          postgres    false    227            �           0    0    books_category_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.books_category_id_seq', 8, true);
          public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);
          public          postgres    false    222            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);
          public          postgres    false    200            �           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    250            �           0    0    orders_cashoff_editors_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.orders_cashoff_editors_id_seq', 1, true);
          public          postgres    false    247            �           0    0    orders_cashoff_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.orders_cashoff_id_seq', 1, true);
          public          postgres    false    245            �           0    0    orders_defaultbasket_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.orders_defaultbasket_id_seq', 2, true);
          public          postgres    false    231            �           0    0 "   orders_discountcode_editors_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.orders_discountcode_editors_id_seq', 3, true);
          public          postgres    false    235            �           0    0    orders_discountcode_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.orders_discountcode_id_seq', 3, true);
          public          postgres    false    233            �           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 11, true);
          public          postgres    false    237            �           0    0    orders_orderitem_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.orders_orderitem_id_seq', 15, true);
          public          postgres    false    243            �           0    0     orders_percentoff_editors_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.orders_percentoff_editors_id_seq', 2, true);
          public          postgres    false    241            �           0    0    orders_percentoff_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.orders_percentoff_id_seq', 2, true);
          public          postgres    false    239            �           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    257            �           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    258            �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          postgres    false    254            �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    259            L   $  x�}�Oo�@���)z�f���vIL4mL-�O�UKL�E���@��髍�ƚΛd�2�~��t���R
�llt*c����#G�,&�y�^�_ƨ��0�M���5��b�W٤�����Uɼ�<l!jk�؊,���AH�̕ʴ��ܛ�*�&bM�� ���M�(��@�%��2�C#��y�&�
�)�7�C��$Y8ټ����7�V��EL?gvяxd��dL��[���{͏i�;P*-+U��D䑢�:Q&��/��GW��K�I�c��3��Ȥ������/M]׿�~r      S   &   x�3�,N�I��t�L����K���L�,�4����� ��X      T      x������ � �      R   �   x�}���0���L��$�g&`$���=�r���C7��.�Q��/�$��l��H+�¤�C��DrEFR,KOu�X�t�K�c��7������ҙpEW�%�M�g<�i5�Q��Sw���N�	��;�Ț����j�      H      x������ � �      N      x������ � �      D     x�m�ے� ���av�M��]���:MBFp�y�5i��7(?(`�5C��F�3ZpI�0Q�H���ENV�y�,�y"yu� Bk��� A�l�x�=�Q�z�41���s�6���a\_o����4�1_C�7�<z\���M��3�
.̷ܨS�8��6�X4u�}�$Q�PDs|�ҧ9��<���g����=#��m7l�cCQ��֥^/Nn�h�?��yn����@[?����qۢ=����ua��uQ�� ����      F   j  x�}����6���S�	
S�m��W�@���FX�2$9i�[ iy�^��C�E�w���)E93�l�E����ϐ?))�sy\���b�<,��o?%��o�����"������L-��{�s�!�Y�]��3l@h��t{���n�"��p@��9�;�n�?ƂA��h���#���m�'�Z��Z�%5矃/@���H�V<`]��48��coz��?��Ȭ�F�ʨ�W�_Qo�F�m�2v\w��veÝT95��XA="�<�,�B�U@:�{-�Ύ��	K <�F,�V> ނȊ���ۇ�������Uk\���`�`H&l��8x�
��c��
��c޺�t�7Ӽ��C�OMα:.��u��õ꺢HK���$�-Rb�\�)뚪.MO��9{Q�ubaL�,iW�t����J�Wא�])���檊�i_W�x�]�RN'��sep�esup/ƈ��u!\B���N%��y�F�H=vHf���P��qz�2��@�ݫ��N������O�~ p�&�!����1�`5E���ݜ�,ҁ�V d� � 	k��@���2|^�?���i���,��e��靂s��a��\�J�Y$$��wS��?���exʝ�o��Q�X)^�rG)�g�5	e�#G`��s�7�ŹӭP�<tCӈ\�,E��"�Yz"�w��$/�GPL������M(wv�Cj�bB)0@�
�� ��P̚�f�8M��*T�5���9dYv(�!K�CI��\J]~7��uZ��p��EV	ͦ<V�_"`�kf��d�̒�ex?N!	�d}��g��~�'|�&�������nK',&����e1|��4��ĝ^[�+���M�=�^�,s��PT�,�� ��~���ܖ�IR_���ӏ���ԯ��3=�;۶ug_X�f�eγ{K��eR��[R_(��|���� s;>M��]$�lڭٮ�%�CJA *>W� &tN(f����n\��s)���ue�Қ�Nٍ�s~h��F߹���p=�u.��A�!����A/�+l���:�"�ج�΄S|'�U�i�*�\��lV��57S���8����T�Z&7f�*�[��7f���{�e��C%�f���$��η-�      P      x������ � �      J      x������ � �      Y      x������ � �      o   S   x�3��~��vύ-�����44200�44 N##C]]#sC++cSm+c���PR���
���A2a��\1z\\\ �(      i   v   x�U�1�0��+�#�����{H*>C�J�76�&B��j�ô��X�����e�1H 쐜t����av-'�Icj�w�$6Be.C^�R��o����Ζ8ԅ�D\Z}k�� 6
,�      ]   �  x��W�n�V]�_�e�´(Ɍ���]tӮ
������ț�jC���?�Jfd3%�J�.��Ү_�sf.����8�)�;�33gƾ�]�;3_�M䚁�5�S����Zk��~���k��4��j��j�v��ra�]�����j�u�e/�(��zfhR7�4	���ûK�\32C�̳��,t�s�����=|6�8QK
�=�w͔�W�3��eqQ؝��k�a�ׯ}��5Ħ�%��$j�x�Qʍ�K7�ȺYϥ0R��^��d�,�����C�|�mc���>_R�0w��	Ĕu�znDO��_�����安<1��������k8=5��i&4��4��Z�Q�/qe"�!��zo��8�;�b&!>QvA�Y��I��yVT)�B���@	��LL�?�t
Y�N�Ņ�Ź���EN�;S�jlQTt�~@<3w8�!¥_"P�>� 	V -^Hyɻ�M:���ׄz�����b��F*�X#�c��,��рq�S��3( �Ð`��6f
�"$�x�I��+�{jc��p%]�0��"6�QG��!����(�������w�4����jʝS���DW���h��#qU	�S0���l�X1%5���>q�@��SW�U%���P�+,3�zA�2Z�I�\"k"(��!�R��?3�+"L�Fd�'=�j�VJ�̜�r��9ǿ����������nɅϔ������o�_�r6Y��[�1V��u��o��I:Bې_`�f�]�y���7��~��{AP���0�_R�fVR�-M$c!I��b��vY��ZE����$&�\,"5d��s�Wi8��*�NG�v�����i6���*j��<�SB	�bvA�O6R�m�RO����&ҘjQʒ�`A�@+_�(��#j��W��r7����+4�*����Ȑ��aΎ���؊=:���Rau�,��%a2e9a�xԅ��R���J�ؑ�����ቶ-�L\�,9��5\^,����t�^���������q��t�[��*�VJЎ��a�}��]�**'{�y�N�	���e�mBI�+e��1$>��F ��"@�Ӝ�	���	��F���9;:;~�kyI~y�O�}��$�g#������:�4A9^�|귂G7I����>�4s�K��2�P�u��\L*�V��,_IXq�r�]�e�pRk����ع8�G��H��T�;�R��ĩ�������W+���Z^��X_R)]��jA�O��d΀�H،_i{K�����,�ϰز*�qk�~��P�,�bjg����Gⶪ��������k+y:�Ld#�z]"�s��X��N�2��TNX�&c/�IIQ�P~���3z�r��d��v�f;�\��xB(F�4��*%beI Şn�ƒ7��HVE(��i �z�G�A�41e�L�Ԝ���bÐ��G�#-\š����7[b�u      [   �   x���=R1Fk�)�x,Y�۳pv'ENA�!̆4�D&�����
�?�gk�_��|����� �Lܡ��8Z;"hH!!���?����<mѭ�0��ڿ��k/Et�3_J�c�5��*��Tl��T����o[��<&ӝSX����.?��<� �u��=�O +���wy���ܾ�F�4�Kێ6P�d��4��@:Z�z�:pC	9���<����E*1a��u�L�z�o���T      _      x�3�4�4�2�4�ƜƜf\1z\\\ !��      X   ^  x���Kn�0���)�Z&f�!Ej���8׏�E� ��M�E���§��h��p|��LI��HV�E!	������`B34���@. ���LB�����~����4|��[�N�S�����Q��`M�A8��2k�H��_��j��1�4�k�L�"H���{
��=VӨL#�I���w ������2HinQ�M�T;�/��@����"�2P��Ae� ��y�U���Ւ�2
���^��ة�H�b�2CP<{�6Gf�_��8<����"Fe��VHVm- ?�26��w���pQ"B���A��)�y˃�X�?l��F�?d_['���C�@�� W�c�p���F+�v�����+��{~��� �ݹy����Z�6$���R��L�\
!��?]�r��5���]���'�ax=�7�g���ԫ��K��/�U?ډ-%�f��J��b�������z����n{����}����R|mL)���(�E5��c��B�A���5<��By�<S��m
��f�*�n��,D{��%AT&��s�P%��Ј�HDk(Pd%�U��V��
L�z�>D��tuw~=>c;��g�r�n�
C>�����Z�7���      B   �  x����n� ������U#f�ﳬ�X����I1�ڷ_��*��7(�s>�Ü�6���)}���B���'o�	�QO(~�zF�|ȁ�߄=S��;1��N�Ù�����ޞ�2�*r��Ǝ�u�H@�E����.�h�.��0��_�5'�i:��i@ JA���L������:H�$*�݂��r�pN�2%�3DV��tvH�G��Qg�����}����������܏�9��v�`S�����q1�hNn��=(����\@*Q-���8G��Y ����F�\�v�a<oI��(��� f<g��9���uӧ�RL���}x[݋�[��95����m�>m�<U��j�(�u!c�����L1��ꖐ:�`&Q���/_dp�e\@n��������e�3������į2�.�X����z�L�m�F�Kg��}�}� � �$��4�7��$�GK1�O%;ADa@2��h�d?)�\~^��ZV
��ooZPj��!�&ă��:�'y$�Z��n������ȩfpsNW7��.���f�i�U�2ɑ��(��J�!ǥ7c��ǥ�4#�F,�J�B�wۘU��TZ�J�^��W{�إ�� ��Z
�Q�>S�&�¼�;v�|�q�]�e�8�m����~���YUe�      r   '  x��Ɏ�0  г|��'��z��l*:X2	Wh��g^by��N(��=�yvzdWX�E���(��l^x�P7��2�'Hq_ن���dS��sbp
7j�V�ӋImB�
��(զ����I�|H��u������1�70l�T���	�-��Rʗ{��?��r�>&`�ֲcݜh��w���;b�@k�&7i����8�#�&�.cB�M�L��������a��UO�Cv��+3G������MQ37�\R�Z/�ܙ ���� uuQ�K@�E��.�w�q�Li      t      x�3�L�H�-�I�K��Efs��qqq �<	�      q      x�3�4�4����� �X      a      x�3�4�2�4����� ��      c   �   x�m�;
�@��zr���ٍ�lk/VVi.ZH�x#)rA"�W�Mf�eL"B|,�4?����$&5I��p���f�t�W�
rp��FT�t�U_���v�u� Y�lR��\����ƹIa\]Ւ��z3�њ\Ķ#HI_яC��|����G>��̮�lι(3.��Hoc�˨��@ɾr?8����t-�zj[3      e      x�3�4�4�2�4�Ɯ�@2F��� !��      g   �   x�e�M
�@��u��C��L29�������hS�}/&�J��!R-%�1�N�B�k�~ۣq�F)������$J��i�Z�VR�{@O������uT�ic_ �J��Cw��\"D�ɳ��e����T:����"�j���T=�rؼ���7Xg����C�����X�      m   O   x�%���@�L1���%������fd�[�p�'���+;Ô9��������wNq�v5�H�,T�m�uP�F���|.�M      k      x�3�4�4�2�4�1z\\\ 	      u      x������ � �      v      x������ � �      x      x������ � �      y      x������ � �     