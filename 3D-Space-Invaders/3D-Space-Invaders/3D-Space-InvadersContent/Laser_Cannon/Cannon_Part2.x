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
144;
-0.637089;0.000000;0.306220;,
-0.685176;0.000000;-0.086718;,
-0.686998;0.000000;0.112917;,
-0.631746;0.000000;-0.279078;,
-0.538850;0.000000;0.480020;,
-0.530351;0.000000;-0.451056;,
-0.398976;0.000000;0.622472;,
-0.387899;0.000000;-0.590930;,
-0.226998;0.000000;0.723867;,
-0.214099;0.000000;-0.689169;,
-0.034638;0.000000;0.777297;,
-0.020796;0.000000;-0.739078;,
0.164997;0.000000;0.779119;,
0.178839;0.000000;-0.737256;,
0.358301;0.000000;0.729210;,
0.371200;0.000000;-0.683827;,
0.532100;0.000000;0.630971;,
0.543177;0.000000;-0.582431;,
0.674552;0.000000;0.491097;,
0.683051;0.000000;-0.439979;,
0.775948;0.000000;0.319119;,
0.781290;0.000000;-0.266180;,
0.829377;0.000000;0.126759;,
0.831199;0.000000;-0.072876;,
-0.685176;2.491930;-0.086718;,
-0.637089;2.491930;0.306220;,
-0.686998;2.491930;0.112917;,
-0.631746;2.491930;-0.279078;,
-0.538850;2.491930;0.480020;,
-0.530351;2.491930;-0.451056;,
-0.398976;2.491930;0.622472;,
-0.387899;2.491930;-0.590930;,
-0.226998;2.491930;0.723867;,
-0.214099;2.491930;-0.689169;,
-0.034638;2.491930;0.777297;,
-0.020796;2.491930;-0.739078;,
0.164997;2.491930;0.779119;,
0.178839;2.491930;-0.737256;,
0.358301;2.491930;0.729210;,
0.371200;2.491930;-0.683827;,
0.532100;2.491930;0.630971;,
0.543177;2.491930;-0.582431;,
0.674552;2.491930;0.491097;,
0.683051;2.491930;-0.439979;,
0.775948;2.491930;0.319119;,
0.781290;2.491930;-0.266180;,
0.829377;2.491930;0.126759;,
0.831199;2.491930;-0.072876;,
0.831199;0.000000;-0.072876;,
0.781290;2.491930;-0.266180;,
0.781290;0.000000;-0.266180;,
0.831199;2.491930;-0.072876;,
0.781290;0.000000;-0.266180;,
0.683051;2.491930;-0.439979;,
0.683051;0.000000;-0.439979;,
0.781290;2.491930;-0.266180;,
0.683051;0.000000;-0.439979;,
0.543177;2.491930;-0.582431;,
0.543177;0.000000;-0.582431;,
0.683051;2.491930;-0.439979;,
0.543177;2.491930;-0.582431;,
0.371200;0.000000;-0.683827;,
0.543177;0.000000;-0.582431;,
0.371200;2.491930;-0.683827;,
0.371200;2.491930;-0.683827;,
0.178839;0.000000;-0.737256;,
0.371200;0.000000;-0.683827;,
0.178839;2.491930;-0.737256;,
0.178839;2.491930;-0.737256;,
-0.020796;0.000000;-0.739078;,
0.178839;0.000000;-0.737256;,
-0.020796;2.491930;-0.739078;,
-0.020796;2.491930;-0.739078;,
-0.214099;0.000000;-0.689169;,
-0.020796;0.000000;-0.739078;,
-0.214099;2.491930;-0.689169;,
-0.214099;2.491930;-0.689169;,
-0.387899;0.000000;-0.590930;,
-0.214099;0.000000;-0.689169;,
-0.387899;2.491930;-0.590930;,
-0.387899;2.491930;-0.590930;,
-0.530351;0.000000;-0.451056;,
-0.387899;0.000000;-0.590930;,
-0.530351;2.491930;-0.451056;,
-0.631746;2.491930;-0.279078;,
-0.530351;0.000000;-0.451056;,
-0.530351;2.491930;-0.451056;,
-0.631746;0.000000;-0.279078;,
-0.685176;2.491930;-0.086718;,
-0.631746;0.000000;-0.279078;,
-0.631746;2.491930;-0.279078;,
-0.685176;0.000000;-0.086718;,
-0.686998;2.491930;0.112917;,
-0.685176;0.000000;-0.086718;,
-0.685176;2.491930;-0.086718;,
-0.686998;0.000000;0.112917;,
-0.637089;2.491930;0.306220;,
-0.686998;0.000000;0.112917;,
-0.686998;2.491930;0.112917;,
-0.637089;0.000000;0.306220;,
-0.538850;2.491930;0.480020;,
-0.637089;0.000000;0.306220;,
-0.637089;2.491930;0.306220;,
-0.538850;0.000000;0.480020;,
-0.398976;2.491930;0.622472;,
-0.538850;0.000000;0.480020;,
-0.538850;2.491930;0.480020;,
-0.398976;0.000000;0.622472;,
-0.398976;2.491930;0.622472;,
-0.226998;0.000000;0.723867;,
-0.398976;0.000000;0.622472;,
-0.226998;2.491930;0.723867;,
-0.226998;2.491930;0.723867;,
-0.034638;0.000000;0.777297;,
-0.226998;0.000000;0.723867;,
-0.034638;2.491930;0.777297;,
-0.034638;2.491930;0.777297;,
0.164997;0.000000;0.779119;,
-0.034638;0.000000;0.777297;,
0.164997;2.491930;0.779119;,
0.164997;2.491930;0.779119;,
0.358301;0.000000;0.729210;,
0.164997;0.000000;0.779119;,
0.358301;2.491930;0.729210;,
0.358301;2.491930;0.729210;,
0.532100;0.000000;0.630971;,
0.358301;0.000000;0.729210;,
0.532100;2.491930;0.630971;,
0.532100;2.491930;0.630971;,
0.674552;0.000000;0.491097;,
0.532100;0.000000;0.630971;,
0.674552;2.491930;0.491097;,
0.674552;0.000000;0.491097;,
0.775948;2.491930;0.319119;,
0.775948;0.000000;0.319119;,
0.674552;2.491930;0.491097;,
0.775948;0.000000;0.319119;,
0.829377;2.491930;0.126759;,
0.829377;0.000000;0.126759;,
0.775948;2.491930;0.319119;,
0.829377;0.000000;0.126759;,
0.831199;2.491930;-0.072876;,
0.831199;0.000000;-0.072876;,
0.829377;2.491930;0.126759;;
92;
3;2,1,0,
3;3,0,1,
3;4,0,3,
3;5,4,3,
3;6,4,5,
3;7,6,5,
3;8,6,7,
3;9,8,7,
3;10,8,9,
3;11,10,9,
3;12,10,11,
3;13,12,11,
3;14,12,13,
3;15,14,13,
3;16,14,15,
3;17,16,15,
3;18,16,17,
3;19,18,17,
3;20,18,19,
3;21,20,19,
3;22,20,21,
3;23,22,21,
3;26,25,24,
3;27,24,25,
3;28,27,25,
3;29,27,28,
3;30,29,28,
3;31,29,30,
3;32,31,30,
3;33,31,32,
3;34,33,32,
3;35,33,34,
3;36,35,34,
3;37,35,36,
3;38,37,36,
3;39,37,38,
3;40,39,38,
3;41,39,40,
3;42,41,40,
3;43,41,42,
3;44,43,42,
3;45,43,44,
3;46,45,44,
3;47,45,46,
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
3;142,141,140,
3;143,140,141;;
MeshNormals {
144;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
0.992595;0.000000;-0.121471;
0.927334;0.000000;-0.374234;
0.927334;0.000000;-0.374234;
0.992595;0.000000;-0.121471;
0.927334;0.000000;-0.374234;
0.798877;0.000000;-0.601494;
0.798877;0.000000;-0.601494;
0.927334;0.000000;-0.374234;
0.798877;0.000000;-0.601494;
0.615978;-0.000000;-0.787763;
0.615978;-0.000000;-0.787763;
0.798877;0.000000;-0.601494;
0.615978;-0.000000;-0.787763;
0.391101;-0.000000;-0.920348;
0.615978;-0.000000;-0.787763;
0.391101;-0.000000;-0.920348;
0.391101;-0.000000;-0.920348;
0.139571;-0.000000;-0.990212;
0.391101;-0.000000;-0.920348;
0.139571;-0.000000;-0.990212;
0.139571;-0.000000;-0.990212;
-0.121471;-0.000000;-0.992595;
0.139571;-0.000000;-0.990212;
-0.121471;-0.000000;-0.992595;
-0.121471;-0.000000;-0.992595;
-0.374234;-0.000000;-0.927334;
-0.121471;-0.000000;-0.992595;
-0.374234;-0.000000;-0.927334;
-0.374234;-0.000000;-0.927334;
-0.601494;-0.000000;-0.798877;
-0.374234;-0.000000;-0.927334;
-0.601494;-0.000000;-0.798877;
-0.601494;-0.000000;-0.798877;
-0.787763;0.000000;-0.615978;
-0.601494;-0.000000;-0.798877;
-0.787763;0.000000;-0.615978;
-0.920348;0.000000;-0.391101;
-0.787763;0.000000;-0.615978;
-0.787763;0.000000;-0.615978;
-0.920348;0.000000;-0.391101;
-0.990212;0.000000;-0.139571;
-0.920348;0.000000;-0.391101;
-0.920348;0.000000;-0.391101;
-0.990212;0.000000;-0.139571;
-0.992595;0.000000;0.121471;
-0.990212;0.000000;-0.139571;
-0.990212;0.000000;-0.139571;
-0.992595;0.000000;0.121471;
-0.927334;0.000000;0.374234;
-0.992595;0.000000;0.121471;
-0.992595;0.000000;0.121471;
-0.927334;0.000000;0.374234;
-0.798877;0.000000;0.601494;
-0.927334;0.000000;0.374234;
-0.927334;0.000000;0.374234;
-0.798877;0.000000;0.601494;
-0.615978;0.000000;0.787763;
-0.798877;0.000000;0.601494;
-0.798877;0.000000;0.601494;
-0.615978;0.000000;0.787763;
-0.615978;0.000000;0.787763;
-0.391101;-0.000000;0.920348;
-0.615978;0.000000;0.787763;
-0.391101;-0.000000;0.920348;
-0.391101;-0.000000;0.920348;
-0.139571;-0.000000;0.990212;
-0.391101;-0.000000;0.920348;
-0.139571;-0.000000;0.990212;
-0.139571;-0.000000;0.990212;
0.121471;-0.000000;0.992595;
-0.139571;-0.000000;0.990212;
0.121471;-0.000000;0.992595;
0.121471;-0.000000;0.992595;
0.374234;-0.000000;0.927334;
0.121471;-0.000000;0.992595;
0.374234;-0.000000;0.927334;
0.374234;-0.000000;0.927334;
0.601494;-0.000000;0.798877;
0.374234;-0.000000;0.927334;
0.601494;-0.000000;0.798877;
0.601494;-0.000000;0.798877;
0.787763;0.000000;0.615978;
0.601494;-0.000000;0.798877;
0.787763;0.000000;0.615978;
0.787763;0.000000;0.615978;
0.920348;0.000000;0.391101;
0.920348;0.000000;0.391101;
0.787763;0.000000;0.615978;
0.920348;0.000000;0.391101;
0.990212;0.000000;0.139571;
0.990212;0.000000;0.139571;
0.920348;0.000000;0.391101;
0.990212;0.000000;0.139571;
0.992595;0.000000;-0.121471;
0.992595;0.000000;-0.121471;
0.990212;0.000000;0.139571;;
92;
3;2,1,0;
3;3,0,1;
3;4,0,3;
3;5,4,3;
3;6,4,5;
3;7,6,5;
3;8,6,7;
3;9,8,7;
3;10,8,9;
3;11,10,9;
3;12,10,11;
3;13,12,11;
3;14,12,13;
3;15,14,13;
3;16,14,15;
3;17,16,15;
3;18,16,17;
3;19,18,17;
3;20,18,19;
3;21,20,19;
3;22,20,21;
3;23,22,21;
3;26,25,24;
3;27,24,25;
3;28,27,25;
3;29,27,28;
3;30,29,28;
3;31,29,30;
3;32,31,30;
3;33,31,32;
3;34,33,32;
3;35,33,34;
3;36,35,34;
3;37,35,36;
3;38,37,36;
3;39,37,38;
3;40,39,38;
3;41,39,40;
3;42,41,40;
3;43,41,42;
3;44,43,42;
3;45,43,44;
3;46,45,44;
3;47,45,46;
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
3;142,141,140;
3;143,140,141;;
}
MeshTextureCoords {
144;
26.082266,-12.055932;
27.975441,3.414094;
28.047187,-4.445539;
25.871916,10.987348;
22.214583,-18.898447;
21.879966,17.758117;
16.707715,-24.506779;
16.271633,23.264985;
9.936946,-28.498730;
9.429118,27.132668;
2.363692,-30.602254;
1.818726,29.097589;
-5.495942,-30.674001;
-6.040908,29.025843;
-13.106334,-28.709079;
-13.614162,26.922319;
-19.948849,-24.841397;
-20.384931,22.930368;
-25.557182,-19.334529;
-25.891799,17.322036;
-29.549132,-12.563759;
-29.759482,10.479520;
-31.652657,-4.990506;
-31.724403,2.869128;
-25.975441,3.414094;
-24.082266,-12.055932;
-26.047187,-4.445539;
-23.871916,10.987348;
-20.214583,-18.898447;
-19.879966,17.758117;
-14.707715,-24.506779;
-14.271633,23.264985;
-7.936946,-28.498730;
-7.429118,27.132668;
-0.363692,-30.602254;
0.181274,29.097589;
7.495942,-30.674001;
8.040908,29.025843;
15.106334,-28.709079;
15.614162,26.922319;
21.948849,-24.841397;
22.384931,22.930368;
27.557182,-19.334529;
27.891799,17.322036;
31.549132,-12.563759;
31.759482,10.479520;
33.652657,-4.990506;
33.724403,2.869128;
6.402786,-0.000000;
-1.457175,-98.107536;
-1.457175,-0.000000;
6.402786,-98.107536;
7.012961,-0.000000;
-0.847000,-98.107536;
-0.847000,-0.000000;
7.012961,-98.107536;
7.481184,-0.000000;
-0.378777,-98.107536;
-0.378777,-0.000000;
7.481184,-98.107536;
7.775547,-98.107536;
-0.084414,-0.000000;
7.775547,-0.000000;
-0.084414,-98.107536;
7.875989,-98.107536;
0.016028,-0.000000;
7.875989,-0.000000;
0.016028,-98.107536;
7.775665,-98.107536;
-0.084296,-0.000000;
7.775665,-0.000000;
-0.084296,-98.107536;
7.481413,-98.107536;
-0.378548,-0.000000;
7.481413,-0.000000;
-0.378548,-98.107536;
7.013285,-98.107536;
-0.846676,-0.000000;
7.013285,-0.000000;
-0.846676,-98.107536;
6.403183,-98.107536;
-1.456778,-0.000000;
6.403183,-0.000000;
-1.456778,-98.107536;
-2.167276,-98.107536;
5.692685,-0.000000;
5.692685,-98.107536;
-2.167276,-0.000000;
-2.929752,-98.107536;
4.930209,-0.000000;
4.930209,-98.107536;
-2.929752,-0.000000;
-3.692242,-98.107536;
4.167719,-0.000000;
4.167719,-98.107536;
-3.692242,-0.000000;
-4.402786,-98.107536;
3.457175,-0.000000;
3.457175,-98.107536;
-4.402786,-0.000000;
-5.012961,-98.107536;
2.847000,-0.000000;
2.847000,-98.107536;
-5.012961,-0.000000;
-5.481184,-98.107536;
2.378777,-0.000000;
2.378777,-98.107536;
-5.481184,-0.000000;
2.084414,-98.107536;
-5.775547,-0.000000;
2.084414,-0.000000;
-5.775547,-98.107536;
1.983972,-98.107536;
-5.875989,-0.000000;
1.983972,-0.000000;
-5.875989,-98.107536;
2.084296,-98.107536;
-5.775665,-0.000000;
2.084296,-0.000000;
-5.775665,-98.107536;
2.378548,-98.107536;
-5.481413,-0.000000;
2.378548,-0.000000;
-5.481413,-98.107536;
2.846676,-98.107536;
-5.013285,-0.000000;
2.846676,-0.000000;
-5.013285,-98.107536;
3.456778,-98.107536;
-4.403183,-0.000000;
3.456778,-0.000000;
-4.403183,-98.107536;
4.167276,-0.000000;
-3.692685,-98.107536;
-3.692685,-0.000000;
4.167276,-98.107536;
4.929752,-0.000000;
-2.930209,-98.107536;
-2.930209,-0.000000;
4.929752,-98.107536;
5.692242,-0.000000;
-2.167719,-98.107536;
-2.167719,-0.000000;
5.692242,-98.107536;;
}
MeshMaterialList {
1;
92;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
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