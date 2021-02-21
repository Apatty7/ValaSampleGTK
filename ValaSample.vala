using Gtk;

public class ValaSample : Window
{
	private global::Gtk.Box box1;
	
	public ValaSample()
	{
		this.title = "Vala GTK+ Program";
		this.border_width = 10;
		this.window_position = WindowPosition.CENTER;
		this.set_default_size (400, 300);
		this.destroy.connect (Gtk.main_quit);

		/*var button = new Button.with_label ("Click me!");
		button.clicked.connect (() => {
			button.label = "Thank you my friends!";
		});
		
		add (button);*/
		
		Gtk.Button btn = new Gtk.Button.with_label("Dale click aqui!");
		btn.clicked.connect (onclickbtn);
		
		this.box1 = new global::Gtk.Box(Gtk.Orientation.VERTICAL,6);
		box1.pack_start (btn, false, false, 0);
		add(this.box1);
	}
	
	void onclickbtn()
	{
		ValaSpace.Cadena cad = new ValaSpace.Cadena();
		this.title = cad.Saludo();
	}
	
	
	public static int main (string[] args) {
        Gtk.init (ref args);

        var window = new ValaSample ();
        window.show_all ();

        Gtk.main ();
        return 0;
    }
}
