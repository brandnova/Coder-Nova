function mce_filebrowser(field_name, url, type, win) {
    var cmsURL = '/admin/filebrowser/browse/?pop=3&type=' + type;
    tinyMCE.activeEditor.windowManager.open({
        file: cmsURL,
        title: 'File Browser',
        width: 800,
        height: 600,
        resizable: 'yes',
        scrollbars: 'yes',
        inline: 'yes',  // This parameter only has an effect if you use the inlinepopups plugin!
        close_previous: 'no'
    }, {
        window: win,
        input: field_name
    });
    return false;
}