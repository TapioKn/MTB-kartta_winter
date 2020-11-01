/* Line type constructs and similar elements */
#constructs_line {
  [type='hedge'][zoom>=15] {
    line-color: @hedge;
    [zoom=15]  { line-width: 1; }
    [zoom=16]  { line-width: 2; }
    [zoom>=17] { line-width: 2.5; }
  }
  [type='wall'][zoom>=15] {
    line-width: 1;
    line-color: darken(@building, 10%);
    [zoom>=15] { line-width: 1.5; }
  }
  [type='fence'][zoom>=15] {
    line-width: 0.75;
    line-color: darken(@building, 10%);
    [zoom>=15] { line-width: 1; }
  }
  [type='minor_line'][zoom>=14] {
    line-width: 1;
    line-color: darken(@building, 10%);
    line-opacity: 0.7;
  }
  [type='major_line'][zoom>=13] {
    line-width: 1;
    line-color: darken(@building, 10%);
    line-opacity: 0.7;
  }
}

#cliffs[zoom>=14] {
  line-pattern-file: url("images/natural_cliff.png");
}

/* Point type physical elements, both constructs and natural */
#constructs_point {
  [power='pole'][zoom>=14] {
    marker-file: url('images/power_pole.png');
  }
  [aerialway='pylon'][zoom>=13] {
    marker-file: url('images/aerialway_pylon.png');
  }
  [aerialway='station'][zoom>=13] {
    marker-file: url('images/aerialway_station.png');
  }
  [power='tower'][zoom>=13] {
    marker-file: url('images/power_tower.png');
  }
  [barrier='gate'][zoom>=15] {
    marker-allow-overlap: true;
    marker-file: url('images/barrier_gate.png');
  }
  [natural='peak'][zoom>=14] {
    marker-allow-overlap: true;
    marker-file: url('images/natural_peak.png');
    text-name: "[name]";
    text-placement: point;
    text-allow-overlap: true;
    text-dy: 8;
    text-face-name: @sans_lt;
    text-size: 10;
    [zoom<=14] { text-size: 9; }
    text-wrap-width:30;
    text-fill: @rock * 0.2;
    text-halo-fill: lighten(@rock, 80%);
    text-halo-radius:1;
  }
  [leisure='firepit'][zoom>=13] {
    marker-allow-overlap: true;
    marker-file: url('images/leisure_firepit.svg');
    marker-fill: @parking-label; //#0091da;
    marker-width: 12.0;
    marker-height: 12.0;
    [zoom>=14] { marker-width: 13.0;  marker-height: 13.0;}
    [zoom>=15] { marker-width: 14.0;  marker-height: 14.0;}
    [zoom>=16] { marker-width: 15.0;  marker-height: 15.0;}
  }
  [amenity='shelter'][zoom>=10] {
    marker-allow-overlap: true;
    marker-file: url('images/amenity_shelter.svg');
    marker-fill: @parking-label; //#0091da;
    marker-width: 13.0;
    marker-height: 13.0;
    [zoom>=14] { marker-width: 15.0;  marker-height: 15.0;}
    [zoom>=15] { marker-width: 16.0;  marker-height: 16.0;}
    [zoom>=16] { marker-width: 17.0;  marker-height: 17.0;}
    [shelter_type='public_transport'] {marker-opacity: 0;}
    [zoom>=13] {
      text-name: "[name]";
      text-placement: point;
      text-allow-overlap: true;
      text-dy: 8;
      text-face-name: @sans;
      text-size: 10;
      [zoom<=14] { text-size: 9; }
      text-wrap-width:30;
      text-fill: @parking-label * 0.6;
      text-halo-fill: lighten(@parking-label, 90%);
      text-halo-radius:1;
      [shelter_type='public_transport'] {text-opacity: 0;}
    }
  }

}
