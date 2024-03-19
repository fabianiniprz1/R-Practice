\name{ducksay}
\alias{ducksay}
\title{Duck Say}
\description{A duck that say hello.}
\usage{
ducksay(phrase = "hello, world")
}
\value{
A string representation of a duck saying hello to the given phrase.
}
\examples{
cat(ducksay())
cat(ducksay("quack!"))
}