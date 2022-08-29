@Restresource(Urlmapping='/food/cafe/*')
global  class Integrationsample {
    global final static string cricket='snr cricket ground';
@httpget
    global  static string food()
    {
        return cricket;
    }
}