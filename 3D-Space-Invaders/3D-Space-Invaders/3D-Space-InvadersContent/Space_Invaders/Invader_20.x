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
332;
0.239944;0.000000;0.231137;,
1.239943;0.000000;-0.268863;,
0.239944;0.000000;-0.268863;,
1.239943;0.000000;0.231137;,
1.239943;0.500000;-0.268863;,
0.239944;0.500000;0.231137;,
0.239944;0.500000;-0.268863;,
1.239943;0.500000;0.231137;,
0.239944;0.500000;0.231137;,
0.239944;0.000000;-0.268863;,
0.239944;0.500000;-0.268863;,
0.239944;0.000000;0.231137;,
0.239944;0.500000;0.231137;,
1.239943;0.000000;0.231137;,
0.239944;0.000000;0.231137;,
1.239943;0.500000;0.231137;,
1.239943;0.000000;0.231137;,
1.239943;0.500000;-0.268863;,
1.239943;0.000000;-0.268863;,
1.239943;0.500000;0.231137;,
1.239943;0.500000;-0.268863;,
0.239944;0.000000;-0.268863;,
1.239943;0.000000;-0.268863;,
0.239944;0.500000;-0.268863;,
1.239943;0.500000;0.231137;,
1.739943;0.500000;-0.268863;,
1.239943;0.500000;-0.268863;,
1.739943;0.500000;0.231137;,
-1.760055;1.249999;0.231137;,
-1.260055;0.488000;0.231137;,
-1.760055;0.488000;0.231137;,
-1.260055;0.875000;0.231137;,
1.239943;0.875000;0.231137;,
-2.760055;1.749999;0.231137;,
-2.260055;0.250000;0.231137;,
-2.760055;0.250000;0.231137;,
-2.260055;1.249999;0.231137;,
1.739943;1.249999;0.231137;,
2.239943;1.249999;0.231137;,
-1.760055;2.998998;0.231137;,
-1.260055;2.249999;0.231137;,
-1.760055;2.249999;0.231137;,
-1.260055;2.609499;0.231137;,
-0.760056;2.609499;0.231137;,
0.739943;2.609499;0.231137;,
1.239943;2.609499;0.231137;,
-1.260055;3.498998;0.231137;,
-0.760056;2.998998;0.231137;,
-1.260055;2.998998;0.231137;,
-0.760056;3.498998;0.231137;,
0.739943;3.499998;0.231137;,
1.239943;2.999998;0.231137;,
0.739943;2.998998;0.231137;,
1.239943;3.499998;0.231137;,
1.739943;2.249999;0.231137;,
1.239943;2.249999;0.231137;,
1.739943;2.999998;0.231137;,
0.739943;2.249999;0.231137;,
-0.760056;2.249999;0.231137;,
-2.260055;2.249999;0.231137;,
2.239943;1.749999;0.231137;,
-2.260055;1.749999;0.231137;,
2.239943;2.249999;0.231137;,
2.739942;0.250000;0.231137;,
2.239943;0.250000;0.231137;,
2.739942;1.749999;0.231137;,
1.739943;0.500000;0.231137;,
1.239943;0.500000;0.231137;,
1.739943;2.249999;0.231137;,
1.739943;2.999998;-0.268863;,
1.739943;2.249999;-0.268863;,
1.739943;2.999998;0.231137;,
1.739943;0.500000;0.231137;,
1.739943;1.249999;-0.268863;,
1.739943;0.500000;-0.268863;,
1.739943;1.249999;0.231137;,
2.739942;0.250000;0.231137;,
2.739942;1.749999;-0.268863;,
2.739942;0.250000;-0.268863;,
2.739942;1.749999;0.231137;,
2.739942;1.749999;-0.268863;,
2.239943;1.749999;0.231137;,
2.239943;1.749999;-0.268863;,
2.739942;1.749999;0.231137;,
1.739943;1.249999;0.231137;,
2.239943;1.249999;-0.268863;,
1.739943;1.249999;-0.268863;,
2.239943;1.249999;0.231137;,
2.239943;0.250000;0.231137;,
2.739942;0.250000;-0.268863;,
2.239943;0.250000;-0.268863;,
2.739942;0.250000;0.231137;,
2.239943;1.249999;0.231137;,
2.239943;0.250000;-0.268863;,
2.239943;1.249999;-0.268863;,
2.239943;0.250000;0.231137;,
1.239943;0.875000;0.231137;,
1.239943;0.500000;-0.268863;,
1.239943;0.875000;-0.268863;,
1.239943;0.500000;0.231137;,
-1.760055;2.998998;-0.268863;,
-1.760055;2.249999;0.231137;,
-1.760055;2.249999;-0.268863;,
-1.760055;2.998998;0.231137;,
-1.260055;0.875000;0.231137;,
1.239943;0.875000;-0.268863;,
-1.260055;0.875000;-0.268863;,
1.239943;0.875000;0.231137;,
-1.760055;0.488000;0.231137;,
-1.260055;0.488000;-0.268863;,
-1.760055;0.488000;-0.268863;,
-1.260055;0.488000;0.231137;,
-1.260055;0.488000;0.231137;,
-1.260055;0.875000;-0.268863;,
-1.260055;0.488000;-0.268863;,
-1.260055;0.875000;0.231137;,
-1.260055;0.488000;0.231137;,
-1.260055;-0.012000;-0.268863;,
-1.260055;0.488000;-0.268863;,
-1.260055;-0.012000;0.231137;,
-0.260056;-0.012000;0.231137;,
-0.260056;0.488000;-0.268863;,
-0.260056;-0.012000;-0.268863;,
-0.260056;0.488000;0.231137;,
-1.260055;0.488000;0.231137;,
-0.260056;-0.012000;0.231137;,
-1.260055;-0.012000;0.231137;,
-0.260056;0.488000;0.231137;,
-0.260056;0.488000;-0.268863;,
-1.260055;0.488000;0.231137;,
-1.260055;0.488000;-0.268863;,
-0.260056;0.488000;0.231137;,
-0.260056;0.488000;-0.268863;,
-1.260055;-0.012000;-0.268863;,
-0.260056;-0.012000;-0.268863;,
-1.260055;0.488000;-0.268863;,
-1.260055;-0.012000;0.231137;,
-0.260056;-0.012000;-0.268863;,
-1.260055;-0.012000;-0.268863;,
-0.260056;-0.012000;0.231137;,
2.239943;2.249999;-0.268863;,
1.739943;2.249999;0.231137;,
1.739943;2.249999;-0.268863;,
2.239943;2.249999;0.231137;,
2.239943;1.749999;0.231137;,
2.239943;2.249999;-0.268863;,
2.239943;1.749999;-0.268863;,
2.239943;2.249999;0.231137;,
-1.760055;1.249999;0.231137;,
-1.760055;0.488000;-0.268863;,
-1.760055;1.249999;-0.268863;,
-1.760055;0.488000;0.231137;,
-2.260055;2.249999;0.231137;,
-2.260055;1.749999;-0.268863;,
-2.260055;2.249999;-0.268863;,
-2.260055;1.749999;0.231137;,
-1.760055;2.249999;-0.268863;,
-2.260055;2.249999;0.231137;,
-2.260055;2.249999;-0.268863;,
-1.760055;2.249999;0.231137;,
-2.760055;1.749999;0.231137;,
-2.760055;0.250000;-0.268863;,
-2.760055;1.749999;-0.268863;,
-2.760055;0.250000;0.231137;,
-2.260055;1.749999;-0.268863;,
-2.760055;1.749999;0.231137;,
-2.760055;1.749999;-0.268863;,
-2.260055;1.749999;0.231137;,
-2.260055;1.249999;0.231137;,
-1.760055;1.249999;-0.268863;,
-2.260055;1.249999;-0.268863;,
-1.760055;1.249999;0.231137;,
-2.760055;0.250000;0.231137;,
-2.260055;0.250000;-0.268863;,
-2.760055;0.250000;-0.268863;,
-2.260055;0.250000;0.231137;,
-2.260055;0.250000;0.231137;,
-2.260055;1.249999;-0.268863;,
-2.260055;0.250000;-0.268863;,
-2.260055;1.249999;0.231137;,
-1.260055;2.249999;-0.268863;,
-1.260055;2.609499;0.231137;,
-1.260055;2.609499;-0.268863;,
-1.260055;2.249999;0.231137;,
1.739943;1.249999;-0.268863;,
1.239943;0.500000;-0.268863;,
1.739943;0.500000;-0.268863;,
1.239943;0.875000;-0.268863;,
-1.260055;0.875000;-0.268863;,
-1.760055;1.249999;-0.268863;,
-2.260055;1.249999;-0.268863;,
1.239943;2.999998;-0.268863;,
0.739943;2.609499;-0.268863;,
1.239943;2.609499;-0.268863;,
-0.760056;2.609499;-0.268863;,
-1.260055;2.609499;-0.268863;,
0.739943;2.998998;-0.268863;,
0.739943;3.499998;-0.268863;,
1.239943;3.499998;-0.268863;,
1.739943;2.999998;-0.268863;,
1.239943;2.249999;-0.268863;,
1.739943;2.249999;-0.268863;,
-0.760056;3.498998;-0.268863;,
-1.260055;2.998998;-0.268863;,
-0.760056;2.998998;-0.268863;,
-1.260055;3.498998;-0.268863;,
2.239943;2.249999;-0.268863;,
-1.760055;2.249999;-0.268863;,
2.239943;1.749999;-0.268863;,
-1.260055;2.249999;-0.268863;,
-1.760055;2.998998;-0.268863;,
0.739943;2.249999;-0.268863;,
-0.760056;2.249999;-0.268863;,
2.739942;1.749999;-0.268863;,
2.239943;0.250000;-0.268863;,
2.739942;0.250000;-0.268863;,
2.239943;1.249999;-0.268863;,
-2.260055;1.749999;-0.268863;,
-2.260055;2.249999;-0.268863;,
-2.760055;0.250000;-0.268863;,
-2.260055;0.250000;-0.268863;,
-2.760055;1.749999;-0.268863;,
-1.760055;0.488000;-0.268863;,
-1.260055;0.488000;-0.268863;,
1.739943;2.999998;-0.268863;,
1.239943;2.999998;0.231137;,
1.239943;2.999998;-0.268863;,
1.739943;2.999998;0.231137;,
0.739943;2.609499;0.231137;,
1.239943;2.609499;-0.268863;,
0.739943;2.609499;-0.268863;,
1.239943;2.609499;0.231137;,
1.239943;2.609499;0.231137;,
1.239943;2.249999;-0.268863;,
1.239943;2.609499;-0.268863;,
1.239943;2.249999;0.231137;,
-0.760056;2.249999;-0.268863;,
-1.260055;2.249999;0.231137;,
-1.260055;2.249999;-0.268863;,
-0.760056;2.249999;0.231137;,
1.239943;2.249999;-0.268863;,
0.739943;2.249999;0.231137;,
0.739943;2.249999;-0.268863;,
1.239943;2.249999;0.231137;,
0.739943;2.249999;0.231137;,
0.739943;2.609499;-0.268863;,
0.739943;2.249999;-0.268863;,
0.739943;2.609499;0.231137;,
-0.760056;2.609499;0.231137;,
-0.760056;2.249999;-0.268863;,
-0.760056;2.609499;-0.268863;,
-0.760056;2.249999;0.231137;,
-1.260055;2.609499;0.231137;,
-0.760056;2.609499;-0.268863;,
-1.260055;2.609499;-0.268863;,
-0.760056;2.609499;0.231137;,
0.739943;3.499998;0.231137;,
0.739943;2.998998;-0.268863;,
0.739943;3.499998;-0.268863;,
0.739943;2.998998;0.231137;,
1.239943;3.499998;-0.268863;,
0.739943;3.499998;0.231137;,
0.739943;3.499998;-0.268863;,
1.239943;3.499998;0.231137;,
1.239943;2.999998;0.231137;,
1.239943;3.499998;-0.268863;,
1.239943;2.999998;-0.268863;,
1.239943;3.499998;0.231137;,
0.739943;2.998998;-0.268863;,
-0.760056;2.998998;0.231137;,
-0.760056;2.998998;-0.268863;,
0.739943;2.998998;0.231137;,
-1.260055;2.998998;-0.268863;,
-1.760055;2.998998;0.231137;,
-1.760055;2.998998;-0.268863;,
-1.260055;2.998998;0.231137;,
-0.760056;3.498998;-0.268863;,
-1.260055;3.498998;0.231137;,
-1.260055;3.498998;-0.268863;,
-0.760056;3.498998;0.231137;,
-1.260055;3.498998;0.231137;,
-1.260055;2.998998;-0.268863;,
-1.260055;3.498998;-0.268863;,
-1.260055;2.998998;0.231137;,
-0.760056;2.998998;0.231137;,
-0.760056;3.498998;-0.268863;,
-0.760056;2.998998;-0.268863;,
-0.760056;3.498998;0.231137;,
-1.260055;3.498998;0.231137;,
-1.260055;3.998998;-0.268863;,
-1.260055;3.498998;-0.268863;,
-1.260055;3.998998;0.231137;,
-1.760055;3.998998;0.231137;,
-1.760055;3.498998;-0.268863;,
-1.760055;3.998998;-0.268863;,
-1.760055;3.498998;0.231137;,
-1.760055;3.998998;0.231137;,
-1.260055;3.498998;0.231137;,
-1.760055;3.498998;0.231137;,
-1.260055;3.998998;0.231137;,
-1.760055;3.498998;0.231137;,
-1.260055;3.498998;-0.268863;,
-1.760055;3.498998;-0.268863;,
-1.260055;3.498998;0.231137;,
-1.260055;3.998998;-0.268863;,
-1.760055;3.498998;-0.268863;,
-1.260055;3.498998;-0.268863;,
-1.760055;3.998998;-0.268863;,
-1.260055;3.998998;-0.268863;,
-1.760055;3.998998;0.231137;,
-1.760055;3.998998;-0.268863;,
-1.260055;3.998998;0.231137;,
1.739943;3.499998;0.231137;,
1.739943;3.999998;-0.268863;,
1.739943;3.499998;-0.268863;,
1.739943;3.999998;0.231137;,
1.239943;3.499998;0.231137;,
1.739943;3.499998;-0.268863;,
1.239943;3.499998;-0.268863;,
1.739943;3.499998;0.231137;,
1.239943;3.999998;0.231137;,
1.739943;3.499998;0.231137;,
1.239943;3.499998;0.231137;,
1.739943;3.999998;0.231137;,
1.739943;3.999998;-0.268863;,
1.239943;3.999998;0.231137;,
1.239943;3.999998;-0.268863;,
1.739943;3.999998;0.231137;,
1.739943;3.999998;-0.268863;,
1.239943;3.499998;-0.268863;,
1.739943;3.499998;-0.268863;,
1.239943;3.999998;-0.268863;;
210;
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
3;32,28,31,
3;35,34,33,
3;36,33,34,
3;28,33,36,
3;37,33,28,
3;38,33,37,
3;41,40,39,
3;42,39,40,
3;43,39,42,
3;44,39,43,
3;45,39,44,
3;48,47,46,
3;49,46,47,
3;52,51,50,
3;53,50,51,
3;55,54,45,
3;56,45,54,
3;52,45,56,
3;39,45,52,
3;48,39,52,
3;47,48,52,
3;51,52,56,
3;58,57,43,
3;44,43,57,
3;61,60,59,
3;41,59,60,
3;62,41,60,
3;40,41,62,
3;58,40,62,
3;57,58,62,
3;55,57,62,
3;54,55,62,
3;64,63,38,
3;65,38,63,
3;61,38,65,
3;33,38,61,
3;60,61,65,
3;67,66,32,
3;37,32,66,
3;28,32,37,
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
3;143,140,141,
3;146,145,144,
3;147,144,145,
3;150,149,148,
3;151,148,149,
3;154,153,152,
3;155,152,153,
3;158,157,156,
3;159,156,157,
3;162,161,160,
3;163,160,161,
3;166,165,164,
3;167,164,165,
3;170,169,168,
3;171,168,169,
3;174,173,172,
3;175,172,173,
3;178,177,176,
3;179,176,177,
3;182,181,180,
3;183,180,181,
3;186,185,184,
3;187,184,185,
3;188,184,187,
3;189,184,188,
3;190,184,189,
3;193,192,191,
3;194,191,192,
3;195,191,194,
3;196,191,195,
3;197,191,196,
3;198,191,197,
3;201,200,199,
3;193,199,200,
3;191,199,193,
3;204,203,202,
3;205,202,203,
3;208,207,206,
3;209,206,207,
3;210,209,207,
3;201,206,209,
3;200,201,209,
3;211,200,209,
3;212,211,209,
3;195,209,210,
3;196,195,210,
3;204,196,210,
3;203,204,210,
3;211,212,192,
3;194,192,212,
3;215,214,213,
3;216,213,214,
3;184,213,216,
3;217,213,184,
3;208,213,217,
3;218,208,217,
3;207,208,218,
3;220,219,190,
3;221,190,219,
3;184,190,221,
3;217,184,221,
3;223,222,188,
3;189,188,222,
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
3;287,284,285,
3;290,289,288,
3;291,288,289,
3;294,293,292,
3;295,292,293,
3;298,297,296,
3;299,296,297,
3;302,301,300,
3;303,300,301,
3;306,305,304,
3;307,304,305,
3;310,309,308,
3;311,308,309,
3;314,313,312,
3;315,312,313,
3;318,317,316,
3;319,316,317,
3;322,321,320,
3;323,320,321,
3;326,325,324,
3;327,324,325,
3;330,329,328,
3;331,328,329;;
MeshNormals {
332;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
-0.000000;1.000000;-0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
-1.000000;-0.000000;0.000000;
-1.000000;-0.000000;0.000000;
-1.000000;-0.000000;0.000000;
-1.000000;-0.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
0.000000;-1.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
1.000000;0.000000;-0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
-1.000000;0.000000;0.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;-1.000000;-0.000000;
0.000000;-1.000000;-0.000000;
0.000000;-1.000000;-0.000000;
0.000000;-1.000000;-0.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
-0.000000;0.000000;-1.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
0.000000;1.000000;0.000000;
1.000000;-0.000000;-0.000000;
1.000000;-0.000000;-0.000000;
1.000000;-0.000000;-0.000000;
1.000000;-0.000000;-0.000000;
-0.000000;-1.000000;0.000000;
-0.000000;-1.000000;0.000000;
-0.000000;-1.000000;0.000000;
-0.000000;-1.000000;0.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;0.000000;1.000000;
0.000000;1.000000;-0.000000;
0.000000;1.000000;-0.000000;
0.000000;1.000000;-0.000000;
0.000000;1.000000;-0.000000;
-0.000000;-0.000000;-1.000000;
-0.000000;-0.000000;-1.000000;
-0.000000;-0.000000;-1.000000;
-0.000000;-0.000000;-1.000000;;
210;
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
3;32,28,31;
3;35,34,33;
3;36,33,34;
3;28,33,36;
3;37,33,28;
3;38,33,37;
3;41,40,39;
3;42,39,40;
3;43,39,42;
3;44,39,43;
3;45,39,44;
3;48,47,46;
3;49,46,47;
3;52,51,50;
3;53,50,51;
3;55,54,45;
3;56,45,54;
3;52,45,56;
3;39,45,52;
3;48,39,52;
3;47,48,52;
3;51,52,56;
3;58,57,43;
3;44,43,57;
3;61,60,59;
3;41,59,60;
3;62,41,60;
3;40,41,62;
3;58,40,62;
3;57,58,62;
3;55,57,62;
3;54,55,62;
3;64,63,38;
3;65,38,63;
3;61,38,65;
3;33,38,61;
3;60,61,65;
3;67,66,32;
3;37,32,66;
3;28,32,37;
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
3;143,140,141;
3;146,145,144;
3;147,144,145;
3;150,149,148;
3;151,148,149;
3;154,153,152;
3;155,152,153;
3;158,157,156;
3;159,156,157;
3;162,161,160;
3;163,160,161;
3;166,165,164;
3;167,164,165;
3;170,169,168;
3;171,168,169;
3;174,173,172;
3;175,172,173;
3;178,177,176;
3;179,176,177;
3;182,181,180;
3;183,180,181;
3;186,185,184;
3;187,184,185;
3;188,184,187;
3;189,184,188;
3;190,184,189;
3;193,192,191;
3;194,191,192;
3;195,191,194;
3;196,191,195;
3;197,191,196;
3;198,191,197;
3;201,200,199;
3;193,199,200;
3;191,199,193;
3;204,203,202;
3;205,202,203;
3;208,207,206;
3;209,206,207;
3;210,209,207;
3;201,206,209;
3;200,201,209;
3;211,200,209;
3;212,211,209;
3;195,209,210;
3;196,195,210;
3;204,196,210;
3;203,204,210;
3;211,212,192;
3;194,192,212;
3;215,214,213;
3;216,213,214;
3;184,213,216;
3;217,213,184;
3;208,213,217;
3;218,208,217;
3;207,208,218;
3;220,219,190;
3;221,190,219;
3;184,190,221;
3;217,184,221;
3;223,222,188;
3;189,188,222;
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
3;287,284,285;
3;290,289,288;
3;291,288,289;
3;294,293,292;
3;295,292,293;
3;298,297,296;
3;299,296,297;
3;302,301,300;
3;303,300,301;
3;306,305,304;
3;307,304,305;
3;310,309,308;
3;311,308,309;
3;314,313,312;
3;315,312,313;
3;318,317,316;
3;319,316,317;
3;322,321,320;
3;323,320,321;
3;326,325,324;
3;327,324,325;
3;330,329,328;
3;331,328,329;;
}
MeshTextureCoords {
332;
-8.446610,-9.099893;
-47.816688,10.585146;
-8.446610,10.585146;
-47.816688,-9.099893;
49.816688,10.585146;
10.446610,-9.099893;
10.446610,10.585146;
49.816688,-9.099893;
-8.099893,-19.685039;
11.585146,-0.000000;
11.585146,-19.685039;
-8.099893,-0.000000;
-8.446610,-19.685039;
-47.816688,-0.000000;
-8.446610,-0.000000;
-47.816688,-19.685039;
10.099893,-0.000000;
-9.585146,-19.685039;
-9.585146,-0.000000;
10.099893,-19.685039;
49.816688,-19.685039;
10.446610,-0.000000;
49.816688,-0.000000;
10.446610,-19.685039;
-47.816688,-9.099893;
-67.501728,10.585146;
-47.816688,10.585146;
-67.501728,-9.099893;
70.293548,-49.212598;
50.608509,-19.212598;
70.293548,-19.212598;
50.608509,-34.448819;
-47.816688,-34.448819;
109.663627,-68.897638;
89.978587,-9.842520;
109.663627,-9.842520;
89.978587,-49.212598;
-67.501728,-49.212598;
-87.186767,-49.212598;
70.293548,-118.070866;
50.608509,-88.582677;
70.293548,-88.582677;
50.608509,-102.736220;
30.923469,-102.736220;
-28.131649,-102.736220;
-47.816688,-102.736220;
50.608509,-137.755906;
30.923469,-118.070866;
50.608509,-118.070866;
30.923469,-137.755906;
-28.131649,-137.795276;
-47.816688,-118.110236;
-28.131649,-118.070866;
-47.816688,-137.795276;
-67.501728,-88.582677;
-47.816688,-88.582677;
-67.501728,-118.110236;
-28.131649,-88.582677;
30.923469,-88.582677;
89.978587,-88.582677;
-87.186767,-68.897638;
89.978587,-68.897638;
-87.186767,-88.582677;
-106.871806,-9.842520;
-87.186767,-9.842520;
-106.871806,-68.897638;
-67.501728,-19.685039;
-47.816688,-19.685039;
10.099893,-88.582677;
-9.585146,-118.110236;
-9.585146,-88.582677;
10.099893,-118.110236;
10.099893,-19.685039;
-9.585146,-49.212598;
-9.585146,-19.685039;
10.099893,-49.212598;
10.099893,-9.842520;
-9.585146,-68.897638;
-9.585146,-9.842520;
10.099893,-68.897638;
108.871806,10.585146;
89.186767,-9.099893;
89.186767,10.585146;
108.871806,-9.099893;
-67.501728,-9.099893;
-87.186767,10.585146;
-67.501728,10.585146;
-87.186767,-9.099893;
-87.186767,-9.099893;
-106.871806,10.585146;
-87.186767,10.585146;
-106.871806,-9.099893;
-8.099893,-49.212598;
11.585146,-9.842520;
11.585146,-49.212598;
-8.099893,-9.842520;
-8.099893,-34.448819;
11.585146,-19.685039;
11.585146,-34.448819;
-8.099893,-19.685039;
11.585146,-118.070866;
-8.099893,-88.582677;
11.585146,-88.582677;
-8.099893,-118.070866;
50.608509,-9.099893;
-47.816688,10.585146;
50.608509,10.585146;
-47.816688,-9.099893;
70.293548,-9.099893;
50.608509,10.585146;
70.293548,10.585146;
50.608509,-9.099893;
10.099893,-19.212598;
-9.585146,-34.448819;
-9.585146,-19.212598;
10.099893,-34.448819;
-8.099893,-19.212598;
11.585146,0.472441;
11.585146,-19.212598;
-8.099893,0.472441;
10.099893,0.472441;
-9.585146,-19.212598;
-9.585146,0.472441;
10.099893,-19.212598;
50.608509,-19.212598;
11.238430,0.472441;
50.608509,0.472441;
11.238430,-19.212598;
-9.238430,10.585146;
-48.608509,-9.099893;
-48.608509,10.585146;
-9.238430,-9.099893;
-9.238430,-19.212598;
-48.608509,0.472441;
-9.238430,0.472441;
-48.608509,-19.212598;
50.608509,-9.099893;
11.238430,10.585146;
50.608509,10.585146;
11.238430,-9.099893;
89.186767,10.585146;
69.501728,-9.099893;
69.501728,10.585146;
89.186767,-9.099893;
10.099893,-68.897638;
-9.585146,-88.582677;
-9.585146,-68.897638;
10.099893,-88.582677;
-8.099893,-49.212598;
11.585146,-19.212598;
11.585146,-49.212598;
-8.099893,-19.212598;
-8.099893,-88.582677;
11.585146,-68.897638;
11.585146,-88.582677;
-8.099893,-68.897638;
-68.293548,10.585146;
-87.978587,-9.099893;
-87.978587,10.585146;
-68.293548,-9.099893;
-8.099893,-68.897638;
11.585146,-9.842520;
11.585146,-68.897638;
-8.099893,-9.842520;
-87.978587,10.585146;
-107.663627,-9.099893;
-107.663627,10.585146;
-87.978587,-9.099893;
89.978587,-9.099893;
70.293548,10.585146;
89.978587,10.585146;
70.293548,-9.099893;
109.663627,-9.099893;
89.978587,10.585146;
109.663627,10.585146;
89.978587,-9.099893;
10.099893,-9.842520;
-9.585146,-49.212598;
-9.585146,-9.842520;
10.099893,-49.212598;
-9.585146,-88.582677;
10.099893,-102.736220;
-9.585146,-102.736220;
10.099893,-88.582677;
69.501728,-49.212598;
49.816688,-19.685039;
69.501728,-19.685039;
49.816688,-34.448819;
-48.608509,-34.448819;
-68.293548,-49.212598;
-87.978587,-49.212598;
49.816688,-118.110236;
30.131649,-102.736220;
49.816688,-102.736220;
-28.923469,-102.736220;
-48.608509,-102.736220;
30.131649,-118.070866;
30.131649,-137.795276;
49.816688,-137.795276;
69.501728,-118.110236;
49.816688,-88.582677;
69.501728,-88.582677;
-28.923469,-137.755906;
-48.608509,-118.070866;
-28.923469,-118.070866;
-48.608509,-137.755906;
89.186767,-88.582677;
-68.293548,-88.582677;
89.186767,-68.897638;
-48.608509,-88.582677;
-68.293548,-118.070866;
30.131649,-88.582677;
-28.923469,-88.582677;
108.871806,-68.897638;
89.186767,-9.842520;
108.871806,-9.842520;
89.186767,-49.212598;
-87.978587,-68.897638;
-87.978587,-88.582677;
-107.663627,-9.842520;
-87.978587,-9.842520;
-107.663627,-68.897638;
-68.293548,-19.212598;
-48.608509,-19.212598;
69.501728,10.585146;
49.816688,-9.099893;
49.816688,10.585146;
69.501728,-9.099893;
-28.131649,-9.099893;
-47.816688,10.585146;
-28.131649,10.585146;
-47.816688,-9.099893;
-8.099893,-102.736220;
11.585146,-88.582677;
11.585146,-102.736220;
-8.099893,-88.582677;
-28.923469,10.585146;
-48.608509,-9.099893;
-48.608509,10.585146;
-28.923469,-9.099893;
49.816688,10.585146;
30.131649,-9.099893;
30.131649,10.585146;
49.816688,-9.099893;
10.099893,-88.582677;
-9.585146,-102.736220;
-9.585146,-88.582677;
10.099893,-102.736220;
-8.099893,-102.736220;
11.585146,-88.582677;
11.585146,-102.736220;
-8.099893,-88.582677;
50.608509,-9.099893;
30.923469,10.585146;
50.608509,10.585146;
30.923469,-9.099893;
-8.099893,-137.795276;
11.585146,-118.070866;
11.585146,-137.795276;
-8.099893,-118.070866;
49.816688,10.585146;
30.131649,-9.099893;
30.131649,10.585146;
49.816688,-9.099893;
10.099893,-118.110236;
-9.585146,-137.795276;
-9.585146,-118.110236;
10.099893,-137.795276;
30.131649,10.585146;
-28.923469,-9.099893;
-28.923469,10.585146;
30.131649,-9.099893;
-48.608509,10.585146;
-68.293548,-9.099893;
-68.293548,10.585146;
-48.608509,-9.099893;
-28.923469,10.585146;
-48.608509,-9.099893;
-48.608509,10.585146;
-28.923469,-9.099893;
-8.099893,-137.755906;
11.585146,-118.070866;
11.585146,-137.755906;
-8.099893,-118.070866;
10.099893,-118.070866;
-9.585146,-137.755906;
-9.585146,-118.070866;
10.099893,-137.755906;
10.099893,-137.755906;
-9.585146,-157.440945;
-9.585146,-137.755906;
10.099893,-157.440945;
-8.099893,-157.440945;
11.585146,-137.755906;
11.585146,-157.440945;
-8.099893,-137.755906;
70.293548,-157.440945;
50.608509,-137.755906;
70.293548,-137.755906;
50.608509,-157.440945;
70.293548,-9.099893;
50.608509,10.585146;
70.293548,10.585146;
50.608509,-9.099893;
-48.608509,-157.440945;
-68.293548,-137.755906;
-48.608509,-137.755906;
-68.293548,-157.440945;
-48.608509,10.585146;
-68.293548,-9.099893;
-68.293548,10.585146;
-48.608509,-9.099893;
10.099893,-137.795276;
-9.585146,-157.480315;
-9.585146,-137.795276;
10.099893,-157.480315;
-47.816688,-9.099893;
-67.501728,10.585146;
-47.816688,10.585146;
-67.501728,-9.099893;
-47.816688,-157.480315;
-67.501728,-137.795276;
-47.816688,-137.795276;
-67.501728,-157.480315;
69.501728,10.585146;
49.816688,-9.099893;
49.816688,10.585146;
69.501728,-9.099893;
69.501728,-157.480315;
49.816688,-137.795276;
69.501728,-137.795276;
49.816688,-157.480315;;
}
MeshMaterialList {
1;
210;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
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