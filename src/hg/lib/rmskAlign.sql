# rmskAlign.sql was originally generated by the autoSql program, which also 
# generated rmskAlign.c and rmskAlign.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#RepeatMasker .align record
CREATE TABLE rmskAlign (
    swScore int unsigned not null,	# Smith Waterman alignment score
    milliDiv int unsigned not null,	# Base mismatches in parts per thousand
    milliDel int unsigned not null,	# Bases deleted in parts per thousand
    milliIns int unsigned not null,	# Bases inserted in parts per thousand
    genoName varchar(255) not null,	# Genomic sequence name
    genoStart int unsigned not null,	# Start in genomic sequence
    genoEnd int unsigned not null,	# End in genomic sequence
    genoLeft int not null,	# -#bases after match in genomic sequence
    strand char(1) not null,	# Relative orientation + or -
    repName varchar(255) not null,	# Name of repeat
    repClass varchar(255) not null,	# Class of repeat
    repFamily varchar(255) not null,	# Family of repeat
    repStart int not null,	# Start in repeat sequence
    repEnd int unsigned not null,	# End in repeat sequence
    repLeft int not null,	# -#bases after match in repeat sequence
    id int unsigned not null,	# The ID of the hit. Used to link related fragments
    alignment longblob not null,	# The alignment data stored as a single string
              #Indices
    INDEX chromId (genoName,id)
);
