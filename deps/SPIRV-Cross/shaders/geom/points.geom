#version 310 es
#extension GL_EXT_geometry_shader : require

layout(points) in;
layout(points, max_vertices = 3) out;

in VertexData {
    vec3 normal;
} vin[];

out vec3 vNormal;

void main()
{
    gl_Position = gl_in[0].gl_Position;
    vNormal = vin[0].normal;
    EmitVertex();

    gl_Position = gl_in[0].gl_Position;
    vNormal = vin[0].normal;
    EmitVertex();

    gl_Position = gl_in[0].gl_Position;
    vNormal = vin[0].normal;
    EmitVertex();

    EndPrimitive();
}
