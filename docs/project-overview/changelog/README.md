# Changelog

## 09/09/2021 Summary

We're going over the changes from 0.29.17 and before... and there's a lot of big improvements here, so don't miss them!

**New Source**: Facebook Pages
**New Destination**: MongoDB
**New Destination**: DynamoDB

* ð You can now send notifications via webhook for successes and failures on Airbyte syncs. (This is a massive contribution by @Pras, thank you) :tada:
* ð Scheduling jobs and worker jobs are now separated, allowing for workers to be scaled horizontally.
* ð When developing a connector, you can now preview what your spec looks like in real time with this process.
* ð Oracle destination: Now has basic normalization.
* ð Add XLSB (binary excel) support to the Files source (contributed by Muutech).
* ð You can now properly cancel K8s deployments.

* â¨ S3 source: Support for Parquet format.
* â¨ Github source: Branches, repositories, organization users, tags, and pull request stats streams added (contributed by @Christopher Wu).
* â¨ BigQuery destination: Added GCS upload option.
* â¨ Salesforce source: Now Airbyte native.
* â¨ Redshift destination: Optimized for performance.

* ð CDK: :tada: Weâve released a tool to generate JSON Schemas from OpenAPI specs. This should make specifying schemas for API connectors a breeze! :tada:
* ð CDK: Source Acceptance Tests now verify that connectors correctly format strings which are declared as using date-time and date formats.
* ð CDK: Add private options to help in testing: _limit and _page_size are now accepted by any CDK connector to minimze your output size for quick iteration while testing.

* ð Fixed a bug that made it possible for connector definitions to be duplicated, violating uniqueness.
* ð Pipedrive source: Output schemas no longer remove timestamp from fields.
* ð Github source: Empty repos and negative backoff values are now handled correctly.
* ð Harvest source: Normalization now works as expected.
* ð All CDC sources: Removed sleep logic which caused exceptions when loading data from high-volume sources.
* ð Slack source: Increased number of retries to tolerate flaky retry wait times on the API side.
* ð Slack source: Sync operations no longer hang indefinitely.
* ð Jira source: Now uses updated time as the cursor field for incremental sync instead of the created time.
* ð Intercom source: Fixed inconsistency between schema and output data.
* ð Hubspot source: Streams with the items property now have their schemas fixed.
* ð Hubspot source: Empty strings are no longer handled as dates, fixing the deals, companies, and contacts streams.
* ð Typeform source: Allows for multiple choices in responses now.
* ð Shopify source: The type for the amount field is now fixed in the schema.
* ð Postgres destination: \u0000(NULL) value processing is now fixed.

As usual... thank you to our wonderful contributors this week: Pras, Christopher Wu, Brian M, yahu98, Michele Zuccala, jinnig, and luizgribeiro!

## 09/01/2021 Summary

Got the changes from 0.29.13... with some other surprises!

* ð¥ There's a new way to create Airbyte sources! The team at Faros AI has created a Javascript/Typescript CDK which can be found here and in our docs here. This is absolutely awesome and give a huge thanks to Chalenge Masekera, Christopher Wu, eskrm, and Matthew Tovbin!
* â¨ New Destination: Azure Blob Storage :sparkles:

**New Source**: Bamboo HR (contributed by @Oren Haliva)
**New Source**: BigCommerce (contributed by @James Wilson)
**New Source**: Trello
**New Source**: Google Analytics V4
**New Source**: Amazon Ads

* ð Alpine Docker images are the new standard for Python connectors, so image sizes have dropped by around 100 MB!
* â¨ You can now apply tolerations for Airbyte Pods on K8s deployments (contributed by @Pras).
* ð Shopify source: Rate limit throttling fixed.
* ð We now have a doc on how to deploy Airbyte at scale. Check it out here!
* ð Airbyte CDK: You can now ignore HTTP status errors and override retry parameters.

As usual, thank you to our awesome contributors: Oren Haliva, Pras, James Wilson, and Muutech.

## 08/26/2021 Summary

