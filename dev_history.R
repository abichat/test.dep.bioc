library(devtools)

# use_build_ignore("dev_history.R")

# use_mit_license()

# use_readme_rmd()

# use_git()

# use_r("fun_bioc")

# use_github_action_check_standard()


####

devtools::load_all()
devtools::document()
attachment::att_amend_desc()

usethis::use_tidy_description()

devtools::run_examples()

devtools::check()


####

devtools::install(upgrade = "never")
rmarkdown::render("README.Rmd"); file.remove("README.html")
devtools::install(upgrade = "never")
