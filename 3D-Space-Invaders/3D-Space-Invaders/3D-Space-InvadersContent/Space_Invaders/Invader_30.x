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
-1.603294;0.865185;-0.108436;,
-2.004567;0.868549;0.227958;,
-2.009631;0.868693;-0.102202;,
-1.598230;0.865041;0.221725;,
-2.009631;0.868693;-0.102202;,
-2.008023;0.468514;0.227837;,
-2.013087;0.468658;-0.102324;,
-2.004567;0.868549;0.227958;,
-2.008023;0.468514;0.227837;,
-1.606750;0.465150;-0.108558;,
-2.013087;0.468658;-0.102324;,
-1.601686;0.465006;0.221603;,
-1.606750;0.465150;-0.108558;,
-1.605086;0.071321;0.221484;,
-1.610150;0.071465;-0.108677;,
-1.601686;0.465006;0.221603;,
-1.605086;0.071321;0.221484;,
-0.822873;0.064668;-0.120755;,
-1.610150;0.071465;-0.108677;,
-0.817809;0.064524;0.209406;,
-0.817809;0.064524;0.209406;,
-0.819472;0.458353;-0.120636;,
-0.822873;0.064668;-0.120755;,
-0.814408;0.458209;0.209525;,
-0.819472;0.458353;-0.120636;,
-1.201698;0.461553;0.215467;,
-1.206762;0.461697;-0.114694;,
-0.814408;0.458209;0.209525;,
-1.201698;0.461553;0.215467;,
-1.203306;0.861731;-0.114573;,
-1.206762;0.461697;-0.114694;,
-1.198243;0.861588;0.215588;,
-1.198243;0.861588;0.215588;,
-0.409680;0.854880;-0.126748;,
-1.203306;0.861731;-0.114573;,
-0.404616;0.854736;0.203412;,
-0.404616;0.854736;0.203412;,
-0.406224;1.254915;-0.126627;,
-0.409680;0.854880;-0.126748;,
-0.401160;1.254771;0.203534;,
-0.401160;1.254771;0.203534;,
0.400100;1.247953;-0.138998;,
-0.406224;1.254915;-0.126627;,
0.405164;1.247810;0.191163;,
0.400100;1.247953;-0.138998;,
0.401709;0.847775;0.191042;,
0.396645;0.847919;-0.139119;,
0.405164;1.247810;0.191163;,
0.401709;0.847775;0.191042;,
1.209318;0.840903;-0.151587;,
0.396645;0.847919;-0.139119;,
1.214382;0.840759;0.178574;,
1.209318;0.840903;-0.151587;,
1.210872;0.434374;0.178451;,
1.205808;0.434518;-0.151710;,
1.214382;0.840759;0.178574;,
1.205808;0.434518;-0.151710;,
0.810884;0.437827;0.184588;,
0.805820;0.437971;-0.145573;,
1.210872;0.434374;0.178451;,
0.805820;0.437971;-0.145573;,
0.807593;0.056842;0.184472;,
0.802529;0.056986;-0.145689;,
0.810884;0.437827;0.184588;,
0.807593;0.056842;0.184472;,
1.596156;0.050134;-0.157865;,
0.802529;0.056986;-0.145689;,
1.601220;0.049990;0.172296;,
1.601220;0.049990;0.172296;,
1.599447;0.431120;-0.157749;,
1.596156;0.050134;-0.157865;,
1.604511;0.430976;0.172412;,
1.604511;0.430976;0.172412;,
1.986737;0.427776;-0.163691;,
1.599447;0.431120;-0.157749;,
1.991801;0.427632;0.166470;,
1.991801;0.427632;0.166470;,
1.990247;0.834161;-0.163567;,
1.986737;0.427776;-0.163691;,
1.995311;0.834017;0.166594;,
1.990247;0.834161;-0.163567;,
1.608021;0.837360;0.172535;,
1.602957;0.837504;-0.157626;,
1.995311;0.834017;0.166594;,
1.608021;0.837360;0.172535;,
1.606522;1.250239;-0.157501;,
1.602957;0.837504;-0.157626;,
1.611586;1.250095;0.172660;,
1.611586;1.250095;0.172660;,
2.400149;1.243387;-0.169676;,
1.606522;1.250239;-0.157501;,
2.405213;1.243243;0.160485;,
2.405213;1.243243;0.160485;,
2.410570;2.449841;-0.169310;,
2.400149;1.243387;-0.169676;,
2.415634;2.449697;0.160851;,
2.410570;2.449841;-0.169310;,
2.009297;2.453205;0.167085;,
2.004233;2.453349;-0.163076;,
2.415634;2.449697;0.160851;,
2.009297;2.453205;0.167085;,
2.007579;2.840685;-0.162959;,
2.004233;2.453349;-0.163076;,
2.012643;2.840541;0.167202;,
2.007579;2.840685;-0.162959;,
0.825378;2.850791;0.185417;,
0.820314;2.850935;-0.144744;,
2.012643;2.840541;0.167202;,
0.825378;2.850791;0.185417;,
0.823934;3.270019;-0.144617;,
0.820314;2.850935;-0.144744;,
0.828998;3.269875;0.185544;,
0.823934;3.270019;-0.144617;,
-0.790001;3.283852;0.210382;,
-0.795065;3.283996;-0.119779;,
0.828998;3.269875;0.185544;,
-0.795065;3.283996;-0.119779;,
-0.793621;2.864768;0.210255;,
-0.798685;2.864912;-0.119906;,
-0.790001;3.283852;0.210382;,
-0.798685;2.864912;-0.119906;,
-1.980886;2.875018;0.228470;,
-1.985950;2.875162;-0.101691;,
-0.793621;2.864768;0.210255;,
-1.985950;2.875162;-0.101691;,
-1.984396;2.468633;0.228346;,
-1.989460;2.468777;-0.101815;,
-1.980886;2.875018;0.228470;,
-1.989460;2.468777;-0.101815;,
-2.397082;2.472196;0.234678;,
-2.402146;2.472340;-0.095483;,
-1.984396;2.468633;0.228346;,
-2.402146;2.472340;-0.095483;,
-2.407503;1.265742;0.234312;,
-2.412567;1.265886;-0.095849;,
-2.397082;2.472196;0.234678;,
2.410570;2.449841;-0.169310;,
1.606522;1.250239;-0.157501;,
2.400149;1.243387;-0.169676;,
1.193867;1.648064;-0.150998;,
-0.406224;1.254915;-0.126627;,
-1.599894;1.258870;-0.108317;,
-2.412567;1.265886;-0.095849;,
1.197322;2.048099;-0.150877;,
0.407071;2.054921;-0.138753;,
-0.399254;2.061882;-0.126382;,
-1.205579;2.068844;-0.114012;,
0.823934;3.270019;-0.144617;,
-0.798685;2.864912;-0.119906;,
0.820314;2.850935;-0.144744;,
-0.795065;3.283996;-0.119779;,
2.007579;2.840685;-0.162959;,
-1.989460;2.468777;-0.101815;,
2.004233;2.453349;-0.163076;,
-1.985950;2.875162;-0.101691;,
-1.209034;1.668809;-0.114133;,
-2.402146;2.472340;-0.095483;,
0.403615;1.654886;-0.138874;,
-0.402709;1.661848;-0.126504;,
1.599447;0.431120;-0.157749;,
0.802529;0.056986;-0.145689;,
1.596156;0.050134;-0.157865;,
1.205808;0.434518;-0.151710;,
0.805820;0.437971;-0.145573;,
-0.819472;0.458353;-0.120636;,
-1.610150;0.071465;-0.108677;,
-0.822873;0.064668;-0.120755;,
-1.206762;0.461697;-0.114694;,
-1.606750;0.465150;-0.108558;,
-1.203306;0.861731;-0.114573;,
-2.013087;0.468658;-0.102324;,
-1.603294;0.865185;-0.108436;,
-2.009631;0.868693;-0.102202;,
-0.409680;0.854880;-0.126748;,
1.990247;0.834161;-0.163567;,
1.986737;0.427776;-0.163691;,
1.602957;0.837504;-0.157626;,
1.209318;0.840903;-0.151587;,
0.396645;0.847919;-0.139119;,
0.400100;1.247953;-0.138998;,
-0.408071;0.454701;0.203291;,
0.393189;0.447884;-0.139240;,
-0.413135;0.454845;-0.126870;,
0.398253;0.447740;0.190921;,
0.398253;0.447740;0.190921;,
0.396645;0.847919;-0.139119;,
0.393189;0.447884;-0.139240;,
0.401709;0.847775;0.191042;,
0.396645;0.847919;-0.139119;,
-0.404616;0.854736;0.203412;,
-0.409680;0.854880;-0.126748;,
0.401709;0.847775;0.191042;,
-0.409680;0.854880;-0.126748;,
-0.408071;0.454701;0.203291;,
-0.413135;0.454845;-0.126870;,
-0.404616;0.854736;0.203412;,
0.396645;0.847919;-0.139119;,
-0.413135;0.454845;-0.126870;,
0.393189;0.447884;-0.139240;,
-0.409680;0.854880;-0.126748;,
-0.397645;1.661704;0.203657;,
0.412135;2.054777;0.191408;,
0.408679;1.654743;0.191287;,
-0.394190;2.061739;0.203779;,
1.611586;1.250095;0.172660;,
2.415634;2.449697;0.160851;,
2.405213;1.243243;0.160485;,
1.198931;1.647920;0.179163;,
-0.401160;1.254771;0.203534;,
-1.594830;1.258726;0.221844;,
-2.407503;1.265742;0.234312;,
1.202386;2.047955;0.179284;,
-1.200515;2.068700;0.216149;,
0.807593;0.056842;0.184472;,
1.604511;0.430976;0.172412;,
1.601220;0.049990;0.172296;,
0.810884;0.437827;0.184588;,
1.210872;0.434374;0.178451;,
-1.605086;0.071321;0.221484;,
-0.814408;0.458209;0.209525;,
-0.817809;0.064524;0.209406;,
-1.601686;0.465006;0.221603;,
-1.201698;0.461553;0.215467;,
-1.198243;0.861588;0.215588;,
-2.008023;0.468514;0.227837;,
-2.004567;0.868549;0.227958;,
-1.598230;0.865041;0.221725;,
1.995311;0.834017;0.166594;,
1.991801;0.427632;0.166470;,
1.214382;0.840759;0.178574;,
1.608021;0.837360;0.172535;,
0.401709;0.847775;0.191042;,
0.405164;1.247810;0.191163;,
-0.404616;0.854736;0.203412;,
-1.203970;1.668665;0.216028;,
-2.397082;2.472196;0.234678;,
-1.984396;2.468633;0.228346;,
2.009297;2.453205;0.167085;,
2.012643;2.840541;0.167202;,
0.825378;2.850791;0.185417;,
-1.980886;2.875018;0.228470;,
-0.793621;2.864768;0.210255;,
0.828998;3.269875;0.185544;,
-0.790001;3.283852;0.210382;,
-0.408071;0.454701;0.203291;,
0.401709;0.847775;0.191042;,
0.398253;0.447740;0.190921;,
-0.404616;0.854736;0.203412;,
0.412135;2.054777;0.191408;,
1.197322;2.048099;-0.150877;,
0.407071;2.054921;-0.138753;,
1.202386;2.047955;0.179284;,
1.197322;2.048099;-0.150877;,
1.198931;1.647920;0.179163;,
1.193867;1.648064;-0.150998;,
1.202386;2.047955;0.179284;,
-1.599894;1.258870;-0.108317;,
-1.598230;0.865041;0.221725;,
-1.603294;0.865185;-0.108436;,
-1.594830;1.258726;0.221844;,
-2.407503;1.265742;0.234312;,
-1.599894;1.258870;-0.108317;,
-2.412567;1.265886;-0.095849;,
-1.594830;1.258726;0.221844;,
-0.402709;1.661848;-0.126504;,
-1.203970;1.668665;0.216028;,
-1.209034;1.668809;-0.114133;,
-0.397645;1.661704;0.203657;,
1.193867;1.648064;-0.150998;,
0.408679;1.654743;0.191287;,
0.403615;1.654886;-0.138874;,
1.198931;1.647920;0.179163;,
0.408679;1.654743;0.191287;,
0.407071;2.054921;-0.138753;,
0.403615;1.654886;-0.138874;,
0.412135;2.054777;0.191408;,
-1.200515;2.068700;0.216149;,
-0.399254;2.061882;-0.126382;,
-1.205579;2.068844;-0.114012;,
-0.394190;2.061739;0.203779;,
-0.399254;2.061882;-0.126382;,
-0.397645;1.661704;0.203657;,
-0.402709;1.661848;-0.126504;,
-0.394190;2.061739;0.203779;,
-1.203970;1.668665;0.216028;,
-1.205579;2.068844;-0.114012;,
-1.209034;1.668809;-0.114133;,
-1.200515;2.068700;0.216149;;
192;
3;2,1,0,
3;3,0,1,
3;6,5,4,
3;7,4,5,
3;10,9,8,
3;11,8,9,
3;14,13,12,
3;15,12,13,
3;18,17,16,
3;19,16,17,
3;22,21,20,
3;23,20,21,
3;26,25,24,
3;27,24,25,
3;30,29,28,
3;31,28,29,
3;34,33,32,
3;35,32,33,
3;38,37,36,
3;39,36,37,
3;42,41,40,
3;43,40,41,
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
3;140,139,137,
3;141,139,140,
3;142,139,141,
3;143,136,139,
3;144,136,143,
3;145,136,144,
3;146,136,145,
3;149,148,147,
3;150,147,148,
3;153,152,151,
3;149,151,152,
3;154,149,152,
3;148,149,154,
3;156,155,142,
3;157,142,155,
3;139,142,157,
3;158,157,155,
3;146,155,156,
3;152,146,156,
3;136,146,152,
3;153,136,152,
3;157,158,144,
3;145,144,158,
3;161,160,159,
3;162,159,160,
3;163,162,160,
3;166,165,164,
3;167,164,165,
3;168,167,165,
3;169,167,168,
3;170,169,168,
3;171,169,170,
3;172,171,170,
3;173,169,140,
3;171,140,169,
3;141,140,171,
3;175,159,174,
3;162,174,159,
3;176,174,162,
3;177,176,162,
3;137,176,177,
3;178,137,177,
3;179,137,178,
3;140,137,179,
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
3;208,204,207,
3;209,208,207,
3;210,209,207,
3;211,207,205,
3;201,211,205,
3;203,201,205,
3;212,203,205,
3;215,214,213,
3;216,213,214,
3;217,216,214,
3;220,219,218,
3;221,218,219,
3;222,221,219,
3;223,221,222,
3;224,221,223,
3;225,224,223,
3;226,225,223,
3;228,227,214,
3;217,214,227,
3;229,217,227,
3;230,229,227,
3;204,229,230,
3;231,229,204,
3;232,231,204,
3;208,232,204,
3;233,208,223,
3;226,223,208,
3;209,226,208,
3;207,202,210,
3;200,210,202,
3;234,210,200,
3;235,210,234,
3;212,235,234,
3;236,235,212,
3;205,236,212,
3;237,236,205,
3;237,238,236,
3;239,236,238,
3;240,236,239,
3;241,240,239,
3;239,242,241,
3;243,241,242,
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
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
-0.015336;0.000436;-0.999882;
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
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.008638;-0.999963;-0.000303;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
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
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
-0.999845;0.008632;0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;
0.999845;-0.008632;-0.015339;;
192;
3;2,1,0;
3;3,0,1;
3;6,5,4;
3;7,4,5;
3;10,9,8;
3;11,8,9;
3;14,13,12;
3;15,12,13;
3;18,17,16;
3;19,16,17;
3;22,21,20;
3;23,20,21;
3;26,25,24;
3;27,24,25;
3;30,29,28;
3;31,28,29;
3;34,33,32;
3;35,32,33;
3;38,37,36;
3;39,36,37;
3;42,41,40;
3;43,40,41;
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
3;140,139,137;
3;141,139,140;
3;142,139,141;
3;143,136,139;
3;144,136,143;
3;145,136,144;
3;146,136,145;
3;149,148,147;
3;150,147,148;
3;153,152,151;
3;149,151,152;
3;154,149,152;
3;148,149,154;
3;156,155,142;
3;157,142,155;
3;139,142,157;
3;158,157,155;
3;146,155,156;
3;152,146,156;
3;136,146,152;
3;153,136,152;
3;157,158,144;
3;145,144,158;
3;161,160,159;
3;162,159,160;
3;163,162,160;
3;166,165,164;
3;167,164,165;
3;168,167,165;
3;169,167,168;
3;170,169,168;
3;171,169,170;
3;172,171,170;
3;173,169,140;
3;171,140,169;
3;141,140,171;
3;175,159,174;
3;162,174,159;
3;176,174,162;
3;177,176,162;
3;137,176,177;
3;178,137,177;
3;179,137,178;
3;140,137,179;
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
3;208,204,207;
3;209,208,207;
3;210,209,207;
3;211,207,205;
3;201,211,205;
3;203,201,205;
3;212,203,205;
3;215,214,213;
3;216,213,214;
3;217,216,214;
3;220,219,218;
3;221,218,219;
3;222,221,219;
3;223,221,222;
3;224,221,223;
3;225,224,223;
3;226,225,223;
3;228,227,214;
3;217,214,227;
3;229,217,227;
3;230,229,227;
3;204,229,230;
3;231,229,204;
3;232,231,204;
3;208,232,204;
3;233,208,223;
3;226,223,208;
3;209,226,208;
3;207,202,210;
3;200,210,202;
3;234,210,200;
3;235,210,234;
3;212,235,234;
3;236,235,212;
3;205,236,212;
3;237,236,205;
3;237,238,236;
3;239,236,238;
3;240,236,239;
3;241,240,239;
3;239,242,241;
3;243,241,242;
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
-1.051952,-63.524813;
12.738057,-78.849161;
-0.245416,-79.504471;
11.931521,-62.869502;
6.236932,-33.516901;
-6.756205,-17.761239;
6.243794,-17.766903;
-6.763067,-33.511237;
-10.738057,-78.849161;
3.051952,-63.524813;
2.245416,-79.504471;
-9.931521,-62.869502;
6.243794,-17.766903;
-6.749452,-2.261240;
6.250547,-2.266904;
-6.756205,-17.761239;
-9.931521,-62.869502;
4.614616,-32.564223;
3.051952,-63.524813;
-8.368857,-31.908913;
8.749452,-2.261240;
-4.243794,-17.766903;
-4.250547,-2.266904;
8.756205,-17.761239;
-2.614616,-32.564223;
11.137587,-47.139525;
-1.845886,-47.794836;
10.368857,-31.908913;
8.756205,-17.761239;
-4.236932,-33.516901;
-4.243794,-17.766903;
8.763067,-33.511237;
-9.137587,-47.139525;
5.421152,-16.584564;
3.845886,-47.794836;
-7.562321,-15.929254;
8.763067,-33.511237;
-4.230070,-49.266900;
-4.236932,-33.516901;
8.769929,-49.261236;
-7.562321,-15.929254;
7.021622,15.125071;
5.421152,-16.584564;
-5.961851,15.780382;
6.230070,-49.266900;
-6.763067,-33.511237;
6.236932,-33.516901;
-6.769929,-49.261236;
-5.961851,15.780382;
8.634694,47.084389;
7.021622,15.125071;
-4.348779,47.739700;
6.236932,-33.516901;
-6.756096,-17.511239;
6.243903,-17.516903;
-6.763067,-33.511237;
-6.634694,47.084389;
7.142713,32.009723;
-5.840760,31.354412;
6.348779,47.739700;
6.243903,-17.516903;
-6.749560,-2.511240;
6.250438,-2.516904;
-6.756096,-17.511239;
-5.142713,32.009723;
9.416026,62.564684;
7.840760,31.354412;
-3.567447,63.219994;
8.749560,-2.511240;
-4.243903,-17.516903;
-4.250438,-2.516904;
8.756096,-17.511239;
-3.567447,63.219994;
10.184756,77.795296;
9.416026,62.564684;
-2.798717,78.450607;
8.756096,-17.511239;
-4.236932,-33.516901;
-4.243903,-17.516903;
8.763067,-33.511237;
-8.184756,77.795296;
5.567447,63.219994;
-7.416026,62.564684;
4.798717,78.450607;
8.763067,-33.511237;
-4.229852,-49.766900;
-4.236932,-33.516901;
8.770147,-49.761236;
-3.567447,63.219994;
10.991292,93.774955;
9.416026,62.564684;
-1.992181,94.430266;
8.770147,-49.761236;
-4.209156,-97.266895;
-4.229852,-49.766900;
8.790842,-97.261231;
-8.991292,93.774955;
4.798717,78.450607;
-8.184756,77.795296;
3.992181,94.430266;
8.790842,-97.261231;
-4.202512,-112.516894;
-4.209156,-97.266895;
8.797487,-112.511230;
-8.184756,77.795296;
7.155315,31.760041;
-5.828158,31.104730;
4.798717,78.450607;
8.797487,-112.511230;
-4.195323,-129.016892;
-4.202512,-112.516894;
8.804676,-129.011228;
-5.828158,31.104730;
10.368857,-31.908913;
-2.614616,-32.564223;
7.155315,31.760041;
6.195323,-129.016892;
-6.797487,-112.511230;
6.202512,-112.516894;
-6.804676,-129.011228;
-2.614616,-32.564223;
12.725455,-78.599479;
-0.258018,-79.254789;
10.368857,-31.908913;
6.202512,-112.516894;
-6.790516,-96.511231;
6.209483,-96.516895;
-6.797487,-112.511230;
-0.258018,-79.254789;
13.544593,-94.828820;
0.561120,-95.484130;
12.725455,-78.599479;
6.209483,-96.516895;
-6.769820,-49.011236;
6.230179,-49.016900;
-6.790516,-96.511231;
95.995456,-96.448217;
64.336604,-49.219734;
95.585440,-48.949986;
48.088301,-64.882160;
-14.914760,-49.403832;
-61.915167,-49.559541;
-93.913974,-49.835763;
48.224254,-80.631573;
17.108307,-80.900174;
-14.640510,-81.174237;
-46.389327,-81.448301;
33.521857,-128.738687;
-30.368195,-112.789586;
33.379430,-112.239301;
-30.225768,-129.288971;
80.127689,-111.835759;
-77.254564,-97.193724;
79.996052,-96.586327;
-77.116453,-113.193128;
-46.525280,-65.698887;
-93.503958,-97.333993;
16.972355,-65.150760;
-14.776463,-65.424824;
64.058224,-16.970935;
32.679910,-2.241241;
63.928746,-1.971494;
48.558802,-17.104730;
32.809389,-17.240683;
-31.186069,-18.043116;
-62.318709,-2.811283;
-31.319864,-2.543694;
-46.435501,-18.174753;
-62.184914,-18.310706;
-46.299548,-33.924166;
-78.184318,-18.448816;
-62.048961,-34.060119;
-78.048365,-34.198229;
-15.050712,-33.654419;
79.445767,-32.838702;
79.307656,-16.839298;
64.196335,-32.970339;
48.696913,-33.104134;
16.698105,-33.380355;
16.834058,-49.129768;
-7.562321,-15.929254;
7.021622,15.125071;
5.421152,-16.584564;
-5.961851,15.780382;
8.756205,-17.761239;
-4.236932,-33.516901;
-4.243794,-17.766903;
8.763067,-33.511237;
-5.021622,15.125071;
9.562321,-15.929254;
-3.421152,-16.584564;
7.961851,15.780382;
6.236932,-33.516901;
-6.756205,-17.761239;
6.243794,-17.766903;
-6.763067,-33.511237;
16.698105,-33.380355;
-15.186665,-17.905005;
16.562152,-17.630942;
-15.050712,-33.654419;
16.776463,-65.424824;
-15.108307,-80.900174;
-14.972355,-65.150760;
16.640510,-81.174237;
-62.336604,-49.219734;
-93.995456,-96.448217;
-93.585440,-48.949986;
-46.088301,-64.882160;
16.914760,-49.403832;
63.915167,-49.559541;
95.913974,-49.835763;
-46.224254,-80.631573;
48.389327,-81.448301;
-30.679910,-2.241241;
-62.058224,-16.970935;
-61.928746,-1.971494;
-30.809389,-17.240683;
-46.558802,-17.104730;
64.318709,-2.811283;
33.186069,-18.043116;
33.319864,-2.543694;
64.184914,-18.310706;
48.435501,-18.174753;
48.299548,-33.924166;
80.184318,-18.448816;
80.048365,-34.198229;
64.048961,-34.060119;
-77.445767,-32.838702;
-77.307656,-16.839298;
-46.696913,-33.104134;
-62.196335,-32.970339;
-14.698105,-33.380355;
-14.834058,-49.129768;
17.050712,-33.654419;
48.525280,-65.698887;
95.503958,-97.333993;
79.254564,-97.193724;
-77.996052,-96.586327;
-78.127689,-111.835759;
-31.379430,-112.239301;
79.116453,-113.193128;
32.368195,-112.789586;
-31.521857,-128.738687;
32.225768,-129.288971;
17.186665,-17.905005;
-14.698105,-33.380355;
-14.562152,-17.630942;
17.050712,-33.654419;
-5.961851,15.780382;
8.590189,46.202617;
7.021622,15.125071;
-4.393284,46.857928;
6.216227,-81.038486;
-6.776910,-65.282823;
6.223089,-65.288487;
-6.783772,-81.032822;
6.230179,-49.016900;
-6.763067,-33.511237;
6.236932,-33.516901;
-6.769820,-49.011236;
-11.544593,-94.828820;
3.051952,-63.524813;
1.438880,-95.484130;
-9.931521,-62.869502;
-3.421152,-16.584564;
11.162791,-47.638890;
-1.820682,-48.294200;
9.562321,-15.929254;
-6.590189,46.202617;
7.961851,15.780382;
-5.021622,15.125071;
6.393284,46.857928;
8.776910,-65.282823;
-4.216227,-81.038486;
-4.223089,-65.288487;
8.783772,-81.032822;
-9.162791,-47.638890;
5.421152,-16.584564;
3.820682,-48.294200;
-7.562321,-15.929254;
6.216227,-81.038486;
-6.776910,-65.282823;
6.223089,-65.288487;
-6.783772,-81.032822;
8.776910,-65.282823;
-4.216227,-81.038486;
-4.223089,-65.288487;
8.783772,-81.032822;;
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