package crc64f992831d5fe2b256;


public class NavigationBarPresenter
	extends crc6499cc3f8d6dc23bc6.Control
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.Toolkit.UI.NavigationBarPresenter, Uno.Toolkit.WinUI", NavigationBarPresenter.class, __md_methods);
	}


	public NavigationBarPresenter (android.content.Context p0)
	{
		super (p0);
		if (getClass () == NavigationBarPresenter.class) {
			mono.android.TypeManager.Activate ("Uno.Toolkit.UI.NavigationBarPresenter, Uno.Toolkit.WinUI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
