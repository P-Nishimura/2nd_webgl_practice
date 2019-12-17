// 描画する頂点情報
attribute vec3 position;
// 頂点の色情報
attribute vec3 color;

uniform float time;
uniform vec2 mouse_position;
uniform vec2 res;
uniform mat4 mvpMatrix;

varying vec4 vColor;
varying float now_time;
varying vec2 mouse;
varying vec2 resolution;

void main() {
    now_time = time;
    resolution = res;
    mouse = mouse_position;
    vColor = vec4(color, 1.0);

    gl_Position = mvpMatrix * vec4(position, 1.0);
    gl_PointSize = 1.0;
}
