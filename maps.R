library(tmaptools)
geocode_OSM("133 Flat Hills Rd, Amherst MA, 01002, USA")



# Example 1:
library(leaflet)
leaflet() %>%
  addTiles() %>%
  addMarkers(lng=-72.6419889, lat=42.3177692)

# Example 2:
library(tidyverse)
library(fivethirtyeight)
library(maps)
library(sf)

USA_sf <- maps::map("state", plot = FALSE, fill = TRUE) %>%
  sf::st_as_sf() %>%
  sf::st_transform(crs = 4326)

pres_2016_trail_sf <- pres_2016_trail %>%
  sf::st_as_sf(coords = c("lng", "lat"), crs = 4326)

ggplot() +
  geom_sf(data = USA_sf) +
  geom_sf(data = pres_2016_trail_sf, aes(col = candidate), size = 2) +
  facet_wrap(~candidate)
