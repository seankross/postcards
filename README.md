# postcards

Create simple, beautiful personal websites and landing pages using only
R Markdown.

## Installation

``` r
remotes::install_github("seankross/postcards")
```

## Getting Started

Postcards includes four templates:
[Jolla](https://seankross.com/postcards-templates/jolla/),
[Jolla Blue](https://seankross.com/postcards-templates/jolla-blue/),
[Trestles](https://seankross.com/postcards-templates/trestles/),
and [Onofre](https://seankross.com/postcards-templates/onofre/).
Each site is optimized for being displayed on desktop and mobile.
To get started customizing one of these templates you should use
RStudio. Once you open RStudio: select **File**, **New File**, **R Markdown**, 
then select **From Template** to choose which template you want to start with.
Select **OK** after you choose a name for the folder that will contain your 
site. This folder will contain two files: an R Markdown document with your
site's content, and a sample photo that you should replace.

## The Templates

### Jolla

<p align="center"><img src="man/figures/jolla-preview.png" width="800px"></p>

```
---
title: "Tobi Burns"
image: "tobi.jpg"
links:
  - LinkedIn: "https://linkedin.com/"
  - Twitter: "https://twitter.com/"
  - GitHub: "https://github.com/"
  - Email: "mailto:email@email.com"
output:
  postcards::jolla
---
 
I am a classically trained data scientist living in the San Fransisco Bay Area. 
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
  - LinkedIn: "https://linkedin.com/"
  - Twitter: "https://twitter.com/"
  - GitHub: "https://github.com/"
  - Email: "mailto:email@email.com"
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
  - LinkedIn: "https://linkedin.com/"
  - Twitter: "https://twitter.com/"
  - GitHub: "https://github.com/"
  - Email: "mailto:email@email.com"
output:
  postcards::trestles
---
 
## Bio

Frank Hermosillo studies neural networks and their applications at Google 
rain. His research focuses on differentiable network pruning approximation and 
decentralized gradient inversion mechanics. He frequently collaborates with researchers who study machine learning, computer vision, and cognitive science.
His work has been featured in WIRED, The Atlantic, Newsweek, and The New York 
Times Magazine.

## Education

**Massachusetts Institute of Technology** | Cambridge, MA

Ph.D. in Computer Science | September 2009 - May 2014

**The University of California, Berkeley** | Berkeley, CA

B.S. in Computer Science | September 2005 - May 2009

## Experience

**Google Brain** | Principle Investigator | January 2018 - Present

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
  - YouTube: "https://youtube.com/"
  - Vimeo: "https://vimeo.com/"
  - Twitter: "https://twitter.com/"
  - Email: "mailto:email@email.com"
output:
  postcards::onofre
---
 
György Herzl is a filmmaker and computational storyteller based in Leipzig,
Germany. Their work has been featured at the Festival do Rio, Internationale
Filmfestspiele Berlin, Kunsthalle Basel, and the New Museum of Contemporary Art
in New York City. "ГУМ" is their latest project which examines the rise of
consumerism in post-Soviet republics.
```
