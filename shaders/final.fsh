#version 120

const int shadowMapResolution = 32768;
const float shadowMapDistance = 16.0;

void main() {
  vec4 x = vec4(gl_FragCoord.xy, 0.123, 0.456);
  for (int i = 0; i < 2147483647; i++) {
    x = sin(x * 1.00001 + vec4(0.123, 0.456, 0.789, 0.321));
  }
  gl_FragColor = x;
}
