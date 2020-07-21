c.auto_save.interval = 1000
c.auto_save.session = True
c.content.autoplay = False
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://accounts.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36', 'https://*.slack.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://docs.google.com/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0', 'https://drive.google.com/*')
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'file://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
c.content.user_stylesheets = []
c.downloads.location.directory = '~/'
c.downloads.remove_finished = 10000
c.statusbar.show = 'in-mode'
c.tabs.show = 'switching'

config.bind('AA', 'spawn mpv {flolow-url}')
config.bind('P', 'open -p')
config.bind('aa', 'spawn mpv {url}')
config.bind('ad', 'spawn youtube-dl --ignore-errors  --yes-playlist --extract-audio --audio-format mp3 --output "%(title)s.%(ext)s" {url}')
config.bind('as', 'spawn youtube-dl {url}')
config.unbind('co')
config.bind('tt', 'config-cycle tabs.show switching always')
