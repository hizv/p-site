+++
title = "Databases"
author = ["Himanish"]
date = 2022-09-13
lastmod = 2022-09-27T22:30:24+05:30
categories = ["cs"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "databases"
  weight = 2001
+++

## Foundations {#foundations}


### Applications need to {#applications-need-to}

-   Store data so that they, or another application, can find it again later (databases)
-   Remember the result of an expensive operation, to speed up reads (caches)
-   Allow users to search data by keyword or filter it in various ways (search indexes)
-   Send a message to another process, to be handled asynchronously (stream processing)
-   Periodically crunch a large amount of accumulated data (batch processing)


### Three concerns {#three-concerns}


#### Reliability {#reliability}

-   Fault-tolerant/resilient
-   Hardware faults, software and human errors
-   Responsibility to users


#### Scalability {#scalability}

Ability to cope with increased load (e.g. processing more data)


#### Maintainability {#maintainability}

-   Operability: Make it easy for operations teams to keep the system running smoothly.
-   Simplicity
-   Evolvability (extensibility)


## Data Models {#data-models}

In a relational database, the query optimizer automatically decides which parts of the query to execute in which order, and which indexes to use.


### Normalisation {#normalisation}

Anything that is meaningful to humans may need to change sometime in the future—and if that information is duplicated, all the redundant copies need to be updated. That incurs write overheads, and risks inconsistencies (where some copies of the information are updated but others aren’t). Removing such duplication is the key idea behind normalization.
Literature on the relational model distinguishes several different normal forms, but the distinctions are of little practical interest. As a rule of thumb, if you’re duplicating values that could be stored in just one place,
the schema is not normalized.


#### First Normal Form {#first-normal-form}


#### Second Normal Form {#second-normal-form}


#### Third Normal Form {#third-normal-form}


### NoSQL {#nosql}

Some applications don't fit well in the relational model

-   Document databases target use cases where data comes in self-contained documents and relationships between one document and another are rare.
    -   Document databases are similiar to hierarchical model: nested records within parent record.
-   Graph databases go in the opposite direction, targeting use cases where anything is potentially related to everything.


### Comparison between relational and document model {#comparison-between-relational-and-document-model}

-   In both, the related item is referenced by a unique identifier, which is called a foreign key in the relational model and a document reference in the document model.
-   The main arguments in favor of the document data model are schema flexibility, better performance due to locality, and that for some applications it is closer to the data structures used by the application. The relational model counters by providing better support for joins, and many-to-one and many-to-many relationships.
