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
[Linkedin](https://www.linkedin.com/in/nazmulkp/)
