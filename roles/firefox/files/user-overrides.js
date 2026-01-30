// http3
user_pref("network.http.http3.enable", false);

// PREF: disable Top Sites on New Tab page
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);

// disable monitor and relay
user_pref("identity.fxaccounts.toolbar.pxiToolbarEnabled", false);
// user_pref("identity.fxaccounts.toolbar.pxiToolbarEnabled.relayEnabled", false);
// user_pref("identity.fxaccounts.toolbar.pxiToolbarEnabled.monitorEnabled", false);

// PREF: allow websites to ask you to receive site notifications
user_pref("permissions.default.desktop-notification", 0);

// credit: https://github.com/black7375/Firefox-UI-Fix
// only sharpen scrolling
user_pref("apz.overscroll.enabled", true); // DEFAULT NON-LINUX
user_pref("general.smoothScroll", true); // DEFAULT
user_pref("mousewheel.min_line_scroll_amount", 10); // 10-40; adjust this number to your liking; default=5
user_pref("general.smoothScroll.mouseWheel.durationMinMS", 80); // default=50
user_pref("general.smoothScroll.currentVelocityWeighting", "0.15"); // default=.25
user_pref("general.smoothScroll.stopDecelerationWeighting", "0.6"); // default=.4
