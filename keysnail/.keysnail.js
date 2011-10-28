// ========================== KeySnail Init File =========================== //

// You can preserve your code in this area when generating the init file using GUI.
// Put all your code except special key, set*key, hook, blacklist.
// ========================================================================= //
//{{%PRESERVE%
// Put your codes here
//}}%PRESERVE%
// ========================================================================= //

// ========================= Special key settings ========================== //

key.quitKey              = "undefined";
key.helpKey              = "undefined";
key.escapeKey            = "undefined";
key.macroStartKey        = "undefined";
key.macroEndKey          = "undefined";
key.universalArgumentKey = "undefined";
key.negativeArgument1Key = "undefined";
key.negativeArgument2Key = "undefined";
key.negativeArgument3Key = "undefined";
key.suspendKey           = "undefined";

// ================================= Hooks ================================= //

// ============================= Key bindings ============================== //

key.setGlobalKey('C-q', function (ev, arg) {
    KeySnail.openPreference();
}, 'open_preference', true);

key.setGlobalKey('C-n', function (ev) {
    getBrowser().mTabContainer.advanceSelectedTab(1, true);
}, 'Select next tab');

key.setGlobalKey('C-p', function (ev) {
    getBrowser().mTabContainer.advanceSelectedTab(-1, true);
}, 'Select previous tab');

key.setGlobalKey('C-m', function (ev, arg) {
    var toolbox = document.getElementById("navigator-toolbox");
    toolbox.hidden = !toolbox.hidden;
    if (arg || !toolbox.hidden) {
        var statusbar = document.getElementById("status-bar");
        statusbar.hidden = toolbox.hidden;
    }
}, 'Switch pseudo fullscreen', true);

key.setGlobalKey('C-o', function (ev) {
    BrowserBack();
}, 'Back');

key.setGlobalKey('C-i', function (ev) {
    BrowserForward();
}, 'Forward');

key.setGlobalKey('C-u', function (ev) {
    goDoCommand("cmd_scrollPageUp");
}, 'Scroll page up');

key.setGlobalKey('C-d', function (ev) {
    goDoCommand("cmd_scrollPageDown");
}, 'Scroll page down');

key.setViewKey('j', function (ev) {
    util.getSelectionController().scrollLine(true);
}, 'Scroll line down');

key.setViewKey('k', function (ev) {
    key.generateKey(ev.originalTarget, KeyEvent.DOM_VK_UP, true);
}, 'Scroll line up');

key.setViewKey(['g', 'g'], function (ev) {
    goDoCommand("cmd_scrollTop");
}, 'Scroll to the top of the page');

key.setViewKey('G', function (ev) {
    goDoCommand("cmd_scrollBottom");
}, 'Scroll to the bottom of the page');

key.setViewKey('h', function (ev) {
    key.generateKey(ev.originalTarget, KeyEvent.DOM_VK_LEFT, true);
}, 'Scroll left');

key.setViewKey('l', function (ev) {
    key.generateKey(ev.originalTarget, KeyEvent.DOM_VK_RIGHT, true);
}, 'Scroll right');

key.setViewKey(['z', 'o'], function (ev) {
    FullZoom.reduce();
}, 'Reduce text size');

key.setViewKey(['z', 'i'], function (ev) {
    FullZoom.enlarge();
}, 'Enlarge text size');

key.setGlobalKey('C-g', function (ev, arg) {
    let(elem = document.commandDispatcher.focusedElement) elem && elem.blur();
    gBrowser.focus();
    content.focus();
}, 'Focus to the content', true);
