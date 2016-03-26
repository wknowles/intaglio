// Graticules //

#ne_10m_graticules_10[zoom>=2] {
  line-color: @seafeature;
  [zoom=2] { line-width: 0.2;}
  [zoom=3] { line-width: 0.2;}
  [zoom=4] { line-width: 0.4;}
  [zoom=5] { line-width: 0.8;}
  [zoom=6] { line-width: 1.2;}
  [zoom=7] { line-width: 1.6;}
}

#ne_10m_graticules_5[zoom>=5] {
  line-color: @seafeature;
  [zoom=5] { line-width: 0.2;}
  [zoom=6] { line-width: 0.4;}
}

#ne_10m_graticules_1[zoom>=7] {
  line-color: @seafeature;
  [zoom=7] { line-width: 0.4;}
  [zoom=8] { line-width: 0.6;}
  [zoom=9] { line-width: 0.8;}
  [zoom=10] { line-width: 1;}
  [zoom=11] { line-width: 1.2;}
  [zoom=12] { line-width: 1.6;}
}

// bathymetry // [zoom<=10]

#ne_10m_bathymetry {
  ::shape {
    line-join: round;
    line-color: fadeout(@seafeature, 70%);
    line-width: 0.4;   
  }
}

// Water buffers //

 #buffer_10km [zoom>=5][zoom<=8]{
  line-color: @seafeature;
  line-width: 2;
}

#ne10m_buffer_1 [zoom>=2][zoom<=5]{
  line-color: @seafeature;
  line-width: 1;
}

#ne10m_buffer_2 [zoom>=3][zoom<=5]{
  line-color: fadeout(@seafeature, 20%);
  line-width: 0.76923;
}

#ne10m_buffer_3 [zoom>=2][zoom<=5]{
  line-color: fadeout(@seafeature, 40%);
  line-width: 0.59172;
}

#ne10m_buffer_4 [zoom>=3][zoom<=5]{
  line-color: fadeout(@seafeature, 60%);
  line-width: 0.45517;
}

#ne10m_buffer_5 [zoom>=2][zoom<=5]{
  line-color: fadeout(@seafeature, 80%);
  line-width: 0.35013;
}

#ne_10m_buffer_1_1[zoom>=5][zoom<=8] {
  line-color: fadeout(@seafeature, 10%);
  line-width: 1;
}

#ne_10m_buffer_1_2[zoom>=6][zoom<=8] {
  line-color: fadeout(@seafeature, 20%);
  line-width: 0.76923;
}

#ne_10m_buffer_1_3[zoom>=5][zoom<=8] {
  line-color: fadeout(@seafeature, 40%);
  line-width: 0.59172;
}

#ne_10m_buffer_1_4[zoom>=6][zoom<=8] {
  line-color: fadeout(@seafeature, 60%);
  line-width: 0.45517;
}

#ne_10m_buffer_1_5[zoom>=5][zoom<=8] {
  line-color: fadeout(@seafeature, 80%);
  line-width: 0.35013;
}