+++
categories = ["til", "Uncategorized"]
date = "2016-03-21"
description = ""
draft = true
tags = ["til", "concurrency", "systems"]
title = "Mutex vs Semaphore"
socialsharing = true
+++

## Mutex

A mutex provides mutual exclusion. If one entity has access to a resource, no other entity can have access to it. A mutex is essentially a lock. It's either in a locked or unlocked state. To unlock it, one has to lock it first. If it is locked, nobody else can lock it till it gets unlocked

## Semaphore

Semaphores are like mutexes, but allow more than one entities to acquire the lock. Semaphores are generalized mutexes. A semaphore restricts the number of simultaneous users of a shared resource up to a maximum number. Threads can request access to the resource (decrementing the semaphore), and can signal that they have finished using the resource (incrementing the semaphore).

A binary semaphore is a semaphore with value 1. A **Mutex** _can be thought of_ as a binary semaphore. It sometimes uses the same basic implementation. The differences arise from how these get used.


A very good explanation is [here](http://niclasw.mbnet.fi/MutexSemaphore.html). It uses the _Toilet Example_ to explain the difference between these two.
