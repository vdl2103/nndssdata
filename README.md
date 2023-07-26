
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Description of package

This package provides users with weekly case counts for six waterborne
infections common in the US for 48 contiguous states from 1996 through
2018. The data come from the National Notifiable Disease Surveillance
System (NNDSS), which is maintained by CDC.

## Weekly case counts by state

The first dataset included in the package is for state level case
counts.

``` r
data("state_nndss_data")
head(state_nndss_data)
#>   year week             pathogen annual_cumulative_cases current_week_cases
#> 1 1996    1      ecoli_infection                       0                  0
#> 2 1996    1 legionnaires_disease                       0                  0
#> 3 1996    2      ecoli_infection                       0                  0
#> 4 1996    2 legionnaires_disease                       0                  0
#> 5 1996    3      ecoli_infection                       0                  0
#> 6 1996    3 legionnaires_disease                       0                  0
#>   state       date
#> 1    NY 1995-12-31
#> 2    NY 1995-12-31
#> 3    NY 1996-01-07
#> 4    NY 1996-01-07
#> 5    NY 1996-01-14
#> 6    NY 1996-01-14
```

The data frame has the following columns:

\-‘year’: Year for given case count -‘week’: Epidemiological week of the
year for given case count -‘pathogen’: Count for one of six specific
waterborne pathogens -‘annual\_cumulative\_cases": Number of cases in
that state for that year to date -’current\_week\_cases’: Number of
cases that week for a given state -‘state’: State for given case count
-‘date’: Calendar date for beginning of epidemiological week

## Weekly case counts by geographic region

The second datatset included in the package is for geographic region
level case counts.

``` r
data("region_nndss_data")
head(region_nndss_data)
#>   year week        pathogen annual_cumulative_cases current_week_cases
#> 1 1996   52 ecoli_infection                    4383                 21
#> 2 1996   52 ecoli_infection                     543                  1
#> 3 1996   52 ecoli_infection                     269                  2
#> 4 1996   52 ecoli_infection                    1010                  3
#> 5 1996   52 ecoli_infection                     964                  2
#> 6 1996   52 ecoli_infection                      58                  0
#>                state       date
#> 1                usa 1996-12-22
#> 2        new_england 1996-12-22
#> 3       mid_atlantic 1996-12-22
#> 4 east_north_central 1996-12-22
#> 5 west_north_central 1996-12-22
#> 6        new_england 1996-12-22
```

Most of the columns in the data frame are the same as listed above
except:

\-‘annual\_cumulative\_cases": Number of cases in that geographic region
for that year to date -’current\_week\_cases’: Number of cases that week
for a given geographic region -‘state’: geographic region in the US for
given case count
