library(tidyverse)
library(httr)
library(jsonlite)

base_url <- 'https://api.meetup.com'
api_key <- read_lines('.meetup')

group_url <- 'NightClazz-Zenika-Bordeaux'

get_past_events <- function(group_name) {
    r <- GET(paste(base_url, group_name, 'events', sep='/'), query = list(key = api_key, status = 'past'))
    content(r)
}

past_events <- get_past_events(group_url)

past_events
