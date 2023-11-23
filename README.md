# coastmaps

> Basemaps of coastal BC ready for the mappeR

`coastmaps` brings together basemaps useful for R users making maps of coastal British Columbia. Finding a good basemap can be the most difficult part of making a map in `R`.

`coastmaps` makes that easy. The package loads basemaps compatible with the `sf` ("simple features") geoprocessing package. A small number of geoprocessing functions are also included to support users.

Basemaps currently available in `coastmaps`:

- `nepac`: full-resolution global basemap by [Wessel and Smith](https://www.soest.hawaii.edu/pwessel/gshhg/), cropped to the Pacific coast of British Columbia and Washington, including parts of Alaska and California (useful for broader inset maps showing larger spatial context). `nepac` is the same basemap used by Rowan Haigh's [PBSmapping package](https://cran.r-project.org/web/packages/PBSmapping/index.html). The only difference is that `coastmaps::nepac` is compatible with the `sf` package, without additional geoprocessing by the user.

- `hakai`: very high-resolution basemap of the British Columbia coast from the Hakai Institute. The original shapefile is available from this [Hakai GitHub repository](https://github.com/HakaiInstitute/hakai_guide_to_r/tree/master/data).

Other basemaps should be added, either through the lower resolution versions of `nepac` or with `RNaturalEarth`. 

Other data layers maybe useful to add. For example, the Canada/USA border on both land and in the ocean, Canadian EEZ, Fisheries and Oceans Canada Pacific Fisheries Management Areas, a BC hillshading layer.



