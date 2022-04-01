#!/usr/bin/env bash

Bash.import: fake_useragent/HTTP.UA
Bash.import: tor__socks__/__torlib__
bi=$(mode.bold: biru)    cy=$(mode.bold: cyan)
  ij=$(mode.bold: hijau)  hi=$(mode.normal: hitam)
   me=$(mode.bold: merah)  un=$(mode.bold: ungu)
    ku=$(mode.bold: kuning) pu=$(mode.bold: putih)
     m=$(mode.bold: pink)    st=$(default.color)
     
var bg_me : $(mode::bg.merah)
var bg_ij : $(mode::bg.hijau)
var bg_ku : $(mode::bg.kuning)
var bg_bi : $(mode::bg.biru)
var bg_m : $(mode::bg.pink)
var bg_cy : $(mode::bg.cyan)
