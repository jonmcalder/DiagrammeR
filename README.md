# DiagrammeR

[![Project Status: WIP - Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)

This is a course for use with the 
[swirl R package](https://cran.r-project.org/web/packages/swirl/index.html). 
swirl is a platform for learning (and teaching) statistics and R interactively 
via the R console.

For more information regarding swirl, visit the 
[swirl website](http://swirlstats.com) or the 
[swirl GitHub repository](https://github.com/swirldev/swirl).

## Installation

First make sure you have swirl installed:
 
 ```
install.packages("swirl")
```

Or alternatively get the latest development version:
 
 ```
install.packages("devtools")
devtools::install_github("swirldev/swirl", ref = "dev")
```

Then to install this course and get started simply run:
 
 ```
library(swirl)
install_course_github("jonmcalder", "DiagrammeR")
swirl()
```

## Overview

The excellent [DiagrammeR](http://rich-iannone.github.io/DiagrammeR/) package, 
is a tool for producing diagrams and network graphs in R. There is very good 
documentation available for the package (at the above link), but learning by 
doing is often best and that's where swirl thrives!  

This course will guide you through some of the basics of DiagrammeR and give you 
some hands on experience with the package. Hopefully this will serve as a great 
springboard for you so that you can produce all kinds of wonderful diagrams in 
future.

## Contribute

At the moment this course is still very much a work in progress but please 
feel free to give it a try in it's current state and report any problems you 
have or leave suggestions for improvement on the 
[issues page](https://github.com/jonmcalder/DiagrammeR/issues) as you work 
through the lessons.

If you are able to submit a pull request that would be even better! :-)

## Thanks

Thanks to the swirl developers 
@[ncarchedi](https://github.com/ncarchedi), 
@[seankross](https://github.com/seankross), and 
@[WilCrofter](https://github.com/WilCrofter) as well as many others who have 
contributed code and/or learning content to swirl. 

I would like to commend them for the excellent documentation for swirl and 
swirlify as these are essential for anyone looking to get started. 

And of course big thanks to @[rich-iannone](https://github.com/rich-iannone), 
the creator of the DiagrammeR package, who also sets a really high standard with 
the awesome documentation for DiagrammeR.