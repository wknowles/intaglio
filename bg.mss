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
   }
 ::line {
    line-color: lighten(@ink,50);
    line-width:0.6;
    line-join: round;
    line-cap: round;
  }   
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: lighten(@ink,30);
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: lighten(@ink,50);
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}




////////////////////////////////////////////////
// Landuse //
////////////////////////////////////////////////

// Woods and scrubs //
#landuse {
  ::greenery {
    [class='wood'] { polygon-fill: @paper; }
      [class='scrub'] { polygon-fill: @paper; }
      [class='grass'] { polygon-fill: @landfeature; }
      [class='wood'],[class='scrub'],[class='grass'] {
        polygon-opacity: 0.7;  
        [zoom=7] { polygon-opacity: 0.2; }
        [zoom=8] { polygon-opacity: 0.5; }   
      }
    }
 }

// Parks //
#landuse {
  [class='park'] { 
    polygon-fill: @paper;
    [zoom=7] { polygon-opacity: 0.2; }
    [zoom=8] { polygon-opacity: 0.5; }
    [zoom=9] { polygon-opacity: 0.9; }
  }
}

// Pitches //
  // Low zoom
 #landuse {
  [class='pitch'][zoom<=17] {
    polygon-fill: @paper;
    line-color: lighten(@paper, 10);
    line-width: 1;
    [zoom=17] { line-width: 1.5; }
  }
}
  // High zoom
 #landuse {
  [class='pitch'][zoom>=18] {
    ::wall {
    line-color: lighten(@paper, 10);
    line-width: 3;
    line-join: round;
    line-cap: round;
    polygon-fill: lighten(@paper, 10);
  }    
    ::roof {
      polygon-fill: @landfeature;
      polygon-geometry-transform: translate(-2,-2);
      polygon-clip: false;
      [zoom>=15] {  
      line-width: 1;
      line-color: lighten(@paper, 10);
      line-geometry-transform:translate(-2,-2);
      line-clip:false;
      }
    }   
  }
}

// All other landuse //
#landuse {
  [class='sand'] {
    polygon-fill: @sand;
  }
  [class='school'] {
    polygon-fill: @school;
    line-color: @gray-3;
  }
  [class='cemetery'] {
    polygon-fill: @cemetery;
  }
  [class='hospital'] {
    polygon-fill: @hospital;
    line-color: @gray-3;
  }
  [class='parking'] {
    polygon-fill: @parking;
    [zoom>=16] {
      line-color: @building_line;
      line-dasharray: 5,2;
      line-width: 0.5;  
      [zoom>=17] { line-width: 1; }
    }
  }
  [class='industrial'] {
    polygon-fill: @industrial;
  }
  [class='piste'] {
    polygon-fill: @piste;
  }
  [class='glacier'] {
    polygon-fill: @glacier;
  }
}
