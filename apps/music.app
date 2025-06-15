def init() {
    global window = window(400, 200)
    window.center()

    tabs = tabs()
    tabs.fill()
    tabs.tab = 5
   
    // HOME
    tab1 = container()
    tabs.add(tab1, "Home")
    
    home_vbox = vScrollContainer()
    home_vbox.fill()
    home_vbox.margin(10)
    tab1.add(home_vbox)

    home_title = label("Home", 15)
    home_vbox.add(home_title)

    theme_title = label("Start where you left!", 11)
    home_vbox.add(theme_title)

    //Playlists
    tab2 = container()
    tabs.add(tab2, "Playlists")

    Playlists_vbox = vScrollContainer()
    Playlists_vbox.fill()
    Playlists_vbox.margin(10)
    tab2.add(Playlists_vbox)

    Playlists_title = label("Playlists", 15)
    Playlists_vbox.add(Playlists_title)

    theme_title = label("Customize your individual music experience!", 11)
    Playlists_vbox.add(theme_title)

    buttons = hcontainer()
    buttons.margin("",6,6,6)
    buttons.height = "shrink"

    global Playlists_button_toggle = button("New Playlist", "Playlists_toggle")
    Playlists_button_toggle.margin(2)
    Playlists_button_toggle.theme = "#FF4060"
    buttons.add(Playlists_button_toggle)

    tab2.add(buttons)

    //Favourites
    tab3 = container()
    tabs.add(tab3, "Favourites")
    
    //Search
    tab4 = container()
    tabs.add(tab4, "Search")

    //Settings
    tab5 = container()
    tabs.add(tab5, "Settings")
     
    window.add(tabs)
}
