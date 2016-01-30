#admin [maritime=0] {
  line-join: round;
  line-color: @paper;
  // Countries
  ::lev2outline[admin_level=2][zoom>=2] {
    line-join: round;
    line-width: 1 + 1;    
    line-color: @paper;
    [zoom>=5] { line-width: 2 + 1; }
    [zoom>=6] { line-width: 2.5 + 1; }
    [zoom>=8] { line-width: 3 + 2; }
    [disputed=1] { line-dasharray: 4,4; }
    }
  ::lev2[admin_level=2] {
    line-join: round;
    line-cap: round;
    line-width: 1;
    line-color: fadeout(@ink, 40%);
    //image-filters: agg-stack-blur(1,1);
    [zoom>=4] { line-color: fadeout(@ink, 40%); }
    [zoom>=5] { line-width: 1.5; }
    [zoom>=6] { line-width: 2; }
    [zoom>=8] { line-width: 2.5; }
    [disputed=1] { line-dasharray: 4,4; }
  }
  // States / Provices / Subregions
   ::lev3outline[admin_level>=3] {
    line-color: @paper;
    line-join: round;
    line-cap: round;
    line-width: 0.2 + 1;
    [zoom=4] { line-width: 0.4 + 1; }
    [zoom=5] { line-width: 0.6 + 1; }
    [zoom>=6] { line-width: 1 + 1; }
    [zoom>=7] { line-width: 1.5 + 1; }
    [zoom>=12] { line-width: 2 + 1; }
  }
  ::lev3[admin_level>=3] {
    line-color: fadeout(@ink, 45%);
    line-width: 0.2;
    line-dasharray: 10,3,3,3;
    [zoom=4] { line-width: 0.4; }
    [zoom=5] { line-width: 0.6; }
    [zoom>=6] { line-width: 1; }
    [zoom>=7] { line-width: 1.5; }
    [zoom>=9] { line-color: @ink; }
    [zoom>=12] { line-width: 2; }
  }
}

// Water Features //

#water {
  ::fill {
    polygon-fill: @land;
    polygon-pattern-file:url(img/noise.png);
    polygon-pattern-alignment:global; 
    polygon-pattern-comp-op: multiply;
   }
 ::line {
    line-color: lighten(@ink,50);
    line-width: 0.6;
    line-join: round;
    line-cap: round;
  // blurring reveals the polygon fill from ::shadow around the edges of the water
    image-filters: agg-stack-blur(1,1);
  }   
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}