# Swift iOS Localization Language
How to change localization language without restart application swift4?

<p align="center">
  <img width="250" height="500" src="https://i.imgur.com/Xr9KGde.png">
  <img width="250" height="500" src="https://i.imgur.com/RUKXaWg.png">
  <img width="250" height="500" src="https://i.imgur.com/gu05afB.png"> 
</p>


# Swift With Localization 

English, Arabic and Spanish

## Description:

* Support RTL.
* Build are both Arabic and English languages handle
* Change localization language without restart application swift

## Arabic Support RTL

```python
     func setupUpdateView(languageCode code: String){
        LocalizationSystem.sharedInstance.setLanguage(languageCode: code)
        UIView.appearance().semanticContentAttribute =  code == "ar" ? .forceRightToLeft :  .forceLeftToRight
        let app = UIApplication.shared.delegate as? AppDelegate
        app?.window?.rootViewController = ViewController()
    }
```

## Contributing
Pull requests are welcome. For incress efficency, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## Contact with Me

Hi!<br/>
Right now i have 4 years+ experience iPhone application development/Xcode App Update / Bug Fixes. my 7 development apps almost App store top leading app.[Stackoverflow 6000+ reputation for 150+ accepted and voted answer](https://stackoverflow.com/users/4415445/nazmul-hasan). I love to write clean code that is help to understand new developer to enhance the app easily in future.

Thanks you <br/>
Nazmul Hasan <br/>
Sr. software engineer, iOS<br/>
Skype: nazmulkp1<br/>
Mail: nazmulcsharp@gmail.com<br/>
[Linkedin](https://www.linkedin.com/in/nazmulkp/)
