package crc646f1e67afc7241f40;


public class Shell
	extends crc6499cc3f8d6dc23bc6.UserControl
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("UnoApp1.Presentation.Shell, UnoApp1", Shell.class, __md_methods);
	}


	public Shell (android.content.Context p0)
	{
		super (p0);
		if (getClass () == Shell.class) {
			mono.android.TypeManager.Activate ("UnoApp1.Presentation.Shell, UnoApp1", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
