## Data processing
# load shapefilesfiles, crop/ensure correct projection/etc, save as .rda object

# library usethis

## Load shapefiles
gshhg <- sf::read_sf("data-raw/GSHHG/GSHHS_f_L1.shp") # multipolygon
hakai <- sf::read_sf("data-raw/Hakai/COAST_TEST2.shp") # polygon

ggplot2::ggplot() +
  ggplot2::geom_sf(data = gshhg) +
  coord_sf
# need to crop 



ggplot2::ggplot() +
  ggplot2::geom_sf(data = hakai) +
  ggplot2::coord_sf(crs = 4326)

# crop GSHHG shapefile (whole globe currently)
# should GSHHG be one multipolygon


# don't need to crop Hakai

# check projections
st_crs(hakai) # WGS 84, nice

## Save as .rda ready to be loaded with data()
usethis::use_data(hakai, overwrite = TRUE)

# save(hakai, "data/hakai.rda")
