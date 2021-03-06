% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AuthState-class.R
\docType{class}
\name{AuthState-class}
\alias{AuthState-class}
\alias{AuthState}
\title{Authorization state}
\format{An R6 class object.}
\usage{
AuthState
}
\description{
An \code{AuthState} object manages an authorization state, typically on behalf of
a client package that makes requests to a Google API.

The \href{https://gargle.r-lib.org/articles/gargle-auth-in-client-package.html}{How to use gargle for auth in a client package}
vignette describes a design for wrapper packages that relies on an \code{AuthState}
object. This state can then be incorporated into the package's requests for
tokens and can control the inclusion of tokens in requests to the target API.
\itemize{
\item \code{api_key} is the simplest way to associate a request with a specific
Google Cloud Platform \href{https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy#projects}{project}.
A few calls to certain APIs, e.g. reading a public Sheet, can succeed
with an API key, but this is the exception.
\item \code{app} is an OAuth app associated with a specific Google Cloud Platform
\href{https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy#projects}{project}.
This is used in the OAuth flow, in which an authenticated user authorizes
the app to access or manipulate data on their behalf.
\item \code{auth_active} reflects whether outgoing requests will be authorized by an
authenticated user or are unauthorized requests for public resources.
These two states correspond to sending a request with a token versus an
API key, respectively.
\item \code{cred} is where the current token is cached within a session, once one
has been fetched. It is generally assumed to be an instance of
\code{\link[httr:Token-class]{httr::TokenServiceAccount}} or
\code{\link[httr:Token-class]{httr::Token2.0}} (or a subclass thereof), probably
obtained via \code{\link[=token_fetch]{token_fetch()}} (or one of its constituent credential
fetching functions).
}

An \code{AuthState} should be created through the constructor function
\code{\link[=init_AuthState]{init_AuthState()}}.
}
\keyword{datasets}
