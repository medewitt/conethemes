## code to prepare `logo` dataset goes here

download.file("https://www.conehealth.com/app/files/public/9889/CH-Logo.svg",
              destfile = here::here("inst", "cone_logo.svg"))

usethis::use_data("logo")
