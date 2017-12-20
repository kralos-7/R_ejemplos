library(sp);

mexico <- readRDS("MEX_adm2.rds");

mapamexico <- mexico[mexico@data$NAME_0 == "Mexico",];

datamexico <- data.frame(mapamexico);

mapamexico$estados <- factor(mapamexico$NAME_1);

col <- rainbow(length(levels(mapamexico$estados)));

spplot(mapamexico, "estados", col.regions = col, main = "Estados Unidos Mexicanos");

dev.print(png, file = "mapaMexico.png", width = 1024, height = 768)

dev.off ();
