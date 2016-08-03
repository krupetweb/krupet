/**
 * Vietnamese translation
 * @author Chung Thủy f <chungthuyf@gmail.com>
 * @version 2014-12-19
 */
if (elFinder && elFinder.prototype && typeof(elFinder.prototype.i18) == 'object') {
  elFinder.prototype.i18.vi = {
    translator : 'Chung Thủy f &lt;chungthuyf@gmail.com&gt;,Son Nguyen &lt;son.nguyen@catalyst.net.nz&gt;',
    language : 'Ngôn ngữ Việt Nam',
    direction : 'ltr',
    dateFormat : 'd.m.Y H:i',
    fancyDateFormat : '$1 H:i',
    messages : {

        /********************************** errors **********************************/
        'error'                : 'Lỗi',
        'errUnknown'           : 'Lỗi không xác định được.',
        'errUnknownCmd'        : 'Lỗi không rõ lệnh.',
        'errJqui'              : 'Cấu hình jQueryUI không hợp lệ. Các thành phần lựa chọn, kéo và thả phải được bao gồm.',
        'errNode'              : 'elFinder đòi hỏi phần tử DOM phải được tạo ra.',
        'errURL'               : 'Cấu hình elFinder không hợp lệ! URL không được thiết lập tùy chọn.',
        'errAccess'            : 'Truy cập bị từ chối.',
        'errConnect'           : 'Không thể kết nối với backend.',
        'errAbort'             : 'Kết nối bị hủy bỏ.',
        'errTimeout'           : 'Thời gian chờ kết nối đã hết.',
        'errNotFound'          : 'Backend không tìm thấy.',
        'errResponse'          : 'Phản hồi backend không hợp lệ.',
        'errConf'              : 'Cấu hình backend không hợp lệ.',
        'errJSON'              : 'Mô-đun PHP JSON không được cài đặt.',
        'errNoVolumes'         : 'Tập có thể đọc không có sẵn.',
        'errCmdParams'         : 'Thông số không hợp lệ cho lệnh "$1".',
        'errDataNotJSON'       : 'Dữ liệu không phải là JSON.',
        'errDataEmpty'         : 'Dữ liệu trống.',
        'errCmdReq'            : 'Backend đòi hỏi tên lệnh.',
        'errOpen'              : 'Không thể mở "$1".',
        'errNotFolder'         : 'Đối tượng không phải là một thư mục.',
        'errNotFile'           : 'Đối tượng không phải là một tập tin.',
        'errRead'              : 'Không thể đọc "$1".',
        'errWrite'             : 'Không thể ghi vào "$1".',
        'errPerm'              : 'Quyền bị từ chối.',
        'errLocked'            : '"$1" đã bị khóa và không thể đổi tên, di chuyển hoặc loại bỏ.',
        'errExists'            : 'Tập tin có tên "$1" đã tồn tại.',
        'errInvName'           : 'Tên tập tin không hợp lệ.',
        'errFolderNotFound'    : 'Thư mục không tìm thấy.',
        'errFileNotFound'      : 'Tập tin không tìm thấy.',
        'errTrgFolderNotFound' : 'Thư mục đích "$1" không được tìm thấy.',
        'errPopup'             : 'Trình duyệt ngăn chặn mở cửa sổ popup.',
        'errMkdir'             : 'Không thể tạo thư mục "$1".',
        'errMkfile'            : 'Không thể tạo tập tin "$1".',
        'errRename'            : 'Không thể đổi tên "$1".',
        'errCopyFrom'          : 'Sao chép tập tin từ tập "$1" không được phép.',
        'errCopyTo'            : 'Sao chép tập tin tới tập "$1" không được phép.',
        'errUpload'            : 'Tải lên báo lỗi.',
        'errUploadFile'        : 'Không thể tải lên "$1".',
        'errUploadNoFiles'     : 'Không thấy tập tin nào để tải lên.',
        'errUploadTotalSize'   : 'Dữ liệu vượt quá kích thước tối đa cho phép.',
        'errUploadFileSize'    : 'Tập tin vượt quá kích thước tối đa cho phép.',
        'errUploadMime'        : 'Kiểu tập tin không được phép.',
        'errUploadTransfer'    : 'Lỗi khi truyền "$1".',
			'errNotReplace'        : 'Object "$1" already exists at this location and can not be replaced by object with another type.',
			'errReplace'           : 'Unable to replace "$1".',
			'errSave'              : 'Không thể lưu "$1".',
        'errCopy'              : 'Không thể sao chép "$1".',
        'errMove'              : 'Không thể chuyển "$1".',
        'errCopyInItself'      : 'Không thể sao chép "$1" vào chính nó.',
        'errRm'                : 'Không thể xóa "$1".',
        'errRmSrc'             : 'Unable remove source file(s).',
			'errExtract'           : 'Không thể giải nén các tập tin từ"$1".',
        'errArchive'           : 'Không thể tạo ra lưu trữ.',
        'errArcType'           : 'Loại lưu trữ không được hỗ trợ.',
        'errNoArchive'         : 'Tập tin không phải là lưu trữ hoặc có kiểu lưu trữ không được hỗ trợ.',
        'errCmdNoSupport'      : 'Backend không hỗ trợ lệnh này.',
        'errReplByChild'       : 'Thư mục "$1" không thể được thay thế bằng một mục con mà nó chứa.',
        'errArcSymlinks'       : 'Vì lý do bảo mật, từ chối giải nén tập tin lưu trữ có chứa liên kết mềm.',
        'errArcMaxSize'        : 'Tập tin lưu trữ vượt quá kích thước tối đa cho phép.',
        'errResize'            : 'Không thể thay đổi kích thước "$1".',
			'errResizeDegree'      : 'Invalid rotate degree.',
			'errResizeRotate'      : 'Unable to rotate image.',
			'errResizeSize'        : 'Invalid image size.',
			'errResizeNoChange'    : 'Image size not changed.',
        'errUsupportType'      : 'Loại tập tin không được hỗ trợ.',
			'errNotUTF8Content'    : 'File "$1" is not in UTF-8 and cannot be edited.',  // added 9.11.2011
			'errNetMount'          : 'Unable to mount "$1".', // added 17.04.2012
			'errNetMountNoDriver'  : 'Unsupported protocol.',     // added 17.04.2012
			'errNetMountFailed'    : 'Mount failed.',         // added 17.04.2012
			'errNetMountHostReq'   : 'Host required.', // added 18.04.2012
			'errSessionExpires'    : 'Your session has expired due to inactivity.',
			'errCreatingTempDir'   : 'Unable to create temporary directory: "$1"',
			'errFtpDownloadFile'   : 'Unable to download file from FTP: "$1"',
			'errFtpUploadFile'     : 'Unable to upload file to FTP: "$1"',
			'errFtpMkdir'          : 'Unable to create remote directory on FTP: "$1"',
			'errArchiveExec'       : 'Error while archiving files: "$1"',
			'errExtractExec'       : 'Error while extracting files: "$1"',

        /******************************* commands names ********************************/
        'cmdarchive'   : 'Tạo tập tin nén',
        'cmdback'      : 'Trở lại',
        'cmdcopy'      : 'Sao chép',
        'cmdcut'       : 'Cắt',
        'cmddownload'  : 'Tải về',
        'cmdduplicate' : 'Bản sao',
        'cmdedit'      : 'Sửa tập tin',
        'cmdextract'   : 'Giải nén tập tin',
        'cmdforward'   : 'Trước',
        'cmdgetfile'   : 'Chọn tập tin',
        'cmdhelp'      : 'Giới thiệu phần mềm',
        'cmdhome'      : 'Home',
        'cmdinfo'      : 'Thông tin',
        'cmdmkdir'     : 'Thư mục',
        'cmdmkfile'    : 'Tạo tập tin Text',
        'cmdopen'      : 'Mở',
        'cmdpaste'     : 'Paste',
        'cmdquicklook' : 'Xem trước',
        'cmdreload'    : 'Nạp lại',
        'cmdrename'    : 'Đổi tên',
        'cmdrm'        : 'Xóa',
        'cmdsearch'    : 'Tìm tập tin',
        'cmdup'        : 'Go to parent directory',
        'cmdupload'    : 'Tải tập tin lên',
        'cmdview'      : 'Xem',
        'cmdresize'    : 'Resize image',
        'cmdsort'      : 'Sắp xếp',
			'cmdnetmount'  : 'Mount network volume',

        /*********************************** buttons ***********************************/ 
        'btnClose'  : 'Đóng',
        'btnSave'   : 'Lưu',
        'btnRm'     : 'Gỡ bỏ',
        'btnApply'  : 'Áp dụng',
        'btnCancel' : 'Hủy bỏ',
        'btnNo'     : 'Không',
        'btnYes'    : 'Đồng ý',
			'btnMount'  : 'Mount',

        /******************************** notifications ********************************/
        'ntfopen'     : 'Mở thư mục',
        'ntffile'     : 'Mở tập tin',
        'ntfreload'   : 'Nạp lại nội dung thư mục',
        'ntfmkdir'    : 'Tạo thư mục',
        'ntfmkfile'   : 'Tạo tập tin',
        'ntfrm'       : 'Xóa tập tin',
        'ntfcopy'     : 'Sao chép tập tin',
        'ntfmove'     : 'Di chuyển tập tin',
        'ntfprepare'  : 'Chuẩn bị để sao chép các tập tin',
        'ntfrename'   : 'Đổi tên tập tin',
        'ntfupload'   : 'Tải tập tin lên',
        'ntfdownload' : 'Tải tập tin',
        'ntfsave'     : 'Lưu tập tin',
        'ntfarchive'  : 'Tạo tập tin nén',
        'ntfextract'  : 'Giải nén tập tin',
        'ntfsearch'   : 'Tìm kiếm tập tin',
			'ntfresize'   : 'Resizing images',
        'ntfsmth'     : 'Doing something >_<',
        'ntfloadimg'  : 'Đang tải hình ảnh',
			'ntfnetmount' : 'Mounting network volume', // added 18.04.2012
			'ntfdim'      : 'Acquiring image dimension', // added 20.05.2013

        /************************************ dates **********************************/
        'dateUnknown' : 'Chưa biết',
        'Today'       : 'Hôm nay',
        'Yesterday'   : 'Yesterday',
        'msJan'       : 'Jan',
        'msFeb'       : 'Feb',
        'msMar'       : 'Mar',
        'msApr'       : 'Apr',
        'msMay'       : 'May',
        'msJun'       : 'Jun',
        'msJul'       : 'Jul',
        'msAug'       : 'Aug',
        'msSep'       : 'Sep',
        'msOct'       : 'Oct',
        'msNov'       : 'Nov',
        'msDec'       : 'Dec',
        'January'     : 'January',
        'February'    : 'February',
        'March'       : 'March',
        'April'       : 'April',
        'May'         : 'May',
        'June'        : 'June',
        'July'        : 'July',
        'August'      : 'August',
        'September'   : 'September',
        'October'     : 'October',
        'November'    : 'November',
        'December'    : 'December',
        'Sunday'      : 'Sunday', 
        'Monday'      : 'Monday', 
        'Tuesday'     : 'Tuesday', 
        'Wednesday'   : 'Wednesday', 
        'Thursday'    : 'Thursday', 
        'Friday'      : 'Friday', 
        'Saturday'    : 'Saturday',
        'Sun'         : 'Sun', 
        'Mon'         : 'Mon', 
        'Tue'         : 'Tue', 
        'Wed'         : 'Wed', 
        'Thu'         : 'Thu', 
        'Fri'         : 'Fri', 
        'Sat'         : 'Sat',
        
        /******************************** sort variants ********************************/
        'sortname'          : 'by name', 
        'sortkind'          : 'by kind', 
        'sortsize'          : 'by size',
        'sortdate'          : 'by date',
			'sortFoldersFirst'  : 'Folders first',

        /********************************** messages **********************************/
        'confirmReq'      : 'Confirmation required',
        'confirmRm'       : 'Are you sure you want to remove files?<br/>This cannot be undone!',
        'confirmRepl'     : 'Replace old file with new one?',
        'apllyAll'        : 'Apply to all',
        'name'            : 'Name',
        'size'            : 'Size',
        'perms'           : 'Permissions',
        'modify'          : 'Modified',
        'kind'            : 'Kind',
        'read'            : 'read',
        'write'           : 'write',
        'noaccess'        : 'no access',
        'and'             : 'and',
        'unknown'         : 'unknown',
        'selectall'       : 'Select all files',
        'selectfiles'     : 'Select file(s)',
        'selectffile'     : 'Select first file',
        'selectlfile'     : 'Select last file',
        'viewlist'        : 'List view',
        'viewicons'       : 'Icons view',
        'places'          : 'Places',
        'calc'            : 'Calculate', 
        'path'            : 'Path',
        'aliasfor'        : 'Alias for',
        'locked'          : 'Locked',
        'dim'             : 'Dimensions',
        'files'           : 'Files',
        'folders'         : 'Folders',
        'items'           : 'Items',
        'yes'             : 'yes',
        'no'              : 'no',
        'link'            : 'Link',
        'searcresult'     : 'Search results',  
        'selected'        : 'selected items',
        'about'           : 'About',
        'shortcuts'       : 'Shortcuts',
        'help'            : 'Help',
        'webfm'           : 'Web file manager',
        'ver'             : 'Version',
        'protocolver'     : 'protocol version',
        'homepage'        : 'Project home',
        'docs'            : 'Documentation',
        'github'          : 'Fork us on Github',
        'twitter'         : 'Follow us on twitter',
        'facebook'        : 'Join us on facebook',
        'team'            : 'Team',
        'chiefdev'        : 'chief developer',
        'developer'       : 'developer',
        'contributor'     : 'contributor',
        'maintainer'      : 'maintainer',
        'translator'      : 'translator',
        'icons'           : 'Icons',
        'dontforget'      : 'and don\'t forget to take your towel',
        'shortcutsof'     : 'Shortcuts disabled',
        'dropFiles'       : 'Drop files here',
        'or'              : 'or',
        'selectForUpload' : 'Select files to upload',
        'moveFiles'       : 'Move files',
        'copyFiles'       : 'Copy files',
        'rmFromPlaces'    : 'Remove from places',
        'aspectRatio'     : 'Aspect ratio',
        'scale'           : 'Scale',
        'width'           : 'Width',
        'height'          : 'Height',
        'resize'          : 'Resize',
        'crop'            : 'Crop',
        'rotate'          : 'Rotate',
        'rotate-cw'       : 'Rotate 90 degrees CW',
        'rotate-ccw'      : 'Rotate 90 degrees CCW',
        'degree'          : 'Degree',
			'netMountDialogTitle' : 'Mount network volume', // added 18.04.2012
			'protocol'            : 'Protocol', // added 18.04.2012
			'host'                : 'Host', // added 18.04.2012
			'port'                : 'Port', // added 18.04.2012
			'user'                : 'User', // added 18.04.2012
			'pass'                : 'Password', // added 18.04.2012

        /********************************** mimetypes **********************************/
        'kindUnknown'     : 'Unknown',
        'kindFolder'      : 'Folder',
        'kindAlias'       : 'Alias',
        'kindAliasBroken' : 'Broken alias',
        // applications
        'kindApp'         : 'Application',
        'kindPostscript'  : 'Postscript document',
        'kindMsOffice'    : 'Microsoft Office document',
        'kindMsWord'      : 'Microsoft Word document',
        'kindMsExcel'     : 'Microsoft Excel document',
        'kindMsPP'        : 'Microsoft Powerpoint presentation',
        'kindOO'          : 'Open Office document',
        'kindAppFlash'    : 'Flash application',
        'kindPDF'         : 'Portable Document Format (PDF)',
        'kindTorrent'     : 'Bittorrent file',
        'kind7z'          : '7z archive',
        'kindTAR'         : 'TAR archive',
        'kindGZIP'        : 'GZIP archive',
        'kindBZIP'        : 'BZIP archive',
        'kindXZ'          : 'XZ archive',
        'kindZIP'         : 'ZIP archive',
        'kindRAR'         : 'RAR archive',
        'kindJAR'         : 'Java JAR file',
        'kindTTF'         : 'True Type font',
        'kindOTF'         : 'Open Type font',
        'kindRPM'         : 'RPM package',
        // texts
        'kindText'        : 'Text document',
        'kindTextPlain'   : 'Plain text',
        'kindPHP'         : 'PHP source',
        'kindCSS'         : 'Cascading style sheet',
        'kindHTML'        : 'HTML document',
        'kindJS'          : 'Javascript source',
        'kindRTF'         : 'Rich Text Format',
        'kindC'           : 'C source',
        'kindCHeader'     : 'C header source',
        'kindCPP'         : 'C++ source',
        'kindCPPHeader'   : 'C++ header source',
        'kindShell'       : 'Unix shell script',
        'kindPython'      : 'Python source',
        'kindJava'        : 'Java source',
        'kindRuby'        : 'Ruby source',
        'kindPerl'        : 'Perl script',
        'kindSQL'         : 'SQL source',
        'kindXML'         : 'XML document',
        'kindAWK'         : 'AWK source',
        'kindCSV'         : 'Comma separated values',
        'kindDOCBOOK'     : 'Docbook XML document',
        // images
        'kindImage'       : 'Image',
        'kindBMP'         : 'BMP image',
        'kindJPEG'        : 'JPEG image',
        'kindGIF'         : 'GIF Image',
        'kindPNG'         : 'PNG Image',
        'kindTIFF'        : 'TIFF image',
        'kindTGA'         : 'TGA image',
        'kindPSD'         : 'Adobe Photoshop image',
        'kindXBITMAP'     : 'X bitmap image',
        'kindPXM'         : 'Pixelmator image',
        // media
        'kindAudio'       : 'Audio media',
        'kindAudioMPEG'   : 'MPEG audio',
        'kindAudioMPEG4'  : 'MPEG-4 audio',
        'kindAudioMIDI'   : 'MIDI audio',
        'kindAudioOGG'    : 'Ogg Vorbis audio',
        'kindAudioWAV'    : 'WAV audio',
        'AudioPlaylist'   : 'MP3 playlist',
        'kindVideo'       : 'Video media',
        'kindVideoDV'     : 'DV movie',
        'kindVideoMPEG'   : 'MPEG movie',
        'kindVideoMPEG4'  : 'MPEG-4 movie',
        'kindVideoAVI'    : 'AVI movie',
        'kindVideoMOV'    : 'Quick Time movie',
        'kindVideoWM'     : 'Windows Media movie',
        'kindVideoFlash'  : 'Flash movie',
        'kindVideoMKV'    : 'Matroska movie',
        'kindVideoOGG'    : 'Ogg movie'
    }
  };
}
