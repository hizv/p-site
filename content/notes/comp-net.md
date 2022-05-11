+++
title = "Computer Networking"
author = ["Himanish"]
date = 2021-11-12
lastmod = 2022-03-19T21:56:38+05:30
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


### Four Layer Model {#four-layer-model}

{{< figure src="/images/net-4-layer-model.png" >}}


## Network Layer {#network-layer}

-


## Application Layer {#application-layer}

-   Most common communication model of applications: a reliable, bidirectional byte stream, which allows two programs on diff computers to exchange data.
    -   Abstracts away the entire network to a simple read/write relationship


## Transport Layer {#transport-layer}


### TCP {#tcp}

Transmission Control Protocol

-   Most applications want to communicate over a reliable, bi-directional byte-stream


#### Three Way Handshake {#three-way-handshake}

-   Host A sends SYN (synchronise) message to Host B, indicating that A wants to establish a TCP connection with B
-   B responds with a SYN + ACK (acknowledge), ACK indicate correct delivery (_reliable delivery_)
-   A responds with an ACK
-   Stream of Bytes: Emulated using TCP segments


#### Connection Teardown {#connection-teardown}

-   A sends FIN to B, B responds with (Data +) Ack, and B stops receiving data from A
-   But B keeps sending data to A till B's FIN message
