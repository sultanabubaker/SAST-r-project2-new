% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-conversion.R
\name{rnw2pdf}
\alias{rnw2pdf}
\title{Convert an \file{Rnw} document to PDF}
\usage{
rnw2pdf(
  input,
  output = with_ext(input, "pdf"),
  compiler = "xelatex",
  envir = parent.frame(),
  quiet = FALSE,
  clean = TRUE,
  error = FALSE,
  ...
)
}
\arguments{
\item{input}{Path to the input file.}

\item{output}{Path of the PDF output file. By default, it uses the same name
as the \code{input}, but changes the file extension to ".pdf".}

\item{compiler, ...}{The LaTeX engine and other arguments to be passed to
\code{tinytex::\link[tinytex]{latexmk}()}. The default compiler is
\code{xelatex}.}

\item{envir}{Environment in which code chunks are to be evaluated, for
example, \code{\link{parent.frame}()}, \code{\link{new.env}()}, or
\code{\link{globalenv}()}).}

\item{quiet}{Boolean; suppress the progress bar and messages?}

\item{clean}{If \code{TRUE}, the intermediate files will be removed.}

\item{error}{If \code{FALSE}, knitting stops when any error occurs.}
}
\value{
The \code{output} file path.
}
\description{
Call \code{\link{knit}()} to compile the \file{.Rnw} input to \file{.tex},
and then \code{tinytex::\link[tinytex]{latexmk}()} to convert \file{.tex} to
\file{.pdf}.
}
\details{
This function is similar to \code{\link{knit2pdf}()}, with the following differences:
\enumerate{
  \item The default compiler is "xelatex" instead of "pdflatex".
  \item \code{output} uses the file extension ".pdf" instead of ".tex".
  \item Before knitting, it tries to remove the \code{output} file and will throw a clear error if the file cannot be removed.
  \item \code{output} could be under any dir, not necessarily the same directory as \code{input}.
  \item It cleans up intermediate files by default, including the ".tex" file.
  \item It stops knitting when any error occurs (by setting the chunk option \code{error = FALSE}).
}
}
