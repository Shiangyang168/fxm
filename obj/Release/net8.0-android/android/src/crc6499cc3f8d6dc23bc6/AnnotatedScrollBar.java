package crc6499cc3f8d6dc23bc6;


public class AnnotatedScrollBar
	extends crc6499cc3f8d6dc23bc6.Control
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.AnnotatedScrollBar, Uno.UI", AnnotatedScrollBar.class, __md_methods);
	}


	public AnnotatedScrollBar (android.content.Context p0)
	{
		super (p0);
		if (getClass () == AnnotatedScrollBar.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.AnnotatedScrollBar, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
