# defineRegion() # get the area of interest you want!

#library(sf)
#library(ggplot2)

# a basic plot function would be good to for being able to define region

defineRegion <- function(basemap, xmin, xmax, ymin, ymax) {
  ext <- c(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)
  bound.box <- sf::st_bbox(ext)
  crop <- sf::st_crop(x = basemap, y = bound.box)
  # need to name crop object
}

hakai.crop <- defineRegion(basemap = hakai, 
                           xmin = -124.8,xmax = -125.8, 
                           ymin = 48.6, ymax = 49) # note the warning
ggplot() +
  geom_sf(data = hakai.crop) +
  theme_bw()
