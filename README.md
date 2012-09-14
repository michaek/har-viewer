### HARViewer

Extracts the bare-bones, non-PHP version of [HAR Viewer](http://code.google.com/p/harviewer/) included in the [HAR gem](https://github.com/jarib/har) for use as a standalone web site.

### Usage

#### As standalone (WEBrick) server

  1. Install any missing gems:

          $ bundle

  2. Start the web server:

          $ rake start

  3. Copy your HAR files to `public/hars`

  4. Open `http://localhost:9292/?path=hars/your.har` in your browser

#### With external HTTP server (ex. nginx)

  1. Install any missing gems:

          $ bundle

  2. Set up HARViewer (one time)

          $ rake setup

  3. Configure your HTTP server to use `public` as the document root

  4. Copy your HAR files to `public/hars`

  5. Open `http://har-viewer.example.com/?path=hars/your.har` in your browser

### Rebuilding

The [HAR Viewer](http://code.google.com/p/harviewer/) included in the [HAR gem](https://github.com/jarib/har) may be updated in the future. If you wish to rebuild the `public` folder with the new version, run:

    $ rake clobber setup