#version 450
#extension GL_ARB_separate_shader_objects : enable

out gl_PerVertex {
    vec4 gl_Position;
};

layout(location = 0) out vec3 fragColor;

# In vulkan the common builtin name for vertex index is gl_VertexIndex
# We use vertex index passed as vertex attribute to follow spirv_over_glsl_tests strategy
layout (location = 3) in int userVertexID;

vec2 positions[3] = vec2[](
    vec2(0.0, -0.5),
    vec2(0.5, 0.5),
    vec2(-0.5, 0.5)
);

vec3 colors[3] = vec3[](
    vec3(1.0, 0.0, 0.0),
    vec3(0.0, 1.0, 0.0),
    vec3(0.0, 0.0, 1.0)
);

void main() {
    gl_Position = vec4(positions[userVertexID], 0.0, 1.0);
    fragColor = colors[gl_VertexIndex];
}

