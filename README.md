# EDACode App

A ![PharoEDA](https://github.com/osoco/pharo-eda "PharoEDA") application listening to ![EDACode Main](https://github.com/edacode/edacode-main "EDACode Main") events.

## Motivation

EDACode App changes your image's code following the events emitted by EDACode Main.

## Design

It's a regular PharoEDA application. It's domain is composed of some handlers able to perform code changes.

## Usage

Load it with Metacello:

```smalltalk
Metacello new repository: 'github://edacode/edacode-app:main'; baseline: #EDACodeApp; load
```

Run it

```smalltalk
EDACodeApp new start.
```

## Customization

As a PharoEDA application, there're some settings you can configure. Open SettingBrowser once the application is created (it doesn't need to be running).

## Work in progress

- Support for "MethodCreated" events.

## Credits

- Background of the Pharo image by <a href="https://pixabay.com/photos/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=731198">Free-Photos</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=731198">Pixabay</a>
