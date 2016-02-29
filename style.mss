// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';
@serif: "IM FELL Great Primer PRO Regular", "Arial Unicode MS Regular";
@serif_italic: "IM FELL Great Primer PRO Italic", "Arial Unicode MS Regular";

// Common Colors //
@land: #fff;
@paper: #f6efdd;
@seafeature: #958B82;
@water: #8A7052;
@landfeature: #8A7052;
@ink: #4F3725;

////////////////////////////////////////////////
// COLORS //
////////////////////////////////////////////////

@black: #222;
@gray-1: #F5F5F5;
@gray-2: #E5E5E5;
@gray-3: #CCC;
@gray-4: #999;
@gray-5: #666;

@blue: #21B5EA;
@blue_lt: lighten(@blue,10);
@yellow: #fcf302;
@blue-gray: desaturate(@blue, 40);
@green: #05e24e;
@green-desat: desaturate(lighten(@green, 30), 45);

// Landuse colors //

// Core landuse colors
@water: desaturate(@blue, 45);
@land: @gray-2;
@park: @green;
@park-opaque: @green-desat;
@sand: saturate(mix(@yellow, @land, 15), 10);
@snow: lighten(desaturate(@blue, 45), 35);

// All these variables are based off of core landuse colors
@cemetery:          mix(@park, @building, 30);
@wooded:            mix(@sand, @green-desat, 30);
@pitch:             @park;
@sports:            @park;
@hospital:          darken(@land,6);
@school:            darken(@land,8);
@industrial:        darken(@land, 10);
@aeroway:           lighten(@land,4);
@glacier:           darken(saturate(@snow, 80), 20);
@parking: lighten(@building, 1); // temp, need to change
@rock:              @gray-5;

@building:          @land;
@building_line:     @gray-3;

@fence:             @building_line;
@gate:              @gray-4;
@cliff:             mix(@sand, @land, 30) * 0.9;

// Landcover //
@wooded: @wooded;
@scrub: lighten(@wooded, 3);
@grass: lighten(@wooded, 6);
@crop: lighten(@wooded, 9);
@snow: @snow;

// Landuse //
@wooded2: mix(@sand,@park, 40);
@grass2: lighten(@wooded2, 6);
@scrub2: lighten(@wooded2, 9);

// Road colors //
@rail:              lighten(@gray-3, 2);
@motorway_fill:     lighten(@land, 4);
@motorway_case:     darken(@gray-3, 1);
@piste: 			@glacier;

// Label colors //
@place_halo: fadeout(@paper, 40);

@country_text: @black;
@country_text_high: darken(@land, 40);
@country_halo: fadeout(@paper, 80);

@state_text:@gray-5;
@state_halo: fadeout(@paper, 90);

@city_text: @black;
@city_text_high:@gray-4;
@city_halo: fadeout(#fff, 90);
@town_text: @black;
@town_text_high: @city_text_high;
@town_halo: fadeout(#fff, 90);
@village_text: @black;
@village_text_high: @city_text_high;
@village_halo: fadeout(#fff, 90);
@neigh_text: @black;
@neigh_text_high:@city_text_high;
@neigh_halo: fadeout(#fff, 90);

@marine_text: lighten(desaturate(@blue, 20), 10);

@poi_text: darken(@gray-4, 5);
@poi_halo: fadeout(#fff, 95);
@peak_text: @gray-5;
@peak_halo: park_halo;
@park_text: darken(@green-desat, 40);
@park_halo: fadeout(#fff, 70);
@transport_text: @gray-5;
@transport_halo: fadeout(#fff, 90);

@road_text: darken(@gray-4, 3);
@road_text_high:@gray-5;
@road_text_high2:@black;
@road_halo: #fff;
@motorway_halo: @motorway_fill;

// Admin boundaries
@admin_2: darken(@land, 15);
@admin_2_hi: darken(@admin_2, 10);
@admin_2_hi2: darken(@admin_2, 25);
@admin_3: darken(@admin_2, 15);
@admin_3_hi: darken(@admin_2, 25);


Map { 
  background-color: lighten(@paper, 6);
  font-directory: url("fonts/");
}