# Deployment Overview

## Deployment Options

1. Clone the repository
2. Add a fully built application to the App Store for MacOS and the Snap store for Linux.
3. Create a formula for brew to allow the tool to be installed via Homebrew.

The easiest form of deployment for us as developers would be to keep the tool solely in Github and force users to clone the repository to use the application. The other two forms of deployment would take a bit more work to do. Getting the tool added to the App Store would require us to purchase a subscription to the Apple development program in order to publishing the tool. If we were to seek further development of this tool, then it would probably be worth getting a subscription to this service to publish the tool and make it more easily accessable. The last form of deployment would probably be the best approach for us given the nature of what the tool is supposed to do and help with. This form of deployment would only require following the brew formula guide to create a formula and some knowledge of Ruby.

## Current Issues

- With the tool not being fully developed it would not be accepted into the App or Snap store.
- Readme is not fully complete with instructions on how to run the tool for those who clone the repository.
