% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/credentials_gce.R
\name{credentials_gce}
\alias{credentials_gce}
\title{Get a token for Google Compute Engine}
\usage{
credentials_gce(scopes = NULL, service_account = "default", ...)
}
\arguments{
\item{scopes}{A character vector of scopes to request. Pick from those listed
at \url{https://developers.google.com/identity/protocols/googlescopes}.

For certain token flows, the
\code{"https://www.googleapis.com/auth/userinfo.email"} scope is unconditionally
included. This grants permission to retrieve the email address associated
with a token; gargle uses this to index cached OAuth tokens. This grants no
permission to view or send email. It is considered a low value scope and
does not appear on the consent screen.}

\item{service_account}{Name of the GCE service account to use.}

\item{...}{Additional arguments passed to all credential functions.}
}
\value{
A \code{\link[=GceToken]{GceToken()}} or \code{NULL}.
}
\description{
Uses the metadata service available on GCE VMs to fetch an access token.
}
\examples{
\dontrun{
credentials_gce()
}
}
\seealso{
\url{https://cloud.google.com/compute/docs/storing-retrieving-metadata}

Other credential functions: \code{\link{credentials_app_default}},
  \code{\link{credentials_byo_oauth2}},
  \code{\link{credentials_service_account}},
  \code{\link{credentials_user_oauth2}},
  \code{\link{token_fetch}}
}
\concept{credential functions}
