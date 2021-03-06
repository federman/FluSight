% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/score_entry.R
\name{score_entry}
\alias{score_entry}
\title{Scores an entry}
\usage{
score_entry(entry, truth)
}
\arguments{
\item{entry}{A valid entry data.frame with columns location, target,
bin_start_incl, value, and forecast week}

\item{truth}{A data.frame containing all true values with columns 
location, target, forecast_wk, and bin_start_incl. If multiple bins are 
considered correct for a given target, all correct bins must be included
here.}
}
\value{
A data.frame of scores for each target
}
\description{
Scores an entry based on the observed truth provided. \code{\link{verify_entry}}
should be run prior to scoring, along with \code{\link{remove_invalid}} if 
invalid probabilities are detected.
}
\examples{
scores <- score_entry(full_entry_week, truth_1516)
scores <- score_entry(full_entry_hosp_score, hosp_truth_1617)
scores <- score_entry(full_entry_state_score, state_truth_1617)

}
\seealso{
\code{\link{expand_truth}} \code{\link{verify_entry}} \code{\link{remove_invalid}}
}
