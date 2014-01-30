core = 7.x
api = 2

; ### Modules ###

projects[ctools][version] = "1.3"
projects[ctools][subdir] = "contrib"

projects[views][version] = "3.7"
projects[views][subdir] = "contrib"

projects[jquery_update][version] = "2.3"
projects[jquery_update][subdir] = "contrib"

projects[l10n_update][version] = "1.0-beta3"
projects[l10n_update][subdir] = "contrib"

projects[markdown][version] = "1.2"
projects[markdown][subdir] = "contrib"

projects[wysiwyg][version] = 2.2
projects[wysiwyg][subdir] = "contrib"
projects[wysiwyg][patch][1853550] = "http://drupal.org/files/wyiwyg-support_v4_ckeditor-1853550-42.patch"
 

; # Features related modules #

projects[entity][version] = "1.3"
projects[entity][subdir] = "contrib"

projects[features][version] = "2.0"
projects[features][subdir] = "contrib"

projects[features_extra][version] = "1.0-beta1"
projects[features_extra][subdir] = "contrib"

projects[uuid][version] = "1.0-alpha4"
projects[uuid][subdir] = "contrib"

projects[uuid_features][version] = "1.0-alpha3"
projects[uuid_features][subdir] = "contrib"

projects[node_export][version] = "3.0"
projects[node_export][subdir] = "contrib"


; ### Themes ###

projects[bootstrap][version] = 3.0
projects[bootstrap][subdir] = contrib


; ### Translations ###

libraries[translations][download][type] = "get"
libraries[translations][download][url] = "http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.23.es.po"
libraries[translations][directory_name] = "translations"
libraries[translations][destination] = .
libraries[translations][overwrite] = TRUE

; ### Libraries ###
libraries[ckeditor][download][type] = file
libraries[ckeditor][download][url] =  http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.0.1/ckeditor_4.0.1_full.zip
libraries[ckeditor][download][md5] = d47c37acf2d03ffe6ad39f55e00b099b