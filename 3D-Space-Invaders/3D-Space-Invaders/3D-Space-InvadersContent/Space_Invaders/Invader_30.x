xof 0303txt 0032

// Generated by 3D Rad Exporter plugin for Google SketchUp - http://www.3drad.com

template Header {
<3D82AB43-62DA-11cf-AB39-0020AF71E433>
WORD major;
WORD minor;
DWORD flags;
}
template Vector {
<3D82AB5E-62DA-11cf-AB39-0020AF71E433>
FLOAT x;
FLOAT y;
FLOAT z;
}
template Coords2d {
<F6F23F44-7686-11cf-8F52-0040333594A3>
FLOAT u;
FLOAT v;
}
template Matrix4x4 {
<F6F23F45-7686-11cf-8F52-0040333594A3>
array FLOAT matrix[16];
}
template ColorRGBA {
<35FF44E0-6C7C-11cf-8F52-0040333594A3>
FLOAT red;
FLOAT green;
FLOAT blue;
FLOAT alpha;
}
template ColorRGB {
<D3E16E81-7835-11cf-8F52-0040333594A3>
FLOAT red;
FLOAT green;
FLOAT blue;
}
template IndexedColor {
<1630B820-7842-11cf-8F52-0040333594A3>
DWORD index;
ColorRGBA indexColor;
}
template Boolean {
<4885AE61-78E8-11cf-8F52-0040333594A3>
WORD truefalse;
}
template Boolean2d {
<4885AE63-78E8-11cf-8F52-0040333594A3>
Boolean u;
Boolean v;
}
template MaterialWrap {
<4885AE60-78E8-11cf-8F52-0040333594A3>
Boolean u;
Boolean v;
}
template TextureFilename {
<A42790E1-7810-11cf-8F52-0040333594A3>
STRING filename;
}
template Material {
<3D82AB4D-62DA-11cf-AB39-0020AF71E433>
ColorRGBA faceColor;
FLOAT power;
ColorRGB specularColor;
ColorRGB emissiveColor;
[...]
}
template MeshFace {
<3D82AB5F-62DA-11cf-AB39-0020AF71E433>
DWORD nFaceVertexIndices;
array DWORD faceVertexIndices[nFaceVertexIndices];
}
template MeshFaceWraps {
<4885AE62-78E8-11cf-8F52-0040333594A3>
DWORD nFaceWrapValues;
Boolean2d faceWrapValues;
}
template MeshTextureCoords {
<F6F23F40-7686-11cf-8F52-0040333594A3>
DWORD nTextureCoords;
array Coords2d textureCoords[nTextureCoords];
}
template MeshMaterialList {
<F6F23F42-7686-11cf-8F52-0040333594A3>
DWORD nMaterials;
DWORD nFaceIndexes;
array DWORD faceIndexes[nFaceIndexes];
[Material]
}
template MeshNormals {
<F6F23F43-7686-11cf-8F52-0040333594A3>
DWORD nNormals;
array Vector normals[nNormals];
DWORD nFaceNormals;
array MeshFace faceNormals[nFaceNormals];
}
template MeshVertexColors {
<1630B821-7842-11cf-8F52-0040333594A3>
DWORD nVertexColors;
array IndexedColor vertexColors[nVertexColors];
}
template Mesh {
<3D82AB44-62DA-11cf-AB39-0020AF71E433>
DWORD nVertices;
array Vector vertices[nVertices];
DWORD nFaces;
array MeshFace faces[nFaces];
[...]
}
template FrameTransformMatrix {
<F6F23F41-7686-11cf-8F52-0040333594A3>
Matrix4x4 frameMatrix;
}
template Frame {
<3D82AB46-62DA-11cf-AB39-0020AF71E433>
[...]
}
template XSkinMeshHeader {
<3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
WORD nMaxSkinWeightsPerVertex;
WORD nMaxSkinWeightsPerFace;
WORD nBones;
}
template VertexDuplicationIndices {
<b8d65549-d7c9-4995-89cf-53a9a8b031e3>
DWORD nIndices;
DWORD nOriginalVertices;
array DWORD indices[nIndices];
}
template SkinWeights {
<6f0d123b-bad2-4167-a0d0-80224f25fabb>
STRING transformNodeName;
DWORD nWeights;
array DWORD vertexIndices[nWeights];
array FLOAT weights[nWeights];
Matrix4x4 matrixOffset;
}
Frame RAD_SCENE_ROOT {
FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
}
Frame RAD_FRAME {
FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
}
Mesh RAD_MESH {
288;
2.410570;0.849642;-0.169310;,
1.606522;-0.349961;-0.157501;,
2.400149;-0.356812;-0.169676;,
1.193867;0.047865;-0.150998;,
-0.406224;-0.345284;-0.126627;,
-1.599894;-0.341329;-0.108317;,
-2.412567;-0.334313;-0.095849;,
1.197322;0.447900;-0.150877;,
0.407071;0.454722;-0.138753;,
-0.399254;0.461683;-0.126382;,
-1.205579;0.468644;-0.114012;,
0.823934;1.669820;-0.144617;,
-0.798685;1.264713;-0.119906;,
0.820314;1.250735;-0.144744;,
-0.795065;1.683797;-0.119779;,
2.007579;1.240485;-0.162959;,
-1.989460;0.868578;-0.101815;,
2.004233;0.853150;-0.163076;,
-1.985950;1.274963;-0.101691;,
-1.209034;0.068610;-0.114133;,
-2.402146;0.872141;-0.095483;,
-0.402709;0.061648;-0.126504;,
0.403615;0.054687;-0.138874;,
1.599447;-1.169080;-0.157749;,
0.802529;-1.543214;-0.145689;,
1.596156;-1.550065;-0.157865;,
1.205808;-1.165681;-0.151710;,
0.805820;-1.162228;-0.145573;,
-0.819472;-1.141846;-0.120636;,
-1.610150;-1.528734;-0.108677;,
-0.822873;-1.535531;-0.120755;,
-1.206762;-1.138503;-0.114694;,
-1.606750;-1.135049;-0.108558;,
-1.203306;-0.738468;-0.114573;,
-2.013087;-1.131541;-0.102324;,
-1.603294;-0.735015;-0.108436;,
-2.009631;-0.731507;-0.102202;,
-0.409680;-0.745319;-0.126748;,
1.990247;-0.766039;-0.163567;,
1.986737;-1.172423;-0.163691;,
1.602957;-0.762695;-0.157626;,
1.209318;-0.759297;-0.151587;,
0.396645;-0.752281;-0.139119;,
0.400100;-0.352246;-0.138998;,
-2.402146;0.872141;-0.095483;,
-2.407503;-0.334457;0.234312;,
-2.412567;-0.334313;-0.095849;,
-2.397082;0.871997;0.234678;,
-1.989460;0.868578;-0.101815;,
-2.397082;0.871997;0.234678;,
-2.402146;0.872141;-0.095483;,
-1.984396;0.868434;0.228346;,
-1.985950;1.274963;-0.101691;,
-1.984396;0.868434;0.228346;,
-1.989460;0.868578;-0.101815;,
-1.980886;1.274819;0.228470;,
-0.798685;1.264713;-0.119906;,
-1.980886;1.274819;0.228470;,
-1.985950;1.274963;-0.101691;,
-0.793621;1.264569;0.210255;,
-0.795065;1.683797;-0.119779;,
-0.793621;1.264569;0.210255;,
-0.798685;1.264713;-0.119906;,
-0.790001;1.683653;0.210382;,
0.823934;1.669820;-0.144617;,
-0.790001;1.683653;0.210382;,
-0.795065;1.683797;-0.119779;,
0.828998;1.669676;0.185544;,
0.825378;1.250592;0.185417;,
0.823934;1.669820;-0.144617;,
0.820314;1.250735;-0.144744;,
0.828998;1.669676;0.185544;,
2.007579;1.240485;-0.162959;,
0.825378;1.250592;0.185417;,
0.820314;1.250735;-0.144744;,
2.012643;1.240342;0.167202;,
0.805820;-1.162228;-0.145573;,
0.807593;-1.543357;0.184472;,
0.802529;-1.543214;-0.145689;,
0.810884;-1.162372;0.184588;,
-2.407503;-0.334457;0.234312;,
-1.599894;-0.341329;-0.108317;,
-2.412567;-0.334313;-0.095849;,
-1.594830;-0.341473;0.221844;,
-1.599894;-0.341329;-0.108317;,
-1.598230;-0.735158;0.221725;,
-1.603294;-0.735015;-0.108436;,
-1.594830;-0.341473;0.221844;,
-1.603294;-0.735015;-0.108436;,
-2.004567;-0.731650;0.227958;,
-2.009631;-0.731507;-0.102202;,
-1.598230;-0.735158;0.221725;,
-2.009631;-0.731507;-0.102202;,
-2.008023;-1.131685;0.227837;,
-2.013087;-1.131541;-0.102324;,
-2.004567;-0.731650;0.227958;,
-2.008023;-1.131685;0.227837;,
-1.606750;-1.135049;-0.108558;,
-2.013087;-1.131541;-0.102324;,
-1.601686;-1.135193;0.221603;,
-1.606750;-1.135049;-0.108558;,
-1.605086;-1.528878;0.221484;,
-1.610150;-1.528734;-0.108677;,
-1.601686;-1.135193;0.221603;,
-1.605086;-1.528878;0.221484;,
-0.822873;-1.535531;-0.120755;,
-1.610150;-1.528734;-0.108677;,
-0.817809;-1.535675;0.209406;,
-0.819472;-1.141846;-0.120636;,
-1.201698;-1.138646;0.215467;,
-1.206762;-1.138503;-0.114694;,
-0.814408;-1.141990;0.209525;,
-1.201698;-1.138646;0.215467;,
-1.203306;-0.738468;-0.114573;,
-1.206762;-1.138503;-0.114694;,
-1.198243;-0.738612;0.215588;,
-0.404616;-0.745463;0.203412;,
-0.406224;-0.345284;-0.126627;,
-0.409680;-0.745319;-0.126748;,
-0.401160;-0.345428;0.203534;,
-0.401160;-0.345428;0.203534;,
0.400100;-0.352246;-0.138998;,
-0.406224;-0.345284;-0.126627;,
0.405164;-0.352390;0.191163;,
-0.817809;-1.535675;0.209406;,
-0.819472;-1.141846;-0.120636;,
-0.822873;-1.535531;-0.120755;,
-0.814408;-1.141990;0.209525;,
-0.408071;-1.145498;0.203291;,
0.401709;-0.752424;0.191042;,
0.398253;-1.152459;0.190921;,
-0.404616;-0.745463;0.203412;,
-0.397645;0.061505;0.203657;,
0.412135;0.454578;0.191408;,
0.408679;0.054543;0.191287;,
-0.394190;0.461539;0.203779;,
1.611586;-0.350104;0.172660;,
2.415634;0.849498;0.160851;,
2.405213;-0.356956;0.160485;,
1.198931;0.047721;0.179163;,
-0.401160;-0.345428;0.203534;,
-1.594830;-0.341473;0.221844;,
-2.407503;-0.334457;0.234312;,
1.202386;0.447756;0.179284;,
-1.200515;0.468501;0.216149;,
0.807593;-1.543357;0.184472;,
1.604511;-1.169223;0.172412;,
1.601220;-1.550209;0.172296;,
0.810884;-1.162372;0.184588;,
1.210872;-1.165825;0.178451;,
-1.605086;-1.528878;0.221484;,
-0.814408;-1.141990;0.209525;,
-0.817809;-1.535675;0.209406;,
-1.601686;-1.135193;0.221603;,
-1.201698;-1.138646;0.215467;,
-1.198243;-0.738612;0.215588;,
-2.008023;-1.131685;0.227837;,
-2.004567;-0.731650;0.227958;,
-1.598230;-0.735158;0.221725;,
1.995311;-0.766182;0.166594;,
1.991801;-1.172567;0.166470;,
1.214382;-0.759440;0.178574;,
1.608021;-0.762839;0.172535;,
0.401709;-0.752424;0.191042;,
0.405164;-0.352390;0.191163;,
-0.404616;-0.745463;0.203412;,
-1.203970;0.068466;0.216028;,
-2.397082;0.871997;0.234678;,
-1.984396;0.868434;0.228346;,
2.009297;0.853006;0.167085;,
2.012643;1.240342;0.167202;,
-0.793621;1.264569;0.210255;,
-1.980886;1.274819;0.228470;,
0.825378;1.250592;0.185417;,
0.828998;1.669676;0.185544;,
-0.790001;1.683653;0.210382;,
0.396645;-0.752281;-0.139119;,
-0.413135;-1.145354;-0.126870;,
0.393189;-1.152315;-0.139240;,
-0.409680;-0.745319;-0.126748;,
-0.409680;-0.745319;-0.126748;,
-0.408071;-1.145498;0.203291;,
-0.413135;-1.145354;-0.126870;,
-0.404616;-0.745463;0.203412;,
0.396645;-0.752281;-0.139119;,
-0.404616;-0.745463;0.203412;,
-0.409680;-0.745319;-0.126748;,
0.401709;-0.752424;0.191042;,
0.398253;-1.152459;0.190921;,
0.396645;-0.752281;-0.139119;,
0.393189;-1.152315;-0.139240;,
0.401709;-0.752424;0.191042;,
-0.408071;-1.145498;0.203291;,
0.393189;-1.152315;-0.139240;,
-0.413135;-1.145354;-0.126870;,
0.398253;-1.152459;0.190921;,
2.009297;0.853006;0.167085;,
2.007579;1.240485;-0.162959;,
2.004233;0.853150;-0.163076;,
2.012643;1.240342;0.167202;,
2.410570;0.849642;-0.169310;,
2.009297;0.853006;0.167085;,
2.004233;0.853150;-0.163076;,
2.415634;0.849498;0.160851;,
2.405213;-0.356956;0.160485;,
2.410570;0.849642;-0.169310;,
2.400149;-0.356812;-0.169676;,
2.415634;0.849498;0.160851;,
1.611586;-0.350104;0.172660;,
2.400149;-0.356812;-0.169676;,
1.606522;-0.349961;-0.157501;,
2.405213;-0.356956;0.160485;,
1.608021;-0.762839;0.172535;,
1.606522;-0.349961;-0.157501;,
1.602957;-0.762695;-0.157626;,
1.611586;-0.350104;0.172660;,
1.990247;-0.766039;-0.163567;,
1.608021;-0.762839;0.172535;,
1.602957;-0.762695;-0.157626;,
1.995311;-0.766182;0.166594;,
-1.203970;0.068466;0.216028;,
-1.205579;0.468644;-0.114012;,
-1.209034;0.068610;-0.114133;,
-1.200515;0.468501;0.216149;,
1.991801;-1.172567;0.166470;,
1.990247;-0.766039;-0.163567;,
1.986737;-1.172423;-0.163691;,
1.995311;-0.766182;0.166594;,
-1.200515;0.468501;0.216149;,
-0.399254;0.461683;-0.126382;,
-1.205579;0.468644;-0.114012;,
-0.394190;0.461539;0.203779;,
1.604511;-1.169223;0.172412;,
1.986737;-1.172423;-0.163691;,
1.599447;-1.169080;-0.157749;,
1.991801;-1.172567;0.166470;,
-0.399254;0.461683;-0.126382;,
-0.397645;0.061505;0.203657;,
-0.402709;0.061648;-0.126504;,
-0.394190;0.461539;0.203779;,
-0.402709;0.061648;-0.126504;,
-1.203970;0.068466;0.216028;,
-1.209034;0.068610;-0.114133;,
-0.397645;0.061505;0.203657;,
0.400100;-0.352246;-0.138998;,
0.401709;-0.752424;0.191042;,
0.396645;-0.752281;-0.139119;,
0.405164;-0.352390;0.191163;,
1.193867;0.047865;-0.150998;,
0.408679;0.054543;0.191287;,
0.403615;0.054687;-0.138874;,
1.198931;0.047721;0.179163;,
0.401709;-0.752424;0.191042;,
1.209318;-0.759297;-0.151587;,
0.396645;-0.752281;-0.139119;,
1.214382;-0.759440;0.178574;,
0.408679;0.054543;0.191287;,
0.407071;0.454722;-0.138753;,
0.403615;0.054687;-0.138874;,
0.412135;0.454578;0.191408;,
1.209318;-0.759297;-0.151587;,
1.210872;-1.165825;0.178451;,
1.205808;-1.165681;-0.151710;,
1.214382;-0.759440;0.178574;,
0.412135;0.454578;0.191408;,
1.197322;0.447900;-0.150877;,
0.407071;0.454722;-0.138753;,
1.202386;0.447756;0.179284;,
1.205808;-1.165681;-0.151710;,
0.810884;-1.162372;0.184588;,
0.805820;-1.162228;-0.145573;,
1.210872;-1.165825;0.178451;,
1.197322;0.447900;-0.150877;,
1.198931;0.047721;0.179163;,
1.193867;0.047865;-0.150998;,
1.202386;0.447756;0.179284;,
1.601220;-1.550209;0.172296;,
1.599447;-1.169080;-0.157749;,
1.596156;-1.550065;-0.157865;,
1.604511;-1.169223;0.172412;,
0.807593;-1.543357;0.184472;,
1.596156;-1.550065;-0.157865;,
0.802529;-1.543214;-0.145689;,
1.601220;-1.550209;0.172296;,
-1.198243;-0.738612;0.215588;,
-0.409680;-0.745319;-0.126748;,
-1.203306;-0.738468;-0.114573;,
-0.404616;-0.745463;0.203412;;
192;
3;2,1,0,
3;3,0,1,
3;4,3,1,
3;5,3,4,
3;6,3,5,
3;7,0,3,
3;8,0,7,
3;9,0,8,
3;10,0,9,
3;13,12,11,
3;14,11,12,
3;17,16,15,
3;13,15,16,
3;12,13,16,
3;18,12,16,
3;20,19,6,
3;21,6,19,
3;22,6,21,
3;3,6,22,
3;10,19,20,
3;16,10,20,
3;0,10,16,
3;17,0,16,
3;22,21,8,
3;9,8,21,
3;25,24,23,
3;26,23,24,
3;27,26,24,
3;30,29,28,
3;31,28,29,
3;32,31,29,
3;33,31,32,
3;34,33,32,
3;35,33,34,
3;36,35,34,
3;37,33,4,
3;35,4,33,
3;5,4,35,
3;39,23,38,
3;26,38,23,
3;40,38,26,
3;41,40,26,
3;1,40,41,
3;42,1,41,
3;43,1,42,
3;4,1,43,
3;46,45,44,
3;47,44,45,
3;50,49,48,
3;51,48,49,
3;54,53,52,
3;55,52,53,
3;58,57,56,
3;59,56,57,
3;62,61,60,
3;63,60,61,
3;66,65,64,
3;67,64,65,
3;70,69,68,
3;71,68,69,
3;74,73,72,
3;75,72,73,
3;78,77,76,
3;79,76,77,
3;82,81,80,
3;83,80,81,
3;86,85,84,
3;87,84,85,
3;90,89,88,
3;91,88,89,
3;94,93,92,
3;95,92,93,
3;98,97,96,
3;99,96,97,
3;102,101,100,
3;103,100,101,
3;106,105,104,
3;107,104,105,
3;110,109,108,
3;111,108,109,
3;114,113,112,
3;115,112,113,
3;118,117,116,
3;119,116,117,
3;122,121,120,
3;123,120,121,
3;126,125,124,
3;127,124,125,
3;130,129,128,
3;131,128,129,
3;134,133,132,
3;135,132,133,
3;138,137,136,
3;139,136,137,
3;140,136,139,
3;141,140,139,
3;142,141,139,
3;143,139,137,
3;133,143,137,
3;135,133,137,
3;144,135,137,
3;147,146,145,
3;148,145,146,
3;149,148,146,
3;152,151,150,
3;153,150,151,
3;154,153,151,
3;155,153,154,
3;156,153,155,
3;157,156,155,
3;158,157,155,
3;160,159,146,
3;149,146,159,
3;161,149,159,
3;162,161,159,
3;136,161,162,
3;163,161,136,
3;164,163,136,
3;140,164,136,
3;165,140,155,
3;158,155,140,
3;141,158,140,
3;139,134,142,
3;132,142,134,
3;166,142,132,
3;167,142,166,
3;144,167,166,
3;168,167,144,
3;137,168,144,
3;169,168,137,
3;169,170,168,
3;171,168,170,
3;172,168,171,
3;173,171,170,
3;173,174,171,
3;175,171,174,
3;178,177,176,
3;179,176,177,
3;182,181,180,
3;183,180,181,
3;186,185,184,
3;187,184,185,
3;190,189,188,
3;191,188,189,
3;194,193,192,
3;195,192,193,
3;198,197,196,
3;199,196,197,
3;202,201,200,
3;203,200,201,
3;206,205,204,
3;207,204,205,
3;210,209,208,
3;211,208,209,
3;214,213,212,
3;215,212,213,
3;218,217,216,
3;219,216,217,
3;222,221,220,
3;223,220,221,
3;226,225,224,
3;227,224,225,
3;230,229,228,
3;231,228,229,
3;234,233,232,
3;235,232,233,
3;238,237,236,
3;239,236,237,
3;242,241,240,
3;243,240,241,
3;246,245,244,
3;247,244,245,
3;250,249,248,
3;251,248,249,
3;254,253,252,
3;255,252,253,
3;258,257,256,
3;259,256,257,
3;262,261,260,
3;263,260,261,
3;266,265,264,
3;267,264,265,
3;270,269,268,
3;271,268,269,
3;274,273,272,
3;275,272,273,
3;278,277,276,
3;279,276,277,
3;282,281,280,
3;283,280,281,
3;286,285,284,
3;287,284,285;;
MeshNormals {
288;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
0.015336;-0.000436;0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
0.008638;0.999963;0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;;
192;
3;2,1,0;
3;3,0,1;
3;4,3,1;
3;5,3,4;
3;6,3,5;
3;7,0,3;
3;8,0,7;
3;9,0,8;
3;10,0,9;
3;13,12,11;
3;14,11,12;
3;17,16,15;
3;13,15,16;
3;12,13,16;
3;18,12,16;
3;20,19,6;
3;21,6,19;
3;22,6,21;
3;3,6,22;
3;10,19,20;
3;16,10,20;
3;0,10,16;
3;17,0,16;
3;22,21,8;
3;9,8,21;
3;25,24,23;
3;26,23,24;
3;27,26,24;
3;30,29,28;
3;31,28,29;
3;32,31,29;
3;33,31,32;
3;34,33,32;
3;35,33,34;
3;36,35,34;
3;37,33,4;
3;35,4,33;
3;5,4,35;
3;39,23,38;
3;26,38,23;
3;40,38,26;
3;41,40,26;
3;1,40,41;
3;42,1,41;
3;43,1,42;
3;4,1,43;
3;46,45,44;
3;47,44,45;
3;50,49,48;
3;51,48,49;
3;54,53,52;
3;55,52,53;
3;58,57,56;
3;59,56,57;
3;62,61,60;
3;63,60,61;
3;66,65,64;
3;67,64,65;
3;70,69,68;
3;71,68,69;
3;74,73,72;
3;75,72,73;
3;78,77,76;
3;79,76,77;
3;82,81,80;
3;83,80,81;
3;86,85,84;
3;87,84,85;
3;90,89,88;
3;91,88,89;
3;94,93,92;
3;95,92,93;
3;98,97,96;
3;99,96,97;
3;102,101,100;
3;103,100,101;
3;106,105,104;
3;107,104,105;
3;110,109,108;
3;111,108,109;
3;114,113,112;
3;115,112,113;
3;118,117,116;
3;119,116,117;
3;122,121,120;
3;123,120,121;
3;126,125,124;
3;127,124,125;
3;130,129,128;
3;131,128,129;
3;134,133,132;
3;135,132,133;
3;138,137,136;
3;139,136,137;
3;140,136,139;
3;141,140,139;
3;142,141,139;
3;143,139,137;
3;133,143,137;
3;135,133,137;
3;144,135,137;
3;147,146,145;
3;148,145,146;
3;149,148,146;
3;152,151,150;
3;153,150,151;
3;154,153,151;
3;155,153,154;
3;156,153,155;
3;157,156,155;
3;158,157,155;
3;160,159,146;
3;149,146,159;
3;161,149,159;
3;162,161,159;
3;136,161,162;
3;163,161,136;
3;164,163,136;
3;140,164,136;
3;165,140,155;
3;158,155,140;
3;141,158,140;
3;139,134,142;
3;132,142,134;
3;166,142,132;
3;167,142,166;
3;144,167,166;
3;168,167,144;
3;137,168,144;
3;169,168,137;
3;169,170,168;
3;171,168,170;
3;172,168,171;
3;173,171,170;
3;173,174,171;
3;175,171,174;
3;178,177,176;
3;179,176,177;
3;182,181,180;
3;183,180,181;
3;186,185,184;
3;187,184,185;
3;190,189,188;
3;191,188,189;
3;194,193,192;
3;195,192,193;
3;198,197,196;
3;199,196,197;
3;202,201,200;
3;203,200,201;
3;206,205,204;
3;207,204,205;
3;210,209,208;
3;211,208,209;
3;214,213,212;
3;215,212,213;
3;218,217,216;
3;219,216,217;
3;222,221,220;
3;223,220,221;
3;226,225,224;
3;227,224,225;
3;230,229,228;
3;231,228,229;
3;234,233,232;
3;235,232,233;
3;238,237,236;
3;239,236,237;
3;242,241,240;
3;243,240,241;
3;246,245,244;
3;247,244,245;
3;250,249,248;
3;251,248,249;
3;254,253,252;
3;255,252,253;
3;258,257,256;
3;259,256,257;
3;262,261,260;
3;263,260,261;
3;266,265,264;
3;267,264,265;
3;270,269,268;
3;271,268,269;
3;274,273,272;
3;275,272,273;
3;278,277,276;
3;279,276,277;
3;282,281,280;
3;283,280,281;
3;286,285,284;
3;287,284,285;;
}
MeshTextureCoords {
288;
95.995456,-33.448223;
64.336604,13.780260;
95.585440,14.050008;
48.088301,-1.882166;
-14.914760,13.596162;
-61.915167,13.440453;
-93.913974,13.164231;
48.224254,-17.631579;
17.108307,-17.900180;
-14.640510,-18.174243;
-46.389327,-18.448307;
33.521857,-65.738693;
-30.368195,-49.789592;
33.379430,-49.239307;
-30.225768,-66.288977;
80.127689,-48.835765;
-77.254564,-34.193730;
79.996052,-33.586333;
-77.116453,-50.193134;
-46.525280,-2.698893;
-93.503958,-34.333999;
-14.776463,-2.424830;
16.972355,-2.150766;
64.058224,46.029059;
32.679910,60.758753;
63.928746,61.028500;
48.558802,45.895264;
32.809389,45.759311;
-31.186069,44.956878;
-62.318709,60.188711;
-31.319864,60.456300;
-46.435501,44.825241;
-62.184914,44.689288;
-46.299548,29.075828;
-78.184318,44.551178;
-62.048961,28.939875;
-78.048365,28.801765;
-15.050712,29.345575;
79.445767,30.161292;
79.307656,46.160696;
64.196335,30.029655;
48.696913,29.895860;
16.698105,29.619639;
16.834058,13.870226;
6.209483,-33.519242;
-6.769820,13.986417;
6.230179,13.980753;
-6.790516,-33.513578;
-0.258018,-78.710286;
13.544593,-94.284317;
0.561120,-94.939627;
12.725455,-78.054976;
6.202512,-49.519241;
-6.790516,-33.513578;
6.209483,-33.519242;
-6.797487,-49.513577;
-2.614616,-32.019720;
12.725455,-78.054976;
-0.258018,-78.710286;
10.368857,-31.364410;
6.195323,-66.019239;
-6.797487,-49.513577;
6.202512,-49.519241;
-6.804676,-66.013575;
-5.828158,31.649233;
10.368857,-31.364410;
-2.614616,-32.019720;
7.155315,32.304544;
8.797487,-49.513577;
-4.195323,-66.019239;
-4.202512,-49.519241;
8.804676,-66.013575;
-8.184756,78.339799;
7.155315,32.304544;
-5.828158,31.649233;
4.798717,78.995110;
6.243903,45.480750;
-6.749560,60.486413;
6.250438,60.480749;
-6.756096,45.486414;
-11.544593,-94.284317;
3.051952,-62.980309;
1.438880,-94.939627;
-9.931521,-62.324999;
6.230179,13.980753;
-6.763067,29.486416;
6.236932,29.480752;
-6.769820,13.986417;
-1.051952,-62.980309;
12.738057,-78.304658;
-0.245416,-78.959968;
11.931521,-62.324999;
6.236932,29.480752;
-6.756205,45.236414;
6.243794,45.230750;
-6.763067,29.486416;
-10.738057,-78.304658;
3.051952,-62.980309;
2.245416,-78.959968;
-9.931521,-62.324999;
6.243794,45.230750;
-6.749452,60.736413;
6.250547,60.730749;
-6.756205,45.236414;
-9.931521,-62.324999;
4.614616,-32.019720;
3.051952,-62.980309;
-8.368857,-31.364410;
-2.614616,-32.019720;
11.137587,-46.595022;
-1.845886,-47.250333;
10.368857,-31.364410;
8.756205,45.236414;
-4.236932,29.480752;
-4.243794,45.230750;
8.763067,29.486416;
8.763067,29.486416;
-4.230070,13.730753;
-4.236932,29.480752;
8.769929,13.736417;
-7.562321,-15.384751;
7.021622,15.669574;
5.421152,-16.040061;
-5.961851,16.324885;
8.749452,60.736413;
-4.243794,45.230750;
-4.250547,60.730749;
8.756205,45.236414;
17.186665,45.094989;
-14.698105,29.619639;
-14.562152,45.369052;
17.050712,29.345575;
16.776463,-2.424830;
-15.108307,-17.900180;
-14.972355,-2.150766;
16.640510,-18.174243;
-62.336604,13.780260;
-93.995456,-33.448223;
-93.585440,14.050008;
-46.088301,-1.882166;
16.914760,13.596162;
63.915167,13.440453;
95.913974,13.164231;
-46.224254,-17.631579;
48.389327,-18.448307;
-30.679910,60.758753;
-62.058224,46.029059;
-61.928746,61.028500;
-30.809389,45.759311;
-46.558802,45.895264;
64.318709,60.188711;
33.186069,44.956878;
33.319864,60.456300;
64.184914,44.689288;
48.435501,44.825241;
48.299548,29.075828;
80.184318,44.551178;
80.048365,28.801765;
64.048961,28.939875;
-77.445767,30.161292;
-77.307656,46.160696;
-46.696913,29.895860;
-62.196335,30.029655;
-14.698105,29.619639;
-14.834058,13.870226;
17.050712,29.345575;
48.525280,-2.698893;
95.503958,-34.333999;
79.254564,-34.193730;
-77.996052,-33.586333;
-78.127689,-48.835765;
32.368195,-49.789592;
79.116453,-50.193134;
-31.379430,-49.239307;
-31.521857,-65.738693;
32.225768,-66.288977;
16.698105,29.619639;
-15.186665,45.094989;
16.562152,45.369052;
-15.050712,29.345575;
6.236932,29.480752;
-6.756205,45.236414;
6.243794,45.230750;
-6.763067,29.486416;
-5.021622,15.669574;
9.562321,-15.384751;
-3.421152,-16.040061;
7.961851,16.324885;
8.756205,45.236414;
-4.236932,29.480752;
-4.243794,45.230750;
8.763067,29.486416;
-7.562321,-15.384751;
7.021622,15.669574;
5.421152,-16.040061;
-5.961851,16.324885;
8.790842,-34.263578;
-4.202512,-49.519241;
-4.209156,-34.269242;
8.797487,-49.513577;
-8.991292,94.319458;
4.798717,78.995110;
-8.184756,78.339799;
3.992181,94.974769;
8.770147,13.236417;
-4.209156,-34.269242;
-4.229852,13.230753;
8.790842,-34.263578;
-3.567447,63.764497;
10.991292,94.319458;
9.416026,63.109187;
-1.992181,94.974769;
8.763067,29.486416;
-4.229852,13.230753;
-4.236932,29.480752;
8.770147,13.236417;
-8.184756,78.339799;
5.567447,63.764497;
-7.416026,63.109187;
4.798717,78.995110;
8.776910,-2.285170;
-4.216227,-18.040833;
-4.223089,-2.290834;
8.783772,-18.035169;
8.756096,45.486414;
-4.236932,29.480752;
-4.243903,45.480750;
8.763067,29.486416;
-9.162791,-47.094386;
5.421152,-16.040061;
3.820682,-47.749697;
-7.562321,-15.384751;
-3.567447,63.764497;
10.184756,78.339799;
9.416026,63.109187;
-2.798717,78.995110;
6.216227,-18.040833;
-6.776910,-2.285170;
6.223089,-2.290834;
-6.783772,-18.035169;
-3.421152,-16.040061;
11.162791,-47.094386;
-1.820682,-47.749697;
9.562321,-15.384751;
6.230070,13.730753;
-6.763067,29.486416;
6.236932,29.480752;
-6.769929,13.736417;
-6.590189,46.747120;
7.961851,16.324885;
-5.021622,15.669574;
6.393284,47.402431;
-5.961851,16.324885;
8.634694,47.628892;
7.021622,15.669574;
-4.348779,48.284203;
8.776910,-2.285170;
-4.216227,-18.040833;
-4.223089,-2.290834;
8.783772,-18.035169;
6.236932,29.480752;
-6.756096,45.486414;
6.243903,45.480750;
-6.763067,29.486416;
-5.961851,16.324885;
8.590189,46.747120;
7.021622,15.669574;
-4.393284,47.402431;
-6.634694,47.628892;
7.142713,32.554226;
-5.840760,31.898915;
6.348779,48.284203;
6.216227,-18.040833;
-6.776910,-2.285170;
6.223089,-2.290834;
-6.783772,-18.035169;
8.749560,60.486413;
-4.243903,45.480750;
-4.250438,60.480749;
8.756096,45.486414;
-5.142713,32.554226;
9.416026,63.109187;
7.840760,31.898915;
-3.567447,63.764497;
-9.137587,-46.595022;
5.421152,-16.040061;
3.845886,-47.250333;
-7.562321,-15.384751;;
}
MeshMaterialList {
1;
192;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material {
1.000000;1.000000;1.000000;1.000000;;
50.000000;
0.000000;0.000000;0.000000;;
0.000000;0.000000;0.000000;;
}
}
}
}
}
