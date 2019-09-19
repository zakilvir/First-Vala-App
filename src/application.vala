public class MyApp : Gtk.Application {
    public MyApp() {
        Object (
            application_id: "com.github.zakilvir.First-Vala-App",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button_hello = new Gtk.Button.with_label("Click me!");
        button_hello.margin = 12;
        var counter = 0;
        button_hello.clicked.connect (() => {
            counter++;
            button_hello.label = "Clicked".concat(" ", counter.to_string(), " times");
            button_hello.sensitive = true;
        });
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 100;
        main_window.default_width = 300;
        main_window.title = "Hello Word";
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}