New Source: Short.io (contributed by @Apostol Tegko)
* ð GitHub source: Added support for rotating through multiple API tokens!
* â¨ Syncs are now scheduled with a 3 day timeout (contributed by @Vladimir Remar).
* â¨ Google Ads source: Added UserLocationReport stream (contributed by @Max Krog).
* â¨ Cart source: Added the order_items stream.
* ð Postgres source: Fixed out-of-memory issue with CDC interacting with large JSON blobs.
* ð Intercom source: Pagination now works as expected.

As always, thank you to our awesome community contributors this week: Apostol Tegko, Vladimir Remar, Max Krog, Pras, Marco Fontana, Troy Harvey, and damianlegawiec!
## 08/20/2021 Summary

Hey Airbyte community, we got some patch notes for y'all. Here's all the changes we've pushed since the last update.

* **New Source**: S3/Abstract Files
* **New Source**: Zuora
* **New Source**: Kustomer
* **New Source**: Apify
* **New Source**: Chargebee
* **New Source**: Bing Ads

New Destination: Keen

* â¨ Shopify source: The `status` property is now in the `Products` stream.
* â¨ Amazon Seller Partner source: Added support for `GET_MERCHANT_LISTINGS_ALL_DATA` and `GET_FBA_INVENTORY_AGED_DATA` stream endpoints.
* â¨ GitHub source: Existing streams now don't minify the user property.
* â¨ Hubspot source: Updated user-defined custom field schema generation.
* â¨ Zendesk source: Migrated from Singer to the Airbyte CDK.
* â¨ Amazon Seller Partner source: Migrated to the Airbyte CDK.
* ð Shopify source: Fixed the `products` schema to be in accordance with the API.
* ð S3 source: Fixed bug where syncs could hang indefinitely.

And as always... we'd love to shout out the awesome contributors that have helped push Airbyte forward. As a reminder, you can now see your contributions publicly reflected on our [contributors page](https://airbyte.io/contributors).

Thank you to Rodrigo Parra, Brian Krausz, Max Krog, Apostol Tegko, Matej Hamas, Vladimir Remar, Marco Fontana, Nicholas Bull, @mildbyte, @subhaklp, and Maciej NÄdza!

## 07/30/2021 Summary

For this week's update, we got... a few new connectors this week in 0.29.0. We found that a lot of sources can pull data directly from the underlying db instance, which we naturally already supported.

* New Source: PrestaShop â¨
* New Source: Snapchat Marketing â¨
* New Source: Drupal
* New Source: Magento
* New Source: Microsoft Dynamics AX
* New Source: Microsoft Dynamics Customer Engagement
* New Source: Microsoft Dynamics GP
* New Source: Microsoft Dynamics NAV
* New Source: Oracle PeopleSoft
* New Source: Oracle Siebel CRM
* New Source: SAP Business One
* New Source: Spree Commerce
* New Source: Sugar CRM
* New Source: Wordpress
* New Source: Zencart


* ð Shopify source: Fixed the products schema to be in accordance with the API
* ð BigQuery source: No longer fails with nested array data types.

View the full release highlights here: [Platform](./platform.md), [Connectors](./connectors.md)

And as always, thank you to our wonderful contributors: Madison Swain-Bowden, Brian Krausz, Apostol Tegko, Matej Hamas, Vladimir Remar, Oren Haliva, satishblotout, jacqueskpoty, wallies

## 07/23/2021 Summary

What's going on? We just released 0.28.0 and here's the main highlights.


* New Destination: Google Cloud Storage â¨
* New Destination: Kafka â¨ (contributed by @Mario Molina)
* New Source: Pipedrive
* New Source: US Census (contributed by @Daniel Mateus Pires (Earnest Research))


* â¨ Google Ads source: Now supports Campaigns, Ads, AdGroups, and Accounts streams.
* â¨ Stripe source: All subscription types (including expired and canceled ones) are now returned.
* ð Facebook source: Improved rate limit management
* ð Square source: The send_request method is no longer broken due to CDK changes
* ð MySQL destination: Does not fail on columns with JSON data now.

View the full release highlights here: [Platform](./platform.md), [Connectors](./connectors.md)

