materialThickness=4.7; //this is in MM
cutSheetX=304.8;
cutSheetY=600;

module stockMaterial(){
		cube([cutSheetX,cutSheetY,materialThickness-.1]);
}

module shapesToBeCutOut(){
	translate([100,100,0])
		cylinder(r=20,h=materialThickness);
	translate([120,120,0])
		cylinder(r=20,h=materialThickness);
}

module cutSheet(){
	difference(){
		stockMaterial();
		shapesToBeCutOut();
	}
}

projection(cut = true) 
	cutSheet();

