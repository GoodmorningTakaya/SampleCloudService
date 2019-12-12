# SampleCloudService
A cloud service written and published in Azure. It consists of a web application hosted on the cloud along with a worker role performing background processes.

This application hosted on the cloud is a simple employee manager application in which you may post entries about an employee:
- Name
- Salary
- Image (file uploaded)

The web job consists of the interface for the application and the worker role will generate thumbnail images for the file uploaded which will then be visible in the interface after refreshing it. This set up is configured to have two virtual machines running on the cloud under a VNET (classic). These virtual machines communicate with a storage account and an Azure sql database to seperate functions and optimize performance.