And as always, thank you to our wonderful contributors: Mario Molina, Daniel Mateus Pires (Earnest Research), gunu, Ankur Adhikari, Vladimir Remar, Madison Swain-Bowden, Maksym Pavlenok, Sam Crowder, mildbyte, avida, and gaart

## 07/16/2021 Summary

As for our changes this week...

* New Source: Zendesk Sunshine
* New Source: Dixa
* New Source: Typeform


* ð MySQL destination: Now supports normalization!  
* ð MSSQL source: Now supports CDC (Change Data Capture)
* â¨ Snowflake destination: Data coming from Airbyte is now identifiable
* ð GitHub source: Now uses the correct cursor field for the IssueEvents stream
* ð Square source: The send_request method is no longer broken due to CDK changes

View the full release highlights here: [Platform](./platform.md), [Connectors](./connectors.md)

As usual, thank you to our awesome community contributors this week: Oliver Meyer, Varun, Brian Krausz, shadabshaukat, Serhii Lazebnyi, Juliano Benvenuto Piovezan, mildbyte, and Sam Crowder!

## 07/09/2021 Summary

* New Source: PayPal Transaction
* New Source: Square
* New Source: SurveyMonkey
* New Source: CockroachDB
* New Source: Airbyte-Native GitHub
* New Source: Airbyte-Native GitLab
* New Source: Airbyte-Native Twilio


* â¨ S3 destination: Now supports anyOf, oneOf and allOf schema fields.
* â¨ Instagram source: Migrated to the CDK and has improved error handling.
* â¨ Shopify source: Add support for draft orders.
* â¨ K8s Deployments: Now support logging to GCS.
* ð GitHub source: Fixed issue with locked breaking normalization of the pull_request stream.
* ð Okta source: Fix endless loop when syncing data from logs stream.
* ð PostgreSQL source: Fixed decimal handling with CDC.
* ð Fixed random silent source failures.
* ð New document on how the CDK handles schemas.
* ðï¸ Python CDK: Now allows setting of network adapter args on outgoing HTTP requests.

View the full release highlights here: [Platform](./platform.md), [Connectors](./connectors.md)

As usual, thank you to our awesome community contributors this week: gunu, P.VAD, Rodrigo Parra, Mario Molina, Antonio Grass, sabifranjo, Jaime Farres, shadabshaukat, Rodrigo Menezes, dkelwa, Jonathan Duval, and Augustin LafanechÃ¨re.

## 07/01/2021 Summary

* New Destination: Google PubSub
* New Source: AWS CloudTrail

*The risks and issues with upgrading Airbyte are now gone...*
* ð Airbyte automatically upgrades versions safely at server startup ð


* ð Logs on K8s are now stored in Minio by default, no S3 bucket required
* â¨ Looker Source: Supports the Run Look output stream
* â¨ Slack Source: is now Airbyte native!
* ð Freshdesk Source: No longer fails after 300 pages
* ð New tutorial on building Java destinations

Starting from next week, our weekly office hours will now become demo days! Drop by to get sneak peeks and new feature demos.

* We added the #careers channel, so if you're hiring, post your job reqs there!
* We added a #understanding-airbyte channel to mirror [this](../../understanding-airbyte) section on our docs site. Ask any questions about our architecture or protocol there.
* We added a #contributing-to-airbyte channel. A lot of people ask us about how to contribute to the project, so ask away there!

View the full release highlights here: [Platform](./platform.md), [Connectors](./connectors.md)

