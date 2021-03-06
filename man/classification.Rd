% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classification.R
\name{classification}
\alias{classification}
\title{Performs the classification methodology using complex network theory}
\usage{
classification(mRNA, lncRNA, word = 3, step = 1, sncRNA, graphic, graphic3D,
  classifier = c("J48", "RF"))
}
\arguments{
\item{mRNA}{Directory where the file .FASTA lies with the mRNA sequences}

\item{lncRNA}{Directory where the file is located fasta with lncRNA sequences}

\item{word}{Integer that defines the size of the word to parse. By default the word parameter is set to 3}

\item{step}{Integer that determines the distance that will be traversed in the sequences for creating a new connection. By default the step parameter is set to 1}

\item{sncRNA}{Directory where the file is located fasta with the sncRNA sequences (OPTIONAL)}

\item{graphic}{Parameter of the logical type, TRUE or FALSE for graphics generation. As default graphic gets FALSE}

\item{graphic3D}{Parameter of the logical type, TRUE or FALSE for 3D graphics generation. As default graphic3D gets FALSE}

\item{classifier}{Character Parameter. By default the classifier is J48, but the user can choose to use randomForest by configuring as classifier = "RF"}
}
\value{
Data.frame with the results of measures
}
\description{
Given two distinct data sets, one of mnRNA and one of lncRNA. 
The classification of the data is done from the structure of the networks formed by the sequences. 
After this is done classifying with the J48 classifier and randomForest. 
It is also created in the current directory a file of type arff called' result 'with all values so that it can be used later.
}
\examples{
arqSeqMRNA <- system.file("extdata", "sequences2.fasta", package = "BASiNET")
arqSeqLNCRNA <- system.file("extdata", "sequences.fasta", package = "BASiNET")
classification(mRNA=arqSeqMRNA,lncRNA=arqSeqLNCRNA,word=3,step=3,graphic=FALSE,graphic3D=FALSE)

}
\author{
Eric Augusto Ito
}
