# NOTICE
We will not update this changeLog next release, refer to this link about the SDK release note detail : https://docs.zoloz.com/zoloz/saas/releasenotes/


## Version 1.3.3.231103154703
+ Added two new operation guide animations in the NativeSDK scanning page for Real ID and ID Recognition. Users will be prompted to center their ID within the capture box and flip their ID.

## Version 1.3.2.231024185824
+ Fix some bugs
+ Improve identification document prompt experience

**Notice:**
If you are upgrading from an older version, you need to configure the newly added text In the Portal's UI Configuration page.
![img_1.png](img_1.png)
If the configuration for the newly added texts, namely "zdoc_msg_too_dark", "zdoc_msg_too_bright", and "zdoc_msg_abrasion", is not available,
the corresponding English texts will be displayed by default. This may cause inconsistency with the set language.
I would recommend re-importing from In the Portal's UI Configuration page and configuring these new texts. Once you have made the necessary configurations, you can export the file again.

## Version 1.3.1.230921114719
+ Fix some bugs
+ add new feature for doc detection by NFC

## Version 1.2.16.230625103957
+ Fix some bugs.

## Version 1.2.15.230526101106
+ Fix some bugs.
+ Improve face detection capabilities

## Version 1.2.12.230403175254
+ Improve doc detection capabilities

## Version 1.2.11.230307210353
+ fix some bugs.

## Version 1.2.11.230224105332
+ Add text to the face capture interface as it supports displaying multiple paragraphs of custom content.

## Version 1.2.10.230111134406
+ Improve doc detection capabilities

## Version 1.2.9.221008150914
+ Improve ui config capabilities

## Version 1.2.8.220818113757
+ Accessibility Support

## Version 1.2.7.220715172343
+ Improve face detection capabilities

## Version 1.2.6.220616101644
+ Improve face detection capabilities

## Version 1.2.5.220513102249
+ Improve face detection capabilities

## Version 1.2.4.220422163646
+ Fix bitcode problem.

## Version 1.2.3.220328112216
+ Fix compatibility issues on some devices

## Version 1.2.3.220321153641
+ fix the duplicate symbol for nanopb.

## Version 1.2.3.220215113154
+ Improve face detection capabilities

## Version 1.2.2
+ fix the duplicate symbol for nanopb.

## Version 1.2.1
+ Improve flash detection capabilities
+ Improve the reverse side of documents detection capabilities
+ Improve occlusion detection capabilities

## Version 1.2.0
+ Support multi face detection
+ Improve occlusion detection capabilities

## Version 1.1.1

+ Improve SDK security
+ Fix the UI compatibility issue of the id collection page.

## Version 1.1.0

+ Upgrade the version number to solve the problem of cocoapods version conflict.

## Version 1.0.0

+ First release ZOLOZ sdk for RealId/Connect product.