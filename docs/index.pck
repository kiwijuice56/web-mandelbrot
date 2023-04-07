GDPC                                                                             	   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex       �      &�y���ڞu;>��.p   res://FractalNavigation.tscn�      G      ��p���eR���   res://default_env.tres         �       um�`�N��<*ỳ�8$   res://fractal_navigation.gd.remap   �$      -       �6@\�'2'�ḓQ$�   res://fractal_navigation.gdc�      A      ���T�P�Jg�.9�   res://icon.png  �$      �      G1?��z�c��vN��   res://icon.png.import   �      �      ��fe��6�B��^ U�    res://mandelbrot_fractal.tres   �      �
      �ҧFt�7������   res://project.binary�1      D      ��R�~��+Y��FH I        [gd_scene load_steps=4 format=2]

[ext_resource path="res://mandelbrot_fractal.tres" type="Shader" id=1]
[ext_resource path="res://fractal_navigation.gd" type="Script" id=2]

[sub_resource type="ShaderMaterial" id=1]
shader = ExtResource( 1 )
shader_param/x_min = 512.0
shader_param/x_max = 512.0
shader_param/y_min = 512.0
shader_param/y_max = 512.0
shader_param/max_iter = 256
shader_param/shimmer_speed = 0.1
shader_param/extra_iter = 4

