# postcards

<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version/postcards)](https://CRAN.R-project.org/package=postcards)
[![R-CMD-check](https://github.com/seankross/postcards/workflows/R-CMD-check/badge.svg)](https://github.com/seankross/postcards/actions)
<!-- badges: end -->

Create simple, beautiful personal websites and landing pages using only
R Markdown.

## Installation

You can install Postcards with the following command:

``` r
install.packages("postcards")
```

Or you can install the latest development version:

``` r
remotes::install_github("seankross/postcards@main")
```

## Getting Started

Postcards includes five templates:
[Jolla](https://seankross.com/postcards-templates/jolla/),
[Jolla Blue](https://seankross.com/postcards-templates/jolla-blue/),
[Trestles](https://seankross.com/postcards-templates/trestles/),
[Onofre](https://seankross.com/postcards-templates/onofre/),
and [Solana](https://seankross.com/postcards-templates/solana/).
Each site is optimized for being displayed on desktop and mobile.
The goal of the package is to make it easy for anyone to create a single page
personal website with one R Markdown document. I hope this package can quickly
demonstrate the power and possibilities of the R and R Markdown ecosystem to 
newcomers.

To get started customizing one of these templates you should create a new
project in RStudio. Once you open RStudio: select **File**, **New Project...**, 
then select **New Directory**, and **Postcards Website**. Then you will need to
enter a directory name for your RStudio project and you can choose one of the
templates from a drop down menu.
Select **Create Project** after you choose a name for the folder that will 
contain your site. This folder will contain two important files: an R Markdown 
document with your site's content, and a sample photo that you should replace.

If you are not using RStudio or if you do not wish to create a new RStudio 
project you can create the corresponding template files using the following 
commands:

``` r
postcards::create_postcard(template = "jolla")
postcards::create_postcard(template = "jolla-blue")
postcards::create_postcard(template = "trestles")
postcards::create_postcard(template = "onofre")
postcards::create_postcard(template = "solana")
```

To compile the self contained HTML file for your site, you can use the **Knit**
button in RStudio or you can use `rmarkdown::render("index.Rmd")`. 
The HTML file can then be easily deployed to 
[GitHub Pages](https://pages.github.com/) or
[Netlify Drop](https://app.netlify.com/drop).

## The Templates

### Jolla

<p align="center"><img src="man/figures/jolla-preview.png" width="800px"></p>

```
---
title: "Tobi Burns"
image: "tobi.jpg"
links:
  - label: LinkedIn
    url: "https://linkedin.com/"
  - label: Twitter
    url: "https://twitter.com/"
  - label: GitHub
    url: "https://github.com/"
  - label: Email
    url: "mailto:email@email.com"
output:
  postcards::jolla
---
 
I am a classically trained data scientist living in the San Francisco Bay Area. 
Currently I work on the Oculus team at Facebook. I love talking about baseball, 
true crime podcasts, and causal inference.
```

### Jolla Blue

<p align="center"><img src="man/figures/jolla-blue-preview.png" width="800px"></p>

```
---
title: "Xiang Guo"
image: "xiang.jpg"
links:
  - label: LinkedIn
    url: "https://linkedin.com/"
  - label: Twitter
    url: "https://twitter.com/"
  - label: GitHub
    url: "https://github.com/"
  - label: Email
    url: "mailto:email@email.com"
output:
  postcards::jolla_blue
---
 
Raised in New Jersey by two lawyers, I am now an aspiring data artist and 
competitive rock climber. I moved to Seattle to fly floatplanes, but I got 
caught up in the startup world. Send me a WhatsApp message if you have good 
turnip prices.
```

### Trestles

<p align="center"><img src="man/figures/trestles-preview.png" width="800px"></p>

```
---
title: "Frank Hermosillo"
image: "frank.jpg"
links:
  - label: LinkedIn
    url: "https://linkedin.com/"
  - label: Twitter
    url: "https://twitter.com/"
  - label: GitHub
    url: "https://github.com/"
  - label: Email
    url: "mailto:email@email.com"
output:
  postcards::trestles
---
 
## Bio

Frank Hermosillo studies neural networks and their applications at Google 
Brain. His research focuses on differentiable network pruning approximation and 
decentralized gradient inversion mechanics. He frequently collaborates with 
researchers who study machine learning, computer vision, and cognitive science.
His work has been featured in WIRED, The Atlantic, Newsweek, and The New York 
Times Magazine.

## Education

**Massachusetts Institute of Technology** | Cambridge, MA

Ph.D. in Computer Science | September 2009 - May 2014

**The University of California, Berkeley** | Berkeley, CA

B.S. in Computer Science | September 2005 - May 2009

## Experience

**Google Brain** | Principal Investigator | January 2018 - Present

**Netflix** | Research Scientist | June 2014 - December 2017
```

### Onofre

<p align="center"><img src="man/figures/onofre-preview.png" width="800px"></p>

```
---
title: "Willkommen!"
image: "herzl.jpg"
color1: "#5A59A3"
color2: "#C66060"
angle: 130
links:
  - label: YouTube
    url: "https://youtube.com/"
  - label: Vimeo
    url: "https://vimeo.com/"
  - label: Twitter
    url: "https://twitter.com/"
  - label: Email
    url: "mailto:email@email.com"
output:
  postcards::onofre
---
 
György Herzl is a filmmaker and computational storyteller based in Leipzig,
Germany. Their work has been featured at the Festival do Rio, Internationale
Filmfestspiele Berlin, Kunsthalle Basel, and the New Museum of Contemporary Art
in New York City. "ГУМ" is their latest project which examines the rise of
consumerism in post-Soviet republics.
```

### Solana

<p align="center"><img src="man/figures/solana-preview.png" width="800px"></p>

```
---
title: "Sigríður Björndotter"
image: "sigridur.jpg"
links:
  - label: Resume
    url: "https://linkedin.com/"
  - label: Blog
    url: "https://medium.com/"
  - label: SoundCloud
    url: "https://soundcloud.com/"
  - label: Twitter
    url: "https://twitter.com/"
output:
  postcards::solana
---
 
## Bio

Sigríður Björndotter is a musician, vocalist, and live entertainment consultant
living in Buenos Aires, Argentina. Her writing has appeared in Rolling Stone,
Billboard, and NME, and she is a frequent contributor to National Public Radio's 
*All Songs Considered*. She has been raising Pembroke Welsh Corgis since the age
of six, and she has collected Casio watches since the age of ten.

## Education

**INSEAD** | Fontainebleau, France

M.B.A. | August 2014 - June 2015

**The Juilliard School** | New York, NY

B.F.A. in Music Performance | August 2005 - May 2009

## Experience

**Freelance** | Live Entertainment Consultant | August 2018 - Present

**Cercle** | Producer | August 2018 - Present

**National Public Radio** | Producer | May 2015 - July 2018

**NME Magazine** | Editor | July 2014 - July 2016

**Iceland Symphony Orchestra** | Cellist | October 2009 - June 2014
```

## Troubleshooting

Most issues that people have using this package are related their installation
Pandoc, software that R Markdown relies on.
Currently Postcards works best with Pandoc version 2.8 or greater, although we
are working on better functionality for earlier versions of Pandoc. 
You can check which version of Pandoc you have installed with the following 
command:

``` r
rmarkdown::pandoc_version()
```

If you have an earlier version of Pandoc installed we recommend you 
[install the latest version of Pandoc](https://pandoc.org/installing.html) and
then run the command:

``` r
rmarkdown::find_pandoc(cache = FALSE)
```

If you do not see that the new Pandoc version has been installed, you may need
to use RStudio and 
[install the latest preview release of RStudio](https://www.rstudio.com/products/rstudio/download/preview/).
If you are still encountering error messages after trying the above please open
an issue.

## Code of Conduct

Please note that the postcards project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.
