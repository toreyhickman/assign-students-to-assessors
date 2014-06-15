# Assign Students to Assessors

## Overview
Given a Dev Bootcamp cohort name and the names of assessors, this program will pull a list of students in the cohort and assign each student to an assessor.  Assignments are written to a markdown file named for the cohort (e.g., *Nighthawks 2014.md*) and located in the *assessor_assignments_for_cohorts* directory. The document is formatted as in Figure 1.


```
## Torey
- John Smith
- Jane Doe

## Kevin
- John Doe
- Jane Smith
```
*Figure 1*.  Example output.


## Dependencies
This program utilizes Dev Bootcamp's API for retrieving cohort and student data.  As such, users will need to have an API key—available to authorized users from [developer.devbootcamp.com](http://developer.devbootcamp.com).  The program utilizes the [dbc-ruby gem](https://rubygems.org/gems/dbc-ruby) for making requests against the API.

## Setup
- Clone this repository.
- From the command line run `bundle install`.
- Make your DBC API key available. The program will attempt to access your DBC API key as the DBC_API_KEY environment variable:

  ```ruby
  DBC::token = ENV["DBC_API_KEY"]
  ```

## Running the Program
Run this program from the command line, passing in both the name of the cohort and the names of the assessors.  For example, if you wanted to assign the 2014 Nighthawks to assessors Torey, Kevin, and Alyssa, run ...

```
ruby assign_students.rb "Nighthawks 2014" Torey Kevin Alyssa
```
