public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.NOThuman007.hey-world",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
    var label = new Gtk.Label ("Hello Again World!");
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 500,
            default_width = 500,
            title = "Hello again... World"
        };
        main_window.add (label);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}
