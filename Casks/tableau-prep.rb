cask 'tableau-prep' do
  version '2019.3.2'
  sha256 '47d46cdb5aca59d2780238d2e573abd83a846b9f8101d65540a8d8fb64b344fd'

  url "https://downloads.tableau.com/esdalt/tableau_prep/#{version}/TableauPrep-#{version.dots_to_hyphens}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/prep/mac',
          configuration: version.dots_to_hyphens
  name 'Tableau Prep'
  homepage 'https://www.tableau.com/support/releases/prep'

  depends_on macos: '>= :el_capitan'

  pkg 'Tableau Prep Builder.pkg'

  uninstall pkgutil: [
                       'com.amazon.redshiftodbc',
                       'simba.sparkodbc',
                       'com.simba.sparkodbc',
                       'com.simba.sqlserverodbc',
                       'com.tableausoftware.Maestro.app',
                       'com.tableausoftware.desktopShortcut',
                       'com.tableausoftware.telemetry',
                       'com.tableausoftware.FLEXNet.11.*',
                       'com.tableausoftware.oracle',
                       'com.tableausoftware.postgresql',
                     ]
end
