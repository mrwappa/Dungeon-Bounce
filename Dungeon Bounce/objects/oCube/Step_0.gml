/// @description Insert description here
// You can write your code in this editor

image_angle += 180*delta;

var kLeft = keyboard_check(ord("A"));
var kRight = keyboard_check(ord("D"));
var kUp = keyboard_check(ord("W"));
var kDown = keyboard_check(ord("S"));

var horizontal = kRight - kLeft;
var vertical = kDown - kUp;

image_xscale += horizontal * 2 * delta;
image_yscale += vertical * 2 * delta;

x += horizontal * 40 * delta;
y += vertical * 40  * delta;

image_xscale = DLerp(image_xscale,1,0.001);
image_yscale = DLerp(image_yscale,1,0.001); 