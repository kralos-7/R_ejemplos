library(sp);

mexico <- readRDS("MEX_adm2.rds");

mapaoaxaca <- mexico[mexico@data$NAME_1 == "Oaxaca",];

dataoaxaca <- data.frame(mapaoaxaca);

mapaoaxaca$municipios <- factor(mapaoaxaca$NAME_2);

col <- rainbow(length(levels(mapaoaxaca$municipios)));

spplot(mapaoaxaca, "municipios", col.regions = col, main = "Oaxaca");

dev.print(png, file = "mapaOaxaca.png", width = 1024, height = 768)

dev.off ();
