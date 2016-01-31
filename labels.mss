////////////////////////////////////////////////
// Places //
////////////////////////////////////////////////

// Countries //
#country_label[zoom>=2] {
  text-name: @name;
  text-face-name: @serif;
  text-transform: uppercase;
  text-wrap-width: 80;
  text-wrap-before: true;
  text-fill: @ink;
  text-halo-fill: lighten(@ink, 85);
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-size: 8;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 16;
    text-wrap-width: 200;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 18;
    text-wrap-width: 185;
  }
  [zoom>=8] { text-fill: @ink}  
}

#country_label_line {
  line-color: @ink;
}

// States //
#state_label[zoom>=4][zoom<=10] {
  text-name: @name;
  text-face-name: @serif;
  text-transform: uppercase;
  text-character-spacing: 1.8;
  text-placement: point;
  text-fill: @ink;
  text-halo-fill: lighten(@ink, 85);
  text-opacity: 1;
  text-halo-radius: 1.5;
  text-halo-rasterizer: fast;
  text-size: 8;
  [zoom>=5][zoom<=6] {
    [area>10000] { text-size: 10; }
    [area>50000] { text-size: 11; }
    text-wrap-width: 40;
  }
  [zoom>=7] {
    text-size: 12;
    [area>50000] { text-size: 13;  }
    [area>100000] { text-size: 14; }
    text-wrap-width: 60;
  }
  [zoom>=8] {
    text-size: 16;
    [area>50000] { text-size: 18;  }
    [area>100000] { text-size: 20; }
    text-wrap-width: 80;
  }
  [zoom>=9][zoom<=10] {
    text-size: 18;
    [area>50000] { text-size: 20; }
    text-wrap-width: 100;
  }
}

// City dots – version with markers as text
#place_label::citydots[type='city'][zoom>=4][zoom<=7][localrank<=2] {
 [ldir='N'],[ldir='S'],[ldir='E'],[ldir='W'],
 [ldir='NE'],[ldir='SE'],[ldir='SW'],[ldir='NW'] {
  // explicitly defining all the `ldir` values we are going
  // to use shaves a bit off the final project.xml size
 [ldir='E'] {
      text-name: '• ' + [name_en];
      text-horizontal-alignment: right; 
      }
    [ldir='W'] {
      text-name: [name_en] + ' •';
      text-horizontal-alignment: left; 
      }
    [ldir='S'] { 
      text-name: '•\n' + [name_en];
      text-line-spacing: -10;
      text-vertical-alignment: bottom;
      } 
     [ldir='N'] {
      text-name: [name_en] + '\n•';
      text-line-spacing: -10;
      text-vertical-alignment: top;
      }
    [ldir='SE'] {
      text-name: '•\n  ' + [name_en];
      text-line-spacing: -15;
      text-vertical-alignment: bottom;
      text-horizontal-alignment: right;
      text-align: left;
      }
    [ldir='SW'] {
      text-name: '•\n' + [name_en] + '  ';
      text-line-spacing: -16;
      text-vertical-alignment: bottom;
      text-horizontal-alignment: left;
      text-align: right;
      }
     [ldir='NE'] {
      text-name: '  ' + [name_en] + '\n•';
      text-line-spacing: -16;
      text-vertical-alignment: top;
      text-horizontal-alignment: right;
      text-align: left;
      }
    [ldir='NW'] {
      text-name: [name_en] + '  \n•';
      text-line-spacing: -15;
      text-vertical-alignment: top;
      text-horizontal-alignment: left;
      text-align: right;
      }
    text-name: @name;
    text-size: 16;
    text-face-name: @serif;
    text-placement: point;
    text-fill: @ink;
    text-halo-fill: @land;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;  
    }
}

#place_label {
  [type='city'][zoom>=8][zoom<=15][localrank<=2] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @ink;
    text-halo-fill: @city_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 16;
    text-line-spacing: -8;
    text-wrap-width: 160;
    text-wrap-before: true;
    [zoom>=9] { 
      text-size: 17; 
      text-wrap-width: 170; }
    [zoom>=10] { 
      text-size: 18; 
      text-wrap-width: 180; }
    [zoom>=12] { 
      text-size: 24;
      text-character-spacing: 0;
      text-wrap-width: 220; 
      }
    [zoom>=14] { 
        text-fill: @city_text_high; 
        text-size: 28;
        text-wrap-width: 250;
      } 
    }
  }

#place_label {  
  [type='town'][zoom>=8][zoom<=17][localrank<=2] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @town_text;
    text-halo-fill: @town_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 12;
    text-line-spacing: -8;
    text-wrap-width: 100;
    text-wrap-before: true;
    [zoom>=10] { 
      text-size: 14;
      text-wrap-width: 120;  
       }
    [zoom>=12] { 
      text-size: 20;
      text-wrap-width: 160;  
      }
    [zoom>=14] { 
      text-fill: @town_text_high; 
      text-size: 26;
      text-wrap-width: 200;
      }
    [zoom>=16] { 
      text-size: 28;
      text-wrap-width: 180;  
    }
  }
  [type='village'][zoom>=10][zoom<=18][localrank<=2],
  [type='hamlet'][zoom>=12][zoom<=18][localrank<=2]  {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @village_text;
    text-halo-fill: @village_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 12;
    text-wrap-width: 100;
    text-line-spacing: -8;
    text-wrap-before: true;
    [type='village'] {
    [zoom>=12] { 
        text-size: 18; 
        text-wrap-width: 180; 
    }
    [zoom>=14] { 
        text-size: 20; 
        text-wrap-width: 200; 
    }
    [zoom>=16] {
        text-fill: @village_text_high;
        text-size: 24; 
        text-wrap-width: 240; 
     }
     [zoom>=18] {
        text-size: 26; 
        text-wrap-width: 250; 
      }
    }
    [type='hamlet'] {
    [zoom>=12] { 
        text-size: 16; 
        text-wrap-width: 160;
    }
    [zoom>=14] { 
        text-size: 18; 
        text-wrap-width: 180; 
     }
     [zoom>=16] {
        text-fill: @village_text_high;
        text-size: 22; 
        text-wrap-width: 220; 
      }
      [zoom>=18] {
        text-size: 24; 
        text-wrap-width: 240; 
       }
    }
 }
  
  [type='suburb'][zoom>=12][zoom<=17][localrank<=2],
  [type='neighbourhood'][zoom>=13][zoom<=17][localrank<=2] {
    text-name: @name;
    text-face-name: @serif;
    text-fill: @neigh_text;
    text-halo-fill: @neigh_halo;
    text-halo-radius: 2;
    text-halo-rasterizer: fast;
    text-size: 14;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-line-spacing: -8;
    [type='suburb'][zoom>=13],
    [type='neighbourhood'][zoom>=14] {
      text-size: 16; 
      text-wrap-width: 160; 
    }
    [type='suburb'][zoom>=14],
    [type='neighbourhood'][zoom>=15] {
      text-size: 18; 
      text-wrap-width: 180;
    }
    [type='suburb'][zoom>=15],
    [type='neighbourhood'][zoom>=16] {
      text-size: 20; 
      text-wrap-width: 200;
      }
     [type='suburb'][zoom>=16],
     [type='neighbourhood'][zoom>=17] {
       text-size: 22; 
       text-wrap-width: 220;
     }
     [type='suburb'][zoom>=17] {
       text-size: 24; 
       text-wrap-width: 240;
      }
    [zoom>=16] { text-fill:@neigh_text_high; }
  }
}

////////////////////////////////////////////////
// Water Features //
////////////////////////////////////////////////

// Marine (oceans and seas) //

#marine_label::text[zoom>=0][zoom<=6] {
  text-name: @name;
  text-face-name: @serif_italic;
  text-fill: @ink;
  text-halo-fill: lighten(@ink, 70);
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-wrap-width: 300;
  text-wrap-before: true;
  [placement = 'point'] {
    text-placement: point;
  }
  [placement = 'line'] {
    text-placement: line;
    text-avoid-edges: true;
  }
  [labelrank = 1] {
    [zoom = 3] {
      text-size: 24;
    }
    [zoom = 4] {
      text-size: 35;
      text-character-spacing: 2;
    }
    [zoom = 5] {
      text-size: 35;
      text-character-spacing: 2;
    }
  }
  [labelrank = 2] {
    [zoom = 3] {
      text-size: 18;
      text-character-spacing: 1;
    }
    [zoom = 4] {
      text-size: 24;
      text-character-spacing: 2;
    }
    [zoom = 5] {
      text-size: 30;
      text-character-spacing: 4;
    }
    [zoom = 6] {
      text-size: 35;
      text-character-spacing: 5;
    }
  }
  [labelrank = 3] {
    [zoom = 3] {
      text-size: 14;
      text-character-spacing: 2;      
    }
    [zoom = 4] {
      text-size: 18;
      text-character-spacing: 3;
    }
    [zoom = 5] {
      text-size: 25;
      text-character-spacing: 4;
    }
    [zoom = 6] {
      text-size: 18;
      text-character-spacing: 5;
    }
  }
  [labelrank = 4][zoom = 4],
  [labelrank = 5][zoom = 5],
  [labelrank = 6][zoom = 6] {
    text-size: 12;
    text-character-spacing: 2;
    text-line-spacing: 6;
  }
  [labelrank = 4][zoom = 5],
  [labelrank = 5][zoom = 6],
  [labelrank = 6][zoom = 7] {
    text-size: 14;
    text-character-spacing: 3;
    text-line-spacing: 8;
  }
  [labelrank = 4][zoom = 6],
  [labelrank = 5][zoom = 7] {
    text-size: 16;
    text-character-spacing: 4;
    text-line-spacing: 1;
  }
}

