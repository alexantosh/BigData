# 1.1 Choose Lex favorite working directory
setwd('B:/Akad/B5/BigData')

#read file and take a peek at the values 
library(readr)
UNdata <- read.csv('UNdata_Export_20171026_130851047.csv', stringsAsFactors = FALSE)

## Parsed with column specification:
## cols(
##   `Country or Area` = col_character(),
##   Year = col_integer(),
##   Count = col_integer(),
##   Rate = col_double(),
##   Source = col_character(),
##   `Source Type` = col_character()
## )

#Check the dimensions of the data
dim(UNdata)  
# yields 1719 6 implying 1719 rows and 6 columns 


#Visualise the data using view() method
# View(UNdata)
#This displayed the contents of the UNData export file in tabular form and indeed it is 1719x6


#Glimpse the data
#glimpse(UNdata)  --> gives error

#First we need to import the dplyr package
library(dplyr)
glimpse(UNdata)

# yields the results below
# > glimpse(UNdata)
# Observations: 1,719
# Variables: 6
# $ Country.or.Area <chr> "Afghanistan", "Albania", "Albania", "Albania", "Albania", "Albania...
# $ Year            <int> 2008, 2010, 2009, 2008, 2007, 2006, 2005, 2004, 2003, 2002, 2001, 2...
# $ Count           <int> 712, 127, 85, 93, 105, 87, 131, 119, 144, 231, 208, 275, 496, 573, ...
# $ Rate            <dbl> 2.4, 4.0, 2.7, 2.9, 3.3, 2.8, 4.2, 3.8, 4.6, 7.5, 6.8, 9.0, 16.1, 1...
# $ Source          <chr> "WHO", "CTS/Transmonee", "CTS/Transmonee", "CTS/Transmonee", "CTS/T...
# $ Source.Type     <chr> "PH", "CJ", "CJ", "CJ", "CJ", "CJ", "CJ", "CJ", "CJ", "CJ", "CJ", "...

#Summary of the data
summary(UNdata)

#Yields
# Country.or.Area         Year          Count            Rate            Source         
# Length:1719        Min.   :1995   Min.   :    0   Min.   :  0.000   Length:1719       
# Class :character   1st Qu.:2000   1st Qu.:   46   1st Qu.:  1.600   Class :character  
# Mode  :character   Median :2004   Median :  240   Median :  4.200   Mode  :character  
# Mean   :2003   Mean   : 2183   Mean   :  9.497                     
# 3rd Qu.:2007   3rd Qu.:  879   3rd Qu.: 11.100                     
# Max.   :2011   Max.   :45559   Max.   :139.100                     
# Source.Type       
# Length:1719       
# Class :character  
# Mode  :character 

# Visualise Data using the ggplot function
#Load the library
library(ggplot2)
first_plot = ggplot(data = UNdata, aes(x=Year, y=Rate))
first_plot + geom_bar(stat="identity") #bar graph
first_plot + geom_point(stat = "identity") #point graph ... You get the idea
