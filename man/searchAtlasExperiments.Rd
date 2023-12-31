\name{ searchAtlasExperiments }
\alias{ searchAtlasExperiments }
\title{ Search for Expression Atlas experiments }
\description{
    This function accepts a vector of sample properties, and optionally a
    species name, and then searches for matching Expression Atlas experiments.
}
\usage{
    searchAtlasExperiments( properties, species = NULL )
}
\arguments{
    \item{ properties }{
        Character vector of sample properties to search Atlas for. These can be
        biological characteristics, experimental treatments, etc.
    }
    \item{ species }{
        Optional. The name of a species to limit results to. If not provided,
        search is performed across all species in Expression Atlas.
    }
}
\value{
    A DataFrame containing the ArrayExpress/BioStudies accessions, the species, experiment
    types, and titles of Expression Atlas experiments matching the query.
}
\examples{
    
    # Search for experiments on salt in oryza (rice)
    atlasRes <- searchAtlasExperiments( properties = "salt", species = "oryza"  )

    # Download data for first experiment found.
    if ( nrow( atlasRes ) == 1 ) {
        atlasData <- getAtlasData( atlasRes$Accession )
    } else {
        atlasData <- getAtlasData( atlasRes$Accession[1] )
    }

}
