materialThickness=4.7; //this is in MM
cutSheetX=304.8;
cutSheetY=600;

module cutSheet(){
	cube([cutSheetX,cutSheetY,materialThickness]);
	
}

cutSheet();