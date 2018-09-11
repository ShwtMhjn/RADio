#  RADio

RADio intends to be a radio app, bringing together your favourite artists, songs and albums.
At the moment, RADio only displays search results for artists.

The App shows the first 30 results when you search. These are ranked in the decending order of number of listeners. If you do not find who you were looking for, load the next 30.

## Installation ##

### Cocoapods ###

Install Cocoapods if need be. Navigate to the project path on the terminal. Then, run...

`$ gem install cocoapods`

Then, run the following command.

`$ pod install`

## Build and run ##

RADio was written on Xcode 9.2 and the target OS is 11.2 using Swift 4.

RADio works fine on any iOS device simulator. It has not been tested on an actual device.

## Future Scope ##
1. RADio would be enhanced to be able to search Albums and Tracks as well. Right now, artist is being passed as the searchCategory all the time.
2. RADio is currently using a default Alert View Controller to display errors while looking for data. The overall error handling will be improved
3. RADio has basic test cases testing with low coverage. This will be updated achieving higher code-coverage.
4. The current UI is minimalistic and aims at putting the content to the forefront. This will evolve. The white-on-black theme is strenuous to the eye if a lot of reading is required. This will be addressed by using a varying theme.
5. RADio does not have Spotlight search functionality at the moment, however, it should be achievable.
6. SIRI integration with RADio is also an ambition.
7. RADio currently is a combination of MVVM and parts of VIPER with the hope of becoming a full VIPER implementation eventually.
8. Since the number of constants are very low at the moment, there is no separate Constants file.
9. Login is currently not implemented, so your activity on the App is not being tracked on your Last.fm account.
10. The api-key is currently on a plist as a String. It could be moved to a keychain.

### There will always be something more... ###




