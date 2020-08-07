# GoodBuysNavigation
GoodBuys is a simple, non-intrusive, and intuitive mobile application that leverages already existing and well-known EcoLabels - certifications given to companies that allow purchasers to easily identify products that adhere to specific humanitarian and environmental performance criteria - to show consumers the ethics behind an item they pick up in a store. 

- To run the app, download Xcode from the Mac app store. Download GoodBuysNavigation from the GitHub and open it on Xcode.
- You should not need to download any dependants or linking libraries beyond what is in the GitHub already. Everything relevant to the app is written in swift, and the .js files are purely for web scraping reference and do not have to do with the app itself.

- Using the Xcode simulator is fine for most of the capabilities of the app, except the scanning portion. To use the app's camera, you have to use a real device. The device must be using at least iOS version 11.0 to use the search view controller.

- Select the simulator or the device that you would like to run the app on next to the "GoodBuysNavigation" tab on the top left corner of the app. To run the app, just press the play button. 

## Notes
Under "General" -> "Linked Frameworks and Libraries" -> libxml2 is the framework used to parse the barcode website in order to retrieve the company name of the item scanned. 