[node name="FractalNavigation" type="ColorRect"]
material = SubResource( 1 )
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 2 )
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC   .      N   >     ����������������ض��   ��������¶��   ��������Ŷ��   ���������Ҷ�   ������ض   ����������ض   ����������ض   ������ζ   ����������ζ   ����������ζ   �����������ض���   �����������ζ���   �������ڶ���   ���۶���   �������۶���   ��ڶ   �������ڶ���   ���������������۶���   ζ��   ϶��   ���������������۶���   ����������������   �����϶�   �����¶�   ����¶��   ���������¶�   ��������������������ض��   ����¶��   ����������������������Ҷ   �����������   �������Ӷ���   ��������������������ض��   ���������������   ��������������������   �������Ŷ���   �����׶�   �����¶�   �����������¶���   ���Ӷ���   ����޶��   �����������ٶ���   �������Ķ���   ����������Ӷ   �������Ķ���   ����������Ӷ   �������ض���  ���Q��?  �~j�t�h?     �?      x_min         y_min         x_max         y_max                    �>      @                                           !   	   *   
   +      0      5      6      =      >      G      H      S      ^      i      m      n      v      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,      -   	  .     /     0     1   &  2   0  3   :  4   @  5   I  6   O  7   X  8   ^  9   _  :   h  ;   s  <   y  =   }  >   ~  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   
  J   %  K   +  L   ,  M   4  N   <  O   Y2Y3�  YY8;�  V�  Y8;�  V�  �  YY;�  V�  9�  R�  Y;�  V�  9�  R�	  YY;�
  V�  Y;�  V�  YY;�  V�  �  YY;�  V�  �  9�  YY0�  P�  V�  QX=V�  �  T�  P�  R�  T�  Q�  �  T�  P�  R�  T�  Q�  �  �  YY0�  PQX�  V�  �  T�  �  T�  P�  Q�  �  T�  �  T�  P�  Q�  .�  YY0�  P�  V�  QX=V�  �  T�  P�  R�  T�  Q�  �  T�  P�  R�  T�  Q�  �  �  YY0�	  PQX�  V�  �  T�  �  T�  P�  Q�  �  T�  �  T�  P�  Q�  .�  YYY0�  P�  V�  QX=V�  �  PQ�  �  �  YY0�  PQX=V�  �
  �  P�  R�  Q�  �  �  P�  R�  Q�  �  PQYY0�  P�  V�  QX=V�  &�  4�  �  T�  P�  QV�  �  �  �  T�  �  �  �
  �  �  T�  �  �  &�  4�  V�  &�  T�  P�   QV�  �  �  �  �  '�  T�  P�!  QV�  �  �  �  YY0�"  P�#  QX=V�  �  �  P�  R�  R�	  Q�  T�  �  �  �  PQYY0�  PQX=V�  ;�$  V�  �%  PQT�&  T�  �  ;�'  V�  �%  PQT�&  T�  �  ;�(  V�  �$  �'  S�  �  ;�)  V�  P�  T�  �
  T�  Q�
  �  ;�*  V�  �  P�  T�  �
  T�  Q�  ;�+  V�  P�  T�  �
  T�  Q�
  �  ;�,  V�  �  P�  T�  �
  T�  Q�  �  ;�-  �  P�
  T�  �)  �*  �
  R�
  T�  �+  �,  �
  Q�  T�  �  P�
  T�  �)  �*  �
  R�
  T�  �+  �,  �
  Q�  T�  �-  �  �  T�  T�  �(  �  T�  T�  �(  Y`               GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [gd_resource type="Shader" format=2]

[resource]
code = "// The main rendering script of the Mandelbrot fractal
shader_type canvas_item;

// Bounds of the graph, set by fractal_input.gd
uniform float x_min = 512; uniform float x_max = 512;
uniform float y_min = 512; uniform float y_max = 512;

// The maximum amount of iterations per pixel, aka the resolution of the fractal.
// Values in the range of [32, 512] are reasonable, depending on the device
uniform int max_iter = 32;

// How fast the palette is cycled through, proportional to the change in `TIME`
uniform float shimmer_speed = 0.1;

// How many extra iterations are taken to reduce colorbanding after a pixel is calcualted
uniform int extra_iter = 6;

// http://lolengine.net/blog/2013/07/27/rgb-to-hsv-in-glsl
vec3 hsv2rgb(vec3 c) {
	vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
	vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
	return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

// Coloration: This part is not very relevant to the actual calculation, so you can
// modify it for different palettes. Most palettes use the iteration count `iter` to match
// a pixel to a color on a gradient. The parameter `mu` is a decimal number in the range
// [0, 1] that is functionally equivalent to `iter / max_iter`, but with some extra math 
// to reduce the color banding: http://linas.org/art-gallery/escape/escape.html
vec3 color_cell(float mu) {
	float shimmer_mu = mu + TIME * shimmer_speed;
	
	// Keep ratio in range [0, 1.0] since we are adding a large constant, TIME
	shimmer_mu -= floor(shimmer_mu);
	
	return hsv2rgb(vec3(shimmer_mu, 0.5, 1.0));
}

void fragment() {
	float x = x_min + UV.x * (x_max - x_min);
	float y = y_min + UV.y * (y_max - y_min);
	float x0 = x;
	float y0 = y;
	
	int iter = 0;
	
	// https://en.wikipedia.org/wiki/Mandelbrot_set
	while (x * x + y * y < 4.0 && iter < max_iter) {
		// x = abs(x); y = abs(y); Uncomment for burning ship fractal
		float xtemp = x * x - y * y + x0;
		y = 2.0 * x * y + y0;
		x = xtemp;
		iter++;
	}
	
	if (iter == max_iter) {
		COLOR.rgb = vec3(0.0);
	} else {
		// Here is where we calculate `mu` for coloration
		
		// We take some extra iterations for a smaller error in the coloration
		int iter_total = iter + extra_iter;
		for (iter = iter; iter < iter_total; iter++) {
			// x = abs(x); y = abs(y); Uncomment for burning ship fractal
			float xtemp = x * x - y * y + x0;
			y = 2.0 * x * y + y0;
			x = xtemp;
		}
		
		float modulus = sqrt(x * x + y * y);
		float mu = max(0, (float(iter) - log(log(modulus)) / log(2.0))) / float(max_iter);
		
		// `mu` is still in the range [0, 1], but the curve is shifted to spread the color
		// values farther from the high iteration values, which are rarely reached
		mu = sqrt(mu);  
		COLOR.rgb = color_cell(mu);
	}
}"
               [remap]

path="res://fractal_navigation.gdc"
   �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         FractalNavigation         language      GDScript      path      res://fractal_navigation.gd       base   	   ColorRect      _global_script_class_icons,               FractalNavigation             application/config/name         gd3-mandelbrot-demo    application/run/main_scene$         res://FractalNavigation.tscn   application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres              