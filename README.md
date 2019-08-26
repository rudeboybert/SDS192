# SDS 192

Source code to generate the course webpage for 2019-09 Fall Smith College SDS
192: Introduction to Data Science <https://rudeboybert.github.io/SDS192/>. Most
of the content is in either:

* `_site.yml`: Set theme of webpage along with links in navigational bar.
* `index.Rmd`: A single Moodle-style page that lists all announcements and lectures notes in reverse-chronological order.
* `PS.Rmd`: All problem sets/homeworks.
* `projects.Rmd`: Details on the mini-projects and term project.
* `syllabus.Rmd`: Course info/description, topics, materials, evaluation, and expectations.


## How to build this webpage

This webpage is built/compiled using [R Markdown
Websites](https://rmarkdown.rstudio.com/lesson-13.html). To compile this
webpage for yourself, do the following:

1. Get the contents of this directory/repository:
    + If you are not familiar with GitHub, click the green "Clone or download" button on the top-right -> Download ZIP -> Unzip `SDS192-master.zip`.
    + If you are familiar with GitHub, clone this repository.
1. Double-click the `SDS192.Rproj` to open RStudio.
1. If you haven't already, install the following R packages:
    * `rmarkdown` and `devtools`
    * At the top of `index.Rmd`: all CRAN R packages listed .
    * At the top of `index.Rmd`: the `emo` and `patchwork` packages must be installed from GitHub using the `devtools::install_github()` function.
1. Go to the "Build" pane of RStudio -> More -> Configure Build Tools... -> Ensure that "Project build tools" is set to "Webpage".
1. Click "Build Website". 
1. The website will display in the Viewer pane. The resulting `index.html` file and all other files for the webpage will be saved in the `docs/` folder.


## How to publish this webpage

To publish/deploy this webpage and make it viewable on the web, you need to either:

1. Copy the contents of the `docs/` folder to your personal webpage or whatever
domain hosting service you use.
1. Use [GitHub pages](https://pages.github.com/) as I do. RStudio's R Markdown Websites page gives [instructions](http://rmarkdown.rstudio.com/rmarkdown_websites.html#publishing_websites) on how.
