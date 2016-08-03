/**
 * German translation
 * @author JPG & Mace <dev@flying-datacenter.de>
 * @author tora60 from pragmaMx.org
 * @author Timo-Linde <info@timo-linde.de>
 * @version 2015-11-16
 */
if (elFinder && elFinder.prototype && typeof(elFinder.prototype.i18) == 'object') {
	elFinder.prototype.i18.de = {
		translator : 'JPG & Mace &lt;dev@flying-datacenter.de&gt;, tora60 from pragmaMx.org, osworx.net',
		language   : 'Deutsch',
		direction  : 'ltr',
		dateFormat : 'd. M Y h:i', // 13. Mai 2012 05:27
		fancyDateFormat : '$1 h:i', // will produce smth like: Today 12:25 PM
		messages   : {
			
			/********************************** errors **********************************/
			'error'                : 'Fehler',
			'errUnknown'           : 'Unbekannter Fehler.',
			'errUnknownCmd'        : 'Unbekannter Befehl.',
			'errJqui'              : 'Ungültige jQuery UI Konfiguration. Die Komponenten Selectable, draggable und droppable müssen inkludiert sein.',
			'errNode'              : 'Für elFinder muss das DOM Element erstellt werden.',
			'errURL'               : 'Ungültige elFinder Konfiguration! Die URL Option ist nicht gesetzt.',
			'errAccess'            : 'Zugriff verweigert.',
			'errConnect'           : 'Verbindung zum Backend fehlgeschlagen.',
			'errAbort'             : 'Verbindung abgebrochen.',
			'errTimeout'           : 'Zeitüberschreitung der Verbindung.',
			'errNotFound'          : 'Backend nicht gefunden.',
			'errResponse'          : 'Ungültige Backend Antwort.',
			'errConf'              : 'Ungültige Backend Konfiguration.',
			'errJSON'              : 'PHP JSON Modul nicht vorhanden.',
			'errNoVolumes'         : 'Lesbare Volumes nicht vorhanden.',
			'errCmdParams'         : 'Ungültige Parameter für Befehl: "$1".',
			'errDataNotJSON'       : 'Daten nicht im JSON Format.',
			'errDataEmpty'         : 'Daten sind leer.',
			'errCmdReq'            : 'Backend Anfrage benötigt Befehl.',
			'errOpen'              : 'Kann "$1" nicht öffnen.',
			'errNotFolder'         : 'Objekt ist kein Ordner.',
			'errNotFile'           : 'Objekt ist keine Datei.',
			'errRead'              : 'Kann "$1" nicht öffnen.',
			'errWrite'             : 'Kann nicht in "$1" schreiben.',
			'errPerm'              : 'Zugriff verweigert.',
			'errLocked'            : '"$1" ist gesperrt und kann nicht umbenannt, verschoben oder gelöscht werden.',
			'errExists'            : 'Die Datei "$1" existiert bereits.',
			'errInvName'           : 'Ungültiger Dateiname.',
			'errFolderNotFound'    : 'Ordner nicht gefunden.',
			'errFileNotFound'      : 'Datei nicht gefunden.',
			'errTrgFolderNotFound' : 'Zielordner "$1" nicht gefunden.',
			'errPopup'             : 'Der Browser hat das Pop-Up-Fenster unterbunden. Um die Datei zu öffnen, Pop-Ups in den Browser Einstellungen aktivieren.',
			'errMkdir'             : 'Kann Ordner "$1" nicht erstellen.',
			'errMkfile'            : 'Kann Datei "$1" nicht erstellen.',
			'errRename'            : 'Kann "$1" nicht umbenennen.',
			'errCopyFrom'          : 'Kopieren von Dateien von "$1" nicht erlaubt.',
			'errCopyTo'            : 'Kopieren von Dateien nach "$1" nicht erlaubt.',
                        'errMkOutLink'         : 'Der Link kann nicht außerhalb der Partition führen.',
			'errUpload'            : 'Upload Fehler.',
			'errUploadFile'        : 'Kann "$1" nicht hochladen.',
			'errUploadNoFiles'     : 'Keine Dateien zum Hochladen gefunden.',
			'errUploadTotalSize'   : 'Daten überschreiten die Maximalgröße.',
			'errUploadFileSize'    : 'Die Datei überschreitet die Maximalgröße.',
			'errUploadMime'        : 'Dateiart nicht zulässig.',
			'errUploadTransfer'    : '"$1" Transfer Fehler.',
                        'errUploadTemp'        : 'Kann Temporäre Datei nicht erstellen.',
			'errNotReplace'        : 'Das Objekt "$1" existiert bereits an dieser Stelle und kann nicht durch ein Objekt eines anderen Typs ersetzt werden.',
			'errReplace'           : 'Kann "$1" nicht ersetzen.',
			'errSave'              : 'Kann "$1" nicht speichern.',
			'errCopy'              : 'Kann "$1" nicht kopieren.',
			'errMove'              : 'Kann "$1" nicht verschieben.',
			'errCopyInItself'      : '"$1" kann sich nicht in sich selbst kopieren.',
			'errRm'                : 'Kann "$1" nicht entfernen.',
			'errRmSrc'             : 'Kann Quelldatei(en) nicht entfernen.',
			'errExtract'           : 'Kann "$1" nicht entpacken.',
			'errArchive'           : 'Archiv konnte nicht erstellt werden.',
			'errArcType'           : 'Archivtyp nicht untersützt.',
			'errNoArchive'         : 'Bei der Datei handelt es sich nicht um ein Archiv oder der Archivtyp wird nicht unterstützt.',
			'errCmdNoSupport'      : 'Das Backend unterstützt diesen Befehl nicht.',
			'errReplByChild'       : 'Der Ordner "$1" kann nicht durch etwas ersetzt werden, das ihn selbst enthält.',
			'errArcSymlinks'       : 'Aus Sicherheitsgründen ist es verboten, ein Archiv mit symbolischen Links zu extrahieren.',
			'errArcMaxSize'        : 'Die Archiv Dateien übersteigen die maximal erlaubte Größe.',
			'errResize'            : 'Größe von "$1" kann nicht geändert werden.',
			'errResizeDegree'      : 'Ungültiger Rotationswert.',
			'errResizeRotate'      : 'Bild konnte nicht gedreht werden.',
			'errResizeSize'        : 'Ungültige Bildgröße.',
			'errResizeNoChange'    : 'Bildmaße nicht geändert.',
			'errUsupportType'      : 'Nicht unterstützte Dateiart.',
			'errNotUTF8Content'    : 'Die Datei "$1" ist nicht im UTF-8 Format und kann nicht editiert werden.',
			'errNetMount'          : 'Verbindung mit "$1" nicht möglich.',
			'errNetMountNoDriver'  : 'Nicht unterstütztes Protokoll.',
			'errNetMountFailed'    : 'Verbindung fehlgeschlagen.',
			'errNetMountHostReq'   : 'Host benötigt.',
			'errSessionExpires'    : 'Diese Sitzung ist aufgrund von Inaktivität abgelaufen.',
			'errCreatingTempDir'   : 'Erstellung des temporären Ordners nicht möglich: "$1"',
			'errFtpDownloadFile'   : 'Download der Datei über FTP nicht möglich: "$1"',
			'errFtpUploadFile'     : 'Upload der Datei zu FTP nicht möglich: "$1"',
			'errFtpMkdir'          : 'Erstellung des Remote-Ordners auf FTP nicht möglich: "$1"',
			'errArchiveExec'       : 'Fehler beim archivieren der Dateien: "$1"',
			'errExtractExec'       : 'Fehler beim extrahieren der Dateien: "$1"',
                        'errNetUnMount'        : 'Kann nicht ausgeworfen werden.',
			'errConvUTF8'          : 'Kann nicht zu UTF-8 konvertiert werden.',
			'errFolderUpload'      : 'Versuchen Sie es mit Google Chrome, wenn Sie einen Ordner hochladen möchten.',

			/******************************* commands names ********************************/
			'cmdarchive'   : 'Archiv erstellen',
			'cmdback'      : 'Zurück',
			'cmdcopy'      : 'Kopieren',
			'cmdcut'       : 'Ausschneiden',
			'cmddownload'  : 'Herunterladen',
			'cmdduplicate' : 'Duplizieren',
			'cmdedit'      : 'Datei bearbeiten',
			'cmdextract'   : 'Archiv entpacken',
			'cmdforward'   : 'Vorwärts',
			'cmdgetfile'   : 'Datei auswählen',
			'cmdhelp'      : 'Über diese Software',
			'cmdhome'      : 'Startordner',
			'cmdinfo'      : 'Informationen',
			'cmdmkdir'     : 'Neuer Ordner',
			'cmdmkfile'    : 'Neue Textdatei',
			'cmdopen'      : 'Öffnen',
			'cmdpaste'     : 'Einfügen',
			'cmdquicklook' : 'Vorschau',
			'cmdreload'    : 'Aktualisieren',
			'cmdrename'    : 'Umbenennen',
			'cmdrm'        : 'Löschen',
			'cmdsearch'    : 'Suchen',
			'cmdup'        : 'In übergeordneten Ordner wechseln',
			'cmdupload'    : 'Datei hochladen',
			'cmdview'      : 'Ansehen',
			'cmdresize'    : 'Größe ändern & drehen',
			'cmdsort'      : 'Sortieren',
			'cmdnetmount'  : 'Verbinde mit Netzwerkspeicher',
                        'cmdnetunmount': 'Auswerfen', 
			'cmdplaces'    : 'Orte',
			'cmdchmod'     : 'Berechtigung ändern',
			
			
			/*********************************** buttons ***********************************/ 
			'btnClose'  : 'Schließen',
			'btnSave'   : 'Speichern',
			'btnRm'     : 'Entfernen',
			'btnApply'  : 'Anwenden',
			'btnCancel' : 'Abbrechen',
			'btnNo'     : 'Nein',
			'btnYes'    : 'Ja',
			'btnMount'  : 'Verbinden',
                        'btnApprove': 'Goto $1 & approve', 
			'btnUnmount': 'Auswerfen',
			'btnConv'   : 'Konvertieren',
			'btnCwd'    : 'Arbeitspfad',
			'btnVolume' : 'Partition',
			'btnAll'    : 'Alle',
			'btnMime'   : 'MIME Typ',
			'btnFileName':'Dateiname',
			'btnSaveClose': 'Speichern & Schließen',
			
			/******************************** notifications ********************************/
			'ntfopen'     : 'Öffne Ordner',
			'ntffile'     : 'Öffne Datei',
			'ntfreload'   : 'Ordnerinhalt neu',
			'ntfmkdir'    : 'Erstelle Ordner',
			'ntfmkfile'   : 'Erstelle Dateien',
			'ntfrm'       : 'Lösche Dateien',
			'ntfcopy'     : 'Kopiere Dateien',
			'ntfmove'     : 'Verschiebe Dateien',
			'ntfprepare'  : 'Kopiervorgang initialisieren',
			'ntfrename'   : 'Benenne Dateien um',
			'ntfupload'   : 'Dateien hochladen',
			'ntfdownload' : 'Dateien herunterladen',
			'ntfsave'     : 'Speichere Datei',
			'ntfarchive'  : 'Erstelle Archiv',
			'ntfextract'  : 'Entpacke Dateien',
			'ntfsearch'   : 'Suche',
			'ntfresize'   : 'Bildgrößen ändern',
			'ntfsmth'     : 'Bin beschäftigt',
			'ntfloadimg'  : 'Bild laden',
			'ntfnetmount' : 'Mit Netzwerkspeicher verbinden',
                        'ntfnetunmount': 'Netzwerkspeicher auswerfen',
			'ntfdim'      : 'Bildgröße erfassen',
			'ntfreaddir'  : 'Lese Ordner Informationen',
			'ntfurl'      : 'Hole URL von Link',
			'ntfchmod'    : 'Ändere Datei berechtigungen',
			
			/************************************ dates **********************************/
			'dateUnknown' : 'unbekannt',
			'Today'       : 'Heute',
			'Yesterday'   : 'Gestern',
			'msJan'       : 'Jan',
			'msFeb'       : 'Feb',
			'msMar'       : 'Mär',
			'msApr'       : 'Apr',
			'msMay'       : 'Mai',
			'msJun'       : 'Jun',
			'msJul'       : 'Jul',
			'msAug'       : 'Aug',
			'msSep'       : 'Sep',
			'msOct'       : 'Okt',
			'msNov'       : 'Nov',
			'msDec'       : 'Dez',
			'January'     : 'Januar',
			'February'    : 'Februar',
			'March'       : 'März',
			'April'       : 'April',
			'May'         : 'Mai',
			'June'        : 'Juni',
			'July'        : 'Juli',
			'August'      : 'August',
			'September'   : 'September',
			'October'     : 'Oktober',
			'November'    : 'November',
			'December'    : 'Dezember',
			'Sunday'      : 'Sonntag',
			'Monday'      : 'Montag',
			'Tuesday'     : 'Dienstag',
			'Wednesday'   : 'Mittwoch',
			'Thursday'    : 'Donnerstag',
			'Friday'      : 'Freitag',
			'Saturday'    : 'Samstag',
			'Sun'         : 'So', 
			'Mon'         : 'Mo', 
			'Tue'         : 'Di', 
			'Wed'         : 'Mi', 
			'Thu'         : 'Do', 
			'Fri'         : 'Fr', 
			'Sat'         : 'Sa',

			/******************************** sort variants ********************************/
			'sortname'         : 'nach Name',
			'sortkind'         : 'nach Art',
			'sortsize'         : 'nach Größe',
			'sortdate'         : 'nach Datum',
			'sortFoldersFirst' : 'Ordner zuerst',
                        
                        /********************************** new items **********************************/
			'untitled file.txt' : 'Neues Textdokument.txt', 
			'untitled folder'   : 'Neuer Ordner',
			'Archive'           : 'Neues Archiv',

			/********************************** messages **********************************/
			'confirmReq'      : 'Bestätigung benötigt',
			'confirmRm'       : 'Sollen die Dateien gelöscht werden?<br/>Dies kann nicht rückgängig gemacht werden!',
                        'confirmConvUTF8' : 'Nicht in UTF-8<br/>Zu UTF-8 konvertieren?<br/>Inhalte werden zu UTF-8 konvertiert wenn Sie speichern.',
			'confirmNotSave'  : 'Die Datei wurde geändert.<br/>Sie werden die Änderungen verlieren wenn Sie nicht speichern.',
			'confirmRepl'     : 'Datei ersetzen?',
			'apllyAll'        : 'Alles bestätigen',
			'name'            : 'Name',
			'size'            : 'Größe',
			'perms'           : 'Berechtigungen',
			'modify'          : 'Änderungsdatum',
			'kind'            : 'Typ',
			'read'            : 'lesen',
			'write'           : 'schreiben',
			'noaccess'        : 'Kein Zugriff',
			'and'             : 'und',
			'unknown'         : 'unbekannt',
			'selectall'       : 'Alle Dateien auswählen',
			'selectfiles'     : 'Dateien auswählen',
			'selectffile'     : 'Erste Datei auswählen',
			'selectlfile'     : 'Letzte Datei auswählen',
			'viewlist'        : 'Spaltenansicht',
			'viewicons'       : 'Symbolansicht',
			'places'          : 'Orte',
			'calc'            : 'Berechne',
			'path'            : 'Pfad',
			'aliasfor'        : 'Verknüpfung zu',
			'locked'          : 'Gesperrt',
			'dim'             : 'Bildgröße',
			'files'           : 'Dateien',
			'folders'         : 'Ordner',
			'items'           : 'Objekte',
			'yes'             : 'ja',
			'no'              : 'nein',
			'link'            : 'Link',
			'searcresult'     : 'Suchergebnisse',
			'selected'        : 'Objekte ausgewählt',
			'about'           : 'Über',
			'shortcuts'       : 'Tastenkombinationen',
			'help'            : 'Hilfe',
			'webfm'           : 'Web Dateiverwaltung',
			'ver'             : 'Version',
			'protocolver'     : 'Protokoll Version',
			'homepage'        : 'Projekt Webseite',
			'docs'            : 'Dokumentation',
			'github'          : 'Forke uns auf Github',
			'twitter'         : 'Folge uns auf twitter',
			'facebook'        : 'Begleite uns auf facebook',
			'team'            : 'Team',
			'chiefdev'        : 'Chefentwickler',
			'developer'       : 'Entwickler',
			'contributor'     : 'Unterstützer',
			'maintainer'      : 'Maintainer',
			'translator'      : 'Übersetzer',
			'icons'           : 'Icons',
			'dontforget'      : 'und vergiss dein Handtuch nicht',
			'shortcutsof'     : 'Tastenkombinationen deaktiviert',
			'dropFiles'       : 'Dateien hier ablegen',
			'or'              : 'oder',
			'selectForUpload' : 'Dateien zum Upload auswählen',
			'moveFiles'       : 'Dateien verschieben',
			'copyFiles'       : 'Dateien kopieren',
			'rmFromPlaces'    : 'Lösche von Orten',
			'aspectRatio'     : 'Seitenverhältnis',
			'scale'           : 'Maßstab',
			'width'           : 'Breite',
			'height'          : 'Höhe',
			'resize'          : 'Größe ändern',
			'crop'            : 'Zuschneiden',
			'rotate'          : 'Drehen',
			'rotate-cw'       : 'Drehe 90° im Uhrzeigersinn',
			'rotate-ccw'      : 'Drehe 90° gegen Uhrzeigersinn',
			'degree'          : '°',
			'netMountDialogTitle' : 'verbinde Netzwerkspeicher',
			'protocol'            : 'Protokoll',
			'host'                : 'Host',
			'port'                : 'Port',
			'user'                : 'Benutzer',
			'pass'                : 'Passwort',
                        'confirmUnmount'      : 'Möchten Sie "$1" auswerfen?',
			'dropFilesBrowser': 'Sie können Dateien in den Browser ziehen', 
			'dropPasteFiles'  : 'Lassen Sie die Dateien hier Los',
			'encoding'        : 'Codierung', 
			'locale'          : 'Locale', 
			'searchTarget'    : 'Ziel: $1',
			'searchMime'      : 'Suche nach MIME Typ',
			'owner'           : 'Besitzer',
			'group'           : 'Gruppe',
			'other'           : 'Andere',
			'execute'         : 'Ausführen',
			'perm'            : 'Berechtigung',
			'mode'            : 'Modus',

			/********************************** mimetypes **********************************/
			'kindUnknown'     : 'Unbekannt',
			'kindFolder'      : 'Ordner',
			'kindAlias'       : 'Verknüpfung',
			'kindAliasBroken' : 'Defekte Verknüpfung',
			// applications
			'kindApp'         : 'Programm',
			'kindPostscript'  : 'Postscript Dokument',
			'kindMsOffice'    : 'Microsoft Office Dokument',
			'kindMsWord'      : 'Microsoft Word Dokument',
			'kindMsExcel'     : 'Microsoft Excel Dokument',
			'kindMsPP'        : 'Microsoft Powerpoint Präsentation',
			'kindOO'          : 'Open Office Dokument',
			'kindAppFlash'    : 'Flash Programm',
			'kindPDF'         : 'Portables Dokumentenformat (PDF)',
			'kindTorrent'     : 'Bittorrent Datei',
			'kind7z'          : '7z Archiv',
			'kindTAR'         : 'TAR Archiv',
			'kindGZIP'        : 'GZIP Archiv',
			'kindBZIP'        : 'BZIP Archiv',
			'kindXZ'          : 'XZ Archiv',
			'kindZIP'         : 'ZIP Archiv',
			'kindRAR'         : 'RAR Archiv',
			'kindJAR'         : 'Java JAR Datei',
			'kindTTF'         : 'True Type Schrift',
			'kindOTF'         : 'Open Type Schrift',
			'kindRPM'         : 'RPM Paket',
			// texts
			'kindText'        : 'Text Dokument',
			'kindTextPlain'   : 'Text Dokument',
			'kindPHP'         : 'PHP Quelltext',
			'kindCSS'         : 'Cascading Stylesheet',
			'kindHTML'        : 'HTML Dokument',
			'kindJS'          : 'Javascript Quelltext',
			'kindRTF'         : 'Formatierte Textdatei',
			'kindC'           : 'C Quelltext',
			'kindCHeader'     : 'C Header Quelltext',
			'kindCPP'         : 'C++ Quelltext',
			'kindCPPHeader'   : 'C++ Header Quelltext',
			'kindShell'       : 'Unix-Shell-Skript',
			'kindPython'      : 'Python Quelltext',
			'kindJava'        : 'Java Quelltext',
			'kindRuby'        : 'Ruby Quelltext',
			'kindPerl'        : 'Perl Script',
			'kindSQL'         : 'SQL Quelltext',
			'kindXML'         : 'XML Dokument',
			'kindAWK'         : 'AWK Quelltext',
			'kindCSV'         : 'Komma getrennte Daten',
			'kindDOCBOOK'     : 'Docbook XML Dokument',
                        'kindMarkdown'    : 'Markdown Text',
			// images
			'kindImage'       : 'Bild',
			'kindBMP'         : 'Bitmap Bild',
			'kindJPEG'        : 'JPEG Bild',
			'kindGIF'         : 'GIF Bild',
			'kindPNG'         : 'PNG Bild',
			'kindTIFF'        : 'TIFF Bild',
			'kindTGA'         : 'TGA Bild',
			'kindPSD'         : 'Adobe Photoshop Dokument',
			'kindXBITMAP'     : 'X Bitmap Bild',
			'kindPXM'         : 'Pixelmator Bild',
			// media
			'kindAudio'       : 'Audiodatei',
			'kindAudioMPEG'   : 'MPEG Audio',
			'kindAudioMPEG4'  : 'MPEG-4 Audio',
			'kindAudioMIDI'   : 'MIDI Audio',
			'kindAudioOGG'    : 'Ogg Vorbis Audio',
			'kindAudioWAV'    : 'WAV Audio',
			'AudioPlaylist'   : 'MP3 Playlist',
			'kindVideo'       : 'Videodatei',
			'kindVideoDV'     : 'DV Film',
			'kindVideoMPEG'   : 'MPEG Film',
			'kindVideoMPEG4'  : 'MPEG-4 Film',
			'kindVideoAVI'    : 'AVI Film',
			'kindVideoMOV'    : 'Quick Time Film',
			'kindVideoWM'     : 'Windows Media Film',
			'kindVideoFlash'  : 'Flash Film',
			'kindVideoMKV'    : 'Matroska Film',
			'kindVideoOGG'    : 'Ogg Film'
		}
	};
}