As usual, thank you to our awesome community contributors this week: Harshith Mullapudi, Michael Irvine, and [sabifranjo](https://github.com/sabifranjo).

## 06/24/2021 Summary

* New Source: [IBM Db2](../../integrations/sources/db2.md)
* ð We now support Avro and JSONL output for our S3 destination! ð
* ð Brand new BigQuery destination flavor that now supports denormalized STRUCT types.
* â¨ Looker source now supports self-hosted instances.
* â¨ Facebook Marketing source is now migrated to the CDK, massively improving async job performance and error handling.

View the full connector release notes [here](./connectors.md).

As usual, thank you to some of our awesome community contributors this week: Harshith Mullapudi, Tyler DeLange, Daniel Mateus Pires, EdBizarro, Tyler Schroeder, and Konrad Schlatte!

## 06/18/2021 Summary

* New Source: [Snowflake](../../integrations/sources/snowflake.md)
* ð We now support custom dbt transformations! ð
* â¨ We now support configuring your destination namespace at the table level when setting up a connection!
* â¨ The S3 destination now supports Minio S3 and Parquet output!

View the full release notes here: [Platform](./platform.md), [Connectors](./connectors.md)

As usual, thank you to some of our awesome community contributors this week: Tyler DeLange, Mario Molina, Rodrigo Parra, Prashanth Patali, Christopher Wu, Itai Admi, Fred Reimer, and Konrad Schlatte!

## 06/10/2021 Summary

* New Destination: [S3!!](../../integrations/destinations/s3.md) 
* New Sources: [Harvest](../../integrations/sources/harvest.md), [Amplitude](../../integrations/sources/amplitude.md), [Posthog](../../integrations/sources/posthog.md)
* ð Ensure that logs from threads created by replication workers are added to the log file.
* ð Handle TINYINT(1) and BOOLEAN correctly and fix target file comparison for MySQL CDC.
* Jira source: now supports all available entities in Jira Cloud.
* ð Added a troubleshooting section, a gradle cheatsheet, a reminder on what the reset button does, and a refresh on our docs best practices.

#### Connector Development:
* Containerized connector code generator
* Added JDBC source connector bootstrap template.
* Added Java destination generator.

View the full release notes highlights here: [Platform](./platform.md), [Connectors](./connectors.md)

As usual, thank you to some of our awesome community contributors this week (I've noticed that we've had more contributors to our docs, which we really appreciate).
Ping, Harshith Mullapudi, Michael Irvine, Matheus di Paula, jacqueskpoty and P.VAD.

## Overview

Airbyte is comprised of 2 parts:

* Platform (The scheduler, workers, api, web app, and the Airbyte protocol). Here is the [changelog for Platform](platform.md). 
* Connectors that run in Docker containers. Here is the [changelog for the connectors](connectors.md). 

## Airbyte Platform Releases

### Production v. Dev Releases

The "production" version of Airbyte is the version of the app specified in `.env`. With each production release, we update the version in the `.env` file. This version will always be available for download on DockerHub. It is the version of the app that runs when a user runs `docker-compose up`.

The "development" version of Airbyte is the head of master branch. It is the version of the app that runs when a user runs `./gradlew composeBuild && VERSION=dev docker compose up`.

### Production Release Schedule

#### Scheduled Releases

Airbyte currently releases a new minor version of the application on a weekly basis. Generally this weekly release happens on Monday or Tuesday.

#### Hotfixes

Airbyte releases a new version whenever it discovers and fixes a bug that blocks any mission critical functionality.

**Mission Critical**

e.g. Non-ASCII characters break the Salesforce source.

**Non-Mission Critical**

e.g. Buttons in the UI are offset.

#### Unscheduled Releases

We will often release more frequently than the weekly cadence if we complete a feature that we know that a user is waiting on.

### Development Release Schedule

As soon as a feature is on master, it is part of the development version of Airbyte. We merge features as soon as they are ready to go \(have been code reviewed and tested\). We attempt to keep the development version of the app working all the time. We are iterating quickly, however, and there may be intermittent periods where the development version is broken.

If there is ever a feature that is only on the development version, and you need it on the production version, please let us know. We are very happy to do ad-hoc production releases if it unblocks a specific need for one of our users.

## Airbyte Connector Releases

Each connector is tracked with its own version. These versions are separate from the versions of Airbyte Platform. We generally will bump the version of a connector anytime we make a change to it. We rely on a large suite of tests to make sure that these changes do not cause regressions in our connectors.

When we updated the version of a connector, we usually update the connector's version in Airbyte Platform as well. Keep in mind that you might not see the updated version of that connector in the production version of Airbyte Platform until after a production release of Airbyte Platform.

