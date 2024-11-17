package crc6428a6ee3bd5b708b1;


public class FrameView
	extends crc6499cc3f8d6dc23bc6.UserControl
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.Extensions.Navigation.UI.Controls.FrameView, Uno.Extensions.Navigation.UI", FrameView.class, __md_methods);
	}


	public FrameView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == FrameView.class) {
			mono.android.TypeManager.Activate ("Uno.Extensions.Navigation.UI.Controls.FrameView, Uno.Extensions.Navigation.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
