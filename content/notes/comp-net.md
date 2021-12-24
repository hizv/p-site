+++
title = "Computer Networking"
author = ["Himanish"]
date = 2021-11-12
lastmod = 2021-11-15T16:47:44+05:30
categories = ["cs"]
draft = false
mathjax = "t"
[menu.main]
  identifier = "computer-networking"
  weight = 2001
+++

## Computer Networks and the Internet {#computer-networks-and-the-internet}


### What is the Internet? {#what-is-the-internet}


#### 'Nuts and Bolts' view {#nuts-and-bolts-view}

-   Network of networks (interconnected ISPs)
-   Protocols everywhere e.g. HTTP, Skype


#### Services view {#services-view}

-   Infrastructure that provides services to applications (email, social media, ecommerce)
-   Provides programming interface (hooks)


#### What's a protocol {#what-s-a-protocol}

-   Defines format, order of messages sent and received, actions taken on former


## TCP {#tcp}

Transmission Control Protocol

-   Most applications want to communicate over a reliable, bi-directional byte-stream


### Three Way Handshake {#three-way-handshake}

-   Host A sends SYN (synchronise) message to Host B, indicating that A wants to establish a TCP connection with B
-   B responds with a SYN + ACK (acknowledge), ACK indicate correct delivery (_reliable delivery_)
-   A responds with an ACK
-   Stream of Bytes: Emulated using TCP segments


### Connection Teardown {#connection-teardown}

-   A sends FIN to B, B responds with (Data +) Ack, and B stops receiving data from A
-   But B keeps sending data to A till B's FIN message
