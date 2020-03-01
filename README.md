# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Design issues:

* Relation `responses` does not meet 2nd normal form
* `feedbacks.experience_id` is nullable/does not have constraints
* `responses.feedback_id` is nullable/does not have constraints


##Eager rating calculation

### Pros:
* Always gives the most accurate value
### Cons:
* Might be database bottleneck while getting ratings for big amount of experiences

##Lazy rating calculation

### Pros:
* The value is always available w/o any extra queries
* Rating might be re-calculated in background process
### Cons:
* Extra queries while inserting/deleteting
* In case re-calculation happens in background process, experience would have wrong rating for some time
