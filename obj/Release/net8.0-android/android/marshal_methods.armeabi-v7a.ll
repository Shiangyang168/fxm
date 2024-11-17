; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [170 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [340 x i32] [
	i32 39109920, ; 0: Newtonsoft.Json.dll => 0x254c520 => 29
	i32 42639949, ; 1: System.Threading.Thread => 0x28aa24d => 157
	i32 98325684, ; 2: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 13
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 146
	i32 136506761, ; 4: SkiaSharp.Views.Windows => 0x822ed89 => 35
	i32 149143365, ; 5: Uno.Themes.WinUI => 0x8e3bf45 => 72
	i32 169796560, ; 6: Uno.Foundation => 0xa1ee3d0 => 78
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 102
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 115
	i32 220171995, ; 9: System.Diagnostics.Debug => 0xd1f8edb => 118
	i32 221958352, ; 10: Microsoft.Extensions.Diagnostics.dll => 0xd3ad0d0 => 12
	i32 230752869, ; 11: Microsoft.CSharp.dll => 0xdc10265 => 107
	i32 246610117, ; 12: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 141
	i32 265466492, ; 13: Uno.UI.Dispatching.dll => 0xfd2b27c => 81
	i32 277295747, ; 14: Refit.HttpClientFactory => 0x10873283 => 31
	i32 291275502, ; 15: Microsoft.Extensions.Http.dll => 0x115c82ee => 19
	i32 292939511, ; 16: Uno.Extensions.Reactive.UI => 0x1175e6f7 => 61
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 90
	i32 335589487, ; 18: Uno.UI.FluentTheme.v2.dll => 0x1400b06f => 84
	i32 379916513, ; 19: System.Threading.Thread.dll => 0x16a510e1 => 157
	i32 381208447, ; 20: Uno.Extensions.Storage => 0x16b8c77f => 65
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 130
	i32 395744057, ; 22: _Microsoft.Android.Resource.Designer => 0x17969339 => 0
	i32 439217253, ; 23: Uno.Extensions.Serialization.Http.dll => 0x1a2dec65 => 63
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 112
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 95
	i32 456227837, ; 26: System.Web.HttpUtility.dll => 0x1b317bfd => 159
	i32 459347974, ; 27: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 150
	i32 469710990, ; 28: System.dll => 0x1bff388e => 163
	i32 498788369, ; 29: System.ObjectModel => 0x1dbae811 => 136
	i32 504833739, ; 30: SkiaSharp.SceneGraph => 0x1e1726cb => 33
	i32 513247710, ; 31: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 28
	i32 525008092, ; 32: SkiaSharp.dll => 0x1f4afcdc => 32
	i32 530272170, ; 33: System.Linq.Queryable => 0x1f9b4faa => 128
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 21
	i32 545304856, ; 35: System.Runtime.Extensions => 0x2080b118 => 144
	i32 545795345, ; 36: Microsoft.Extensions.Logging.Configuration.dll => 0x20882d11 => 23
	i32 662205335, ; 37: System.Text.Encodings.Web.dll => 0x27787397 => 154
	i32 672442732, ; 38: System.Collections.Concurrent => 0x2814a96c => 108
	i32 682801322, ; 39: Uno.Extensions.Localization.dll => 0x28b2b8aa => 53
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 160
	i32 690602616, ; 41: SkiaSharp.Skottie.dll => 0x2929c278 => 34
	i32 692151471, ; 42: Microsoft.Extensions.Logging.Console.dll => 0x294164af => 24
	i32 715367844, ; 43: Uno.UI.Toolkit.dll => 0x2aa3a5a4 => 85
	i32 722857257, ; 44: System.Runtime.Loader.dll => 0x2b15ed29 => 147
	i32 731701662, ; 45: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 27
	i32 738469988, ; 46: SkiaSharp.SceneGraph.dll => 0x2c042864 => 33
	i32 759454413, ; 47: System.Net.Requests => 0x2d445acd => 134
	i32 764426867, ; 48: Uno.Extensions.Reactive.dll => 0x2d903a73 => 59
	i32 775507847, ; 49: System.IO.Compression => 0x2e394f87 => 125
	i32 789151979, ; 50: Microsoft.Extensions.Options => 0x2f0980eb => 26
	i32 803162122, ; 51: Uno.Extensions.Serialization.Refit => 0x2fdf480a => 64
	i32 804715423, ; 52: System.Data.Common => 0x2ff6fb9f => 117
	i32 823281589, ; 53: System.Private.Uri.dll => 0x311247b5 => 137
	i32 830298997, ; 54: System.IO.Compression.Brotli => 0x317d5b75 => 124
	i32 870133532, ; 55: Uno.Diagnostics.Eventing => 0x33dd2f1c => 44
	i32 878954865, ; 56: System.Net.Http.Json => 0x3463c971 => 131
	i32 904024072, ; 57: System.ComponentModel.Primitives.dll => 0x35e25008 => 113
	i32 908337989, ; 58: Refit => 0x36242345 => 30
	i32 952186615, ; 59: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 145
	i32 955402788, ; 60: Newtonsoft.Json => 0x38f24a24 => 29
	i32 975874589, ; 61: System.Xml.XDocument => 0x3a2aaa1d => 162
	i32 987214855, ; 62: System.Diagnostics.Tools => 0x3ad7b407 => 120
	i32 992768348, ; 63: System.Collections.dll => 0x3b2c715c => 112
	i32 999186168, ; 64: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 16
	i32 1012816738, ; 65: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 101
	i32 1019214401, ; 66: System.Drawing => 0x3cbffa41 => 123
	i32 1028951442, ; 67: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 11
	i32 1035644815, ; 68: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 91
	i32 1036536393, ; 69: System.Drawing.Primitives.dll => 0x3dc84a49 => 122
	i32 1044663988, ; 70: System.Linq.Expressions.dll => 0x3e444eb4 => 127
	i32 1048992957, ; 71: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 13
	i32 1060652910, ; 72: Uno.Foundation.dll => 0x3f38476e => 78
	i32 1062519191, ; 73: Uno.UI.FluentTheme.v1 => 0x3f54c197 => 83
	i32 1067348891, ; 74: Uno.Material.WinUI.dll => 0x3f9e739b => 71
	i32 1082857460, ; 75: System.ComponentModel.TypeConverter => 0x408b17f4 => 114
	i32 1084122840, ; 76: Xamarin.Kotlin.StdLib => 0x409e66d8 => 104
	i32 1098259244, ; 77: System => 0x41761b2c => 163
	i32 1106973742, ; 78: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 8
	i32 1110309514, ; 79: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 18
	i32 1122549021, ; 80: Refit.HttpClientFactory.dll => 0x42e8bd1d => 31
	i32 1123088448, ; 81: Uno.Diagnostics.Eventing.dll => 0x42f0f840 => 44
	i32 1127624469, ; 82: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 25
	i32 1135856952, ; 83: Uno.Extensions.Serialization => 0x43b3cd38 => 62
	i32 1145085672, ; 84: System.Linq.Async.dll => 0x44409ee8 => 36
	i32 1173126369, ; 85: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 14
	i32 1204836159, ; 86: Uno.Extensions.Http.WinUI => 0x47d0573f => 52
	i32 1208915890, ; 87: Uno.Core.Extensions.Collections.dll => 0x480e97b2 => 39
	i32 1214827643, ; 88: CommunityToolkit.Mvvm => 0x4868cc7b => 2
	i32 1221379029, ; 89: Uno.Extensions.Configuration => 0x48ccc3d5 => 45
	i32 1293217323, ; 90: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 94
	i32 1324164729, ; 91: System.Linq => 0x4eed2679 => 129
	i32 1349314452, ; 92: Uno.Core.Extensions.Collections => 0x506ce794 => 39
	i32 1367676925, ; 93: Microsoft.Extensions.Configuration.CommandLine => 0x518517fd => 6
	i32 1376866003, ; 94: Xamarin.AndroidX.SavedState => 0x52114ed3 => 101
	i32 1379779777, ; 95: System.Resources.ResourceManager => 0x523dc4c1 => 143
	i32 1397120723, ; 96: Uno.Foundation.Logging.dll => 0x53465ed3 => 70
	i32 1397612400, ; 97: Uno.Extensions.Storage.UI => 0x534ddf70 => 66
	i32 1408764838, ; 98: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 149
	i32 1437299793, ; 99: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x55ab7451 => 96
	i32 1441095154, ; 100: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0x55e55df2 => 98
	i32 1443589491, ; 101: Uno.UI.dll => 0x560b6d73 => 86
	i32 1453312822, ; 102: System.Diagnostics.Tools.dll => 0x569fcb36 => 120
	i32 1457743152, ; 103: System.Runtime.Extensions.dll => 0x56e36530 => 144
	i32 1461234159, ; 104: System.Collections.Immutable.dll => 0x5718a9ef => 109
	i32 1462112819, ; 105: System.IO.Compression.dll => 0x57261233 => 125
	i32 1463689408, ; 106: Uno.UI.Adapter.Microsoft.Extensions.Logging.dll => 0x573e20c0 => 76
	i32 1470490898, ; 107: Microsoft.Extensions.Primitives => 0x57a5e912 => 28
	i32 1479771757, ; 108: System.Collections.Immutable => 0x5833866d => 109
	i32 1480492111, ; 109: System.IO.Compression.Brotli.dll => 0x583e844f => 124
	i32 1505131794, ; 110: Microsoft.Extensions.Http => 0x59b67d12 => 19
	i32 1516000046, ; 111: Uno.UI => 0x5a5c532e => 86
	i32 1521091094, ; 112: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 16
	i32 1543031311, ; 113: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 155
	i32 1551044117, ; 114: UnoApp1.dll => 0x5c730e15 => 106
	i32 1622152042, ; 115: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 99
	i32 1629994806, ; 116: Uno.Core.Extensions.Disposables.dll => 0x6127bf36 => 40
	i32 1631650422, ; 117: Uno.Fonts.Roboto.dll => 0x61410276 => 69
	i32 1632842087, ; 118: Microsoft.Extensions.Configuration.Json => 0x61533167 => 9
	i32 1639515021, ; 119: System.Net.Http.dll => 0x61b9038d => 132
	i32 1639986890, ; 120: System.Text.RegularExpressions => 0x61c036ca => 155
	i32 1657153582, ; 121: System.Runtime => 0x62c6282e => 151
	i32 1674998649, ; 122: Uno.Extensions.Localization.WinUI => 0x63d67379 => 54
	i32 1676300140, ; 123: Uno.Core.Extensions.Disposables => 0x63ea4f6c => 40
	i32 1677501392, ; 124: System.Net.Primitives.dll => 0x63fca3d0 => 133
	i32 1679769178, ; 125: System.Security.Cryptography => 0x641f3e5a => 152
	i32 1701541528, ; 126: System.Diagnostics.Debug.dll => 0x656b7698 => 118
	i32 1709705337, ; 127: UniversalImageLoader.dll => 0x65e80879 => 77
	i32 1723041879, ; 128: Uno.UI.Composition.dll => 0x66b38857 => 80
	i32 1725957857, ; 129: Uno.Fonts.Fluent => 0x66e006e1 => 67
	i32 1746316138, ; 130: Mono.Android.Export => 0x6816ab6a => 167
	i32 1763938596, ; 131: System.Diagnostics.TraceSource.dll => 0x69239124 => 121
	i32 1766324549, ; 132: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 102
	i32 1768896173, ; 133: Uno.UI.Toolkit => 0x696f36ad => 85
	i32 1770582343, ; 134: Microsoft.Extensions.Logging.dll => 0x6988f147 => 21
	i32 1780572499, ; 135: Mono.Android.Runtime.dll => 0x6a216153 => 168
	i32 1786074254, ; 136: Uno.Toolkit.WinUI.dll => 0x6a75548e => 74
	i32 1788241197, ; 137: Xamarin.AndroidX.Fragment => 0x6a96652d => 95
	i32 1788999356, ; 138: Uno.Extensions.Hosting.WinUI => 0x6aa1f6bc => 49
	i32 1808609942, ; 139: Xamarin.AndroidX.Loader => 0x6bcd3296 => 99
	i32 1809937687, ; 140: Uno.Core.Extensions.Logging.Singleton => 0x6be17517 => 43
	i32 1813058853, ; 141: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 104
	i32 1817093425, ; 142: Uno.Core.Extensions => 0x6c4ea531 => 38
	i32 1824175904, ; 143: System.Text.Encoding.Extensions => 0x6cbab720 => 153
	i32 1824722060, ; 144: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 149
	i32 1828688058, ; 145: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 22
	i32 1858542181, ; 146: System.Linq.Expressions => 0x6ec71a65 => 127
	i32 1870277092, ; 147: System.Reflection.Primitives => 0x6f7a29e4 => 142
	i32 1872449074, ; 148: Uno.Core.Extensions.Logging.Singleton.dll => 0x6f9b4e32 => 43
	i32 1890584506, ; 149: Uno.Extensions.Http.dll => 0x70b007ba => 50
	i32 1900610850, ; 150: System.Resources.ResourceManager.dll => 0x71490522 => 143
	i32 1910275211, ; 151: System.Collections.NonGeneric.dll => 0x71dc7c8b => 110
	i32 1915057582, ; 152: Uno.Extensions.Core.dll => 0x722575ae => 46
	i32 1919016533, ; 153: Xamarin.AndroidX.Core.SplashScreen.dll => 0x7261de55 => 93
	i32 1939592360, ; 154: System.Private.Xml.Linq => 0x739bd4a8 => 138
	i32 1959883321, ; 155: CommonServiceLocator.dll => 0x74d17239 => 1
	i32 1968388702, ; 156: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 3
	i32 1990835912, ; 157: Uno.Extensions.Logging.WinUI.dll => 0x76a9bec8 => 55
	i32 2003289603, ; 158: Uno.UI.Composition => 0x7767c603 => 80
	i32 2028505978, ; 159: Uno.UI.BindingHelper.Android => 0x78e88b7a => 79
	i32 2035688082, ; 160: Uno.Extensions.Navigation.Toolkit.UI.dll => 0x79562292 => 57
	i32 2041071333, ; 161: Uno.Extensions.Hosting.dll => 0x79a846e5 => 48
	i32 2045470958, ; 162: System.Private.Xml => 0x79eb68ee => 139
	i32 2048278909, ; 163: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 5
	i32 2055257422, ; 164: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 97
	i32 2070888862, ; 165: System.Diagnostics.TraceSource => 0x7b6f419e => 121
	i32 2072397586, ; 166: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 15
	i32 2074670005, ; 167: Uno.Extensions.Navigation => 0x7ba8f3b5 => 56
	i32 2079903147, ; 168: System.Runtime.dll => 0x7bf8cdab => 151
	i32 2090596640, ; 169: System.Numerics.Vectors => 0x7c9bf920 => 135
	i32 2091812871, ; 170: Uno => 0x7cae8807 => 88
	i32 2127167465, ; 171: System.Console => 0x7ec9ffe9 => 116
	i32 2142222486, ; 172: Uno.Extensions.Reactive.UI.dll => 0x7fafb896 => 61
	i32 2142473426, ; 173: System.Collections.Specialized => 0x7fb38cd2 => 111
	i32 2181898931, ; 174: Microsoft.Extensions.Options.dll => 0x820d22b3 => 26
	i32 2192057212, ; 175: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 22
	i32 2193016926, ; 176: System.ObjectModel.dll => 0x82b6c85e => 136
	i32 2193681939, ; 177: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 0x82c0ee13 => 7
	i32 2201107256, ; 178: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 105
	i32 2201231467, ; 179: System.Net.Http => 0x8334206b => 132
	i32 2220367410, ; 180: Xamarin.AndroidX.Core.SplashScreen => 0x84581e32 => 93
	i32 2266799131, ; 181: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 4
	i32 2279396462, ; 182: Uno.Extensions.Http.WinUI.dll => 0x87dcd46e => 52
	i32 2279755925, ; 183: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 100
	i32 2285131287, ; 184: Uno.UI.BindingHelper.Android.dll => 0x88345617 => 79
	i32 2300224847, ; 185: Uno.Fonts.Fluent.dll => 0x891aa54f => 67
	i32 2305521784, ; 186: System.Private.CoreLib.dll => 0x896b7878 => 165
	i32 2317946347, ; 187: Uno.Toolkit.dll => 0x8a290deb => 73
	i32 2352437935, ; 188: Uno.Extensions.Localization => 0x8c375aaf => 53
	i32 2353062107, ; 189: System.Net.Primitives => 0x8c40e0db => 133
	i32 2368005991, ; 190: System.Xml.ReaderWriter.dll => 0x8d24e767 => 161
	i32 2369295079, ; 191: Uno.UI.Adapter.Microsoft.Extensions.Logging => 0x8d3892e7 => 76
	i32 2371007202, ; 192: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 3
	i32 2392695213, ; 193: Uno.Core.Extensions.Logging => 0x8e9da1ad => 42
	i32 2401565422, ; 194: System.Web.HttpUtility => 0x8f24faee => 159
	i32 2435356389, ; 195: System.Console.dll => 0x912896e5 => 116
	i32 2471841756, ; 196: netstandard.dll => 0x93554fdc => 164
	i32 2475788418, ; 197: Java.Interop.dll => 0x93918882 => 166
	i32 2510129581, ; 198: UnoApp1 => 0x959d89ad => 106
	i32 2527692703, ; 199: Uno.Extensions.Navigation.Toolkit.UI => 0x96a9879f => 57
	i32 2538310050, ; 200: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 141
	i32 2541720957, ; 201: Uno.Extensions.Storage.dll => 0x977f957d => 65
	i32 2562349572, ; 202: Microsoft.CSharp => 0x98ba5a04 => 107
	i32 2570120770, ; 203: System.Text.Encodings.Web => 0x9930ee42 => 154
	i32 2570264401, ; 204: Uno.Toolkit.WinUI.Material => 0x99331f51 => 75
	i32 2585220780, ; 205: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 153
	i32 2592341985, ; 206: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 14
	i32 2605712449, ; 207: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 105
	i32 2616218305, ; 208: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 25
	i32 2617129537, ; 209: System.Private.Xml.dll => 0x9bfe3a41 => 139
	i32 2663355646, ; 210: Uno.Fonts.OpenSans => 0x9ebf94fe => 68
	i32 2663698177, ; 211: System.Runtime.Loader => 0x9ec4cf01 => 147
	i32 2664396074, ; 212: System.Xml.XDocument.dll => 0x9ecf752a => 162
	i32 2665622720, ; 213: System.Drawing.Primitives => 0x9ee22cc0 => 122
	i32 2676780864, ; 214: System.Data.Common.dll => 0x9f8c6f40 => 117
	i32 2691668139, ; 215: Uno.Extensions.Hosting => 0xa06f98ab => 48
	i32 2694815761, ; 216: Uno.Toolkit.WinUI => 0xa09fa011 => 74
	i32 2698016175, ; 217: Uno.Toolkit => 0xa0d075af => 73
	i32 2704759763, ; 218: Uno.Extensions.Localization.WinUI.dll => 0xa1375bd3 => 54
	i32 2715334215, ; 219: System.Threading.Tasks.dll => 0xa1d8b647 => 156
	i32 2724373263, ; 220: System.Runtime.Numerics.dll => 0xa262a30f => 148
	i32 2732626843, ; 221: Xamarin.AndroidX.Activity => 0xa2e0939b => 90
	i32 2740232756, ; 222: Uno.Xaml => 0xa354a234 => 87
	i32 2741810278, ; 223: Uno.UI.FluentTheme => 0xa36cb466 => 82
	i32 2748088231, ; 224: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 145
	i32 2766642685, ; 225: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xa4e79dfd => 98
	i32 2778768386, ; 226: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 103
	i32 2780199943, ; 227: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa5b67c07 => 96
	i32 2795259683, ; 228: Uno.Extensions.Serialization.dll => 0xa69c4723 => 62
	i32 2818335264, ; 229: System.Linq.Async => 0xa7fc6220 => 36
	i32 2825882166, ; 230: Uno.Extensions.Navigation.dll => 0xa86f8a36 => 56
	i32 2853208004, ; 231: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 103
	i32 2861098320, ; 232: Mono.Android.Export.dll => 0xaa88e550 => 167
	i32 2909740682, ; 233: System.Private.CoreLib => 0xad6f1e8a => 165
	i32 2911054922, ; 234: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 15
	i32 2919462931, ; 235: System.Numerics.Vectors.dll => 0xae037813 => 135
	i32 2959614098, ; 236: System.ComponentModel.dll => 0xb0682092 => 115
	i32 2961864971, ; 237: CommonServiceLocator => 0xb08a790b => 1
	i32 2971004615, ; 238: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 27
	i32 2978675010, ; 239: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 94
	i32 3005011831, ; 240: Uno.Extensions.Navigation.UI.dll => 0xb31cd777 => 58
	i32 3020703001, ; 241: Microsoft.Extensions.Diagnostics => 0xb40c4519 => 12
	i32 3030246817, ; 242: Uno.Themes.WinUI.dll => 0xb49de5a1 => 72
	i32 3038032645, ; 243: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 0
	i32 3051870476, ; 244: UniversalImageLoader => 0xb5e7d90c => 77
	i32 3056056575, ; 245: Uno.Extensions.Logging.WinUI => 0xb627b8ff => 55
	i32 3059408633, ; 246: Mono.Android.Runtime => 0xb65adef9 => 168
	i32 3059793426, ; 247: System.ComponentModel.Primitives => 0xb660be12 => 113
	i32 3075834255, ; 248: System.Threading.Tasks => 0xb755818f => 156
	i32 3103452968, ; 249: Uno.Fonts.OpenSans.dll => 0xb8faef28 => 68
	i32 3103603957, ; 250: Uno.Extensions.Http => 0xb8fd3cf5 => 50
	i32 3109243939, ; 251: Microsoft.Extensions.Logging.Configuration => 0xb9534c23 => 23
	i32 3112522778, ; 252: Uno.Core.Extensions.Logging.dll => 0xb985541a => 42
	i32 3115593101, ; 253: Uno.Extensions.Serialization.Refit.dll => 0xb9b42d8d => 64
	i32 3159123045, ; 254: System.Reflection.Primitives.dll => 0xbc4c6465 => 142
	i32 3168279497, ; 255: SkiaSharp.Views.Windows.dll => 0xbcd81bc9 => 35
	i32 3185890423, ; 256: Uno.Fonts.Roboto => 0xbde4d477 => 69
	i32 3188578740, ; 257: Microsoft.Extensions.Configuration.EnvironmentVariables => 0xbe0dd9b4 => 7
	i32 3220365878, ; 258: System.Threading => 0xbff2e236 => 158
	i32 3240218764, ; 259: Uno.Extensions.Http.Refit.dll => 0xc121d08c => 51
	i32 3251660905, ; 260: Uno.Extensions.Navigation.UI => 0xc1d06869 => 58
	i32 3265493905, ; 261: System.Linq.Queryable.dll => 0xc2a37b91 => 128
	i32 3265966069, ; 262: Uno.Core.Extensions.Equality.dll => 0xc2aaaff5 => 41
	i32 3298944031, ; 263: Uno.UI.Dispatching => 0xc4a1e41f => 81
	i32 3310327208, ; 264: Uno.UI.FluentTheme.v1.dll => 0xc54f95a8 => 83
	i32 3316684772, ; 265: System.Net.Requests.dll => 0xc5b097e4 => 134
	i32 3340387945, ; 266: SkiaSharp => 0xc71a4669 => 32
	i32 3343121208, ; 267: Uno.Core.Extensions.Equality => 0xc743fb38 => 41
	i32 3358260929, ; 268: System.Text.Json => 0xc82afec1 => 37
	i32 3362522851, ; 269: Xamarin.AndroidX.Core => 0xc86c06e3 => 92
	i32 3366347497, ; 270: Java.Interop => 0xc8a662e9 => 166
	i32 3374999561, ; 271: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 100
	i32 3404864099, ; 272: Microsoft.Extensions.Hosting.dll => 0xcaf21a63 => 17
	i32 3421170118, ; 273: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 5
	i32 3428513518, ; 274: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 10
	i32 3430777524, ; 275: netstandard => 0xcc7d82b4 => 164
	i32 3445948150, ; 276: Uno.dll => 0xcd64fef6 => 88
	i32 3471231830, ; 277: Microsoft.Extensions.Hosting => 0xcee6cb56 => 17
	i32 3471940407, ; 278: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 114
	i32 3476120550, ; 279: Mono.Android => 0xcf3163e6 => 169
	i32 3485117614, ; 280: System.Text.Json.dll => 0xcfbaacae => 37
	i32 3502561797, ; 281: Uno.Material.WinUI => 0xd0c4da05 => 71
	i32 3509114376, ; 282: System.Xml.Linq => 0xd128d608 => 160
	i32 3592435036, ; 283: Microsoft.Extensions.Localization.Abstractions => 0xd620355c => 20
	i32 3602521170, ; 284: Uno.Extensions.Configuration.dll => 0xd6ba1c52 => 45
	i32 3608519521, ; 285: System.Linq.dll => 0xd715a361 => 129
	i32 3620450613, ; 286: Microsoft.Extensions.Configuration.CommandLine.dll => 0xd7cbb135 => 6
	i32 3627857944, ; 287: Uno.UI.Lottie.dll => 0xd83cb818 => 89
	i32 3641597786, ; 288: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 97
	i32 3657292374, ; 289: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 4
	i32 3663323240, ; 290: SkiaSharp.Skottie => 0xda59e068 => 34
	i32 3663362033, ; 291: Uno.Extensions.Reactive.Messaging.dll => 0xda5a77f1 => 60
	i32 3672681054, ; 292: Mono.Android.dll => 0xdae8aa5e => 169
	i32 3681713706, ; 293: Uno.Extensions.Http.Refit => 0xdb727e2a => 51
	i32 3709375766, ; 294: Uno.Core.Extensions.dll => 0xdd189516 => 38
	i32 3712888630, ; 295: Uno.Extensions.Core.UI.dll => 0xdd4e2f36 => 47
	i32 3722202641, ; 296: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 9
	i32 3737834244, ; 297: System.Net.Http.Json.dll => 0xdecad304 => 131
	i32 3748608112, ; 298: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 119
	i32 3758424670, ; 299: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 8
	i32 3776403777, ; 300: Microsoft.Extensions.Localization.Abstractions.dll => 0xe1175941 => 20
	i32 3792276235, ; 301: System.Collections.NonGeneric => 0xe2098b0b => 110
	i32 3800964585, ; 302: Uno.Extensions.Reactive => 0xe28e1de9 => 59
	i32 3802395368, ; 303: System.Collections.Specialized.dll => 0xe2a3f2e8 => 111
	i32 3823082795, ; 304: System.Security.Cryptography.dll => 0xe3df9d2b => 152
	i32 3841636137, ; 305: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 11
	i32 3849253459, ; 306: System.Runtime.InteropServices.dll => 0xe56ef253 => 146
	i32 3883980760, ; 307: Uno.Extensions.Core.UI => 0xe780d7d8 => 47
	i32 3896106733, ; 308: System.Collections.Concurrent.dll => 0xe839deed => 108
	i32 3896760992, ; 309: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 92
	i32 3916235921, ; 310: Uno.Extensions.Reactive.Messaging => 0xe96d0491 => 60
	i32 3928044579, ; 311: System.Xml.ReaderWriter => 0xea213423 => 161
	i32 3952377267, ; 312: Uno.UI.Lottie => 0xeb947db3 => 89
	i32 3955647286, ; 313: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 91
	i32 3977563511, ; 314: Uno.Xaml.dll => 0xed14cd77 => 87
	i32 3994683220, ; 315: Uno.Extensions.Core => 0xee1a0754 => 46
	i32 4025784931, ; 316: System.Memory => 0xeff49a63 => 130
	i32 4054681211, ; 317: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 140
	i32 4068434129, ; 318: System.Private.Xml.Linq.dll => 0xf27f60d1 => 138
	i32 4068936625, ; 319: Uno.Extensions.Hosting.WinUI.dll => 0xf2870bb1 => 49
	i32 4072113426, ; 320: Uno.Foundation.Logging => 0xf2b78512 => 70
	i32 4073602200, ; 321: System.Threading.dll => 0xf2ce3c98 => 158
	i32 4075152723, ; 322: Microsoft.Extensions.Logging.Console => 0xf2e5e553 => 24
	i32 4076921614, ; 323: Uno.Toolkit.WinUI.Material.dll => 0xf300e30e => 75
	i32 4078967171, ; 324: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 18
	i32 4098311745, ; 325: Uno.UI.FluentTheme.dll => 0xf4474641 => 82
	i32 4099507663, ; 326: System.Drawing.dll => 0xf45985cf => 123
	i32 4100113165, ; 327: System.Private.Uri => 0xf462c30d => 137
	i32 4126470640, ; 328: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 10
	i32 4127667938, ; 329: System.IO.FileSystem.Watcher => 0xf60736e2 => 126
	i32 4141189321, ; 330: Uno.UI.FluentTheme.v2 => 0xf6d588c9 => 84
	i32 4144683026, ; 331: Refit.dll => 0xf70ad812 => 30
	i32 4147896353, ; 332: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 140
	i32 4163839213, ; 333: Uno.Extensions.Serialization.Http => 0xf82f24ed => 63
	i32 4164802419, ; 334: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 126
	i32 4181436372, ; 335: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 150
	i32 4213026141, ; 336: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 119
	i32 4225179193, ; 337: Uno.Extensions.Storage.UI.dll => 0xfbd71e39 => 66
	i32 4274623895, ; 338: CommunityToolkit.Mvvm.dll => 0xfec99597 => 2
	i32 4274976490 ; 339: System.Runtime.Numerics => 0xfecef6ea => 148
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [340 x i32] [
	i32 29, ; 0
	i32 157, ; 1
	i32 13, ; 2
	i32 146, ; 3
	i32 35, ; 4
	i32 72, ; 5
	i32 78, ; 6
	i32 102, ; 7
	i32 115, ; 8
	i32 118, ; 9
	i32 12, ; 10
	i32 107, ; 11
	i32 141, ; 12
	i32 81, ; 13
	i32 31, ; 14
	i32 19, ; 15
	i32 61, ; 16
	i32 90, ; 17
	i32 84, ; 18
	i32 157, ; 19
	i32 65, ; 20
	i32 130, ; 21
	i32 0, ; 22
	i32 63, ; 23
	i32 112, ; 24
	i32 95, ; 25
	i32 159, ; 26
	i32 150, ; 27
	i32 163, ; 28
	i32 136, ; 29
	i32 33, ; 30
	i32 28, ; 31
	i32 32, ; 32
	i32 128, ; 33
	i32 21, ; 34
	i32 144, ; 35
	i32 23, ; 36
	i32 154, ; 37
	i32 108, ; 38
	i32 53, ; 39
	i32 160, ; 40
	i32 34, ; 41
	i32 24, ; 42
	i32 85, ; 43
	i32 147, ; 44
	i32 27, ; 45
	i32 33, ; 46
	i32 134, ; 47
	i32 59, ; 48
	i32 125, ; 49
	i32 26, ; 50
	i32 64, ; 51
	i32 117, ; 52
	i32 137, ; 53
	i32 124, ; 54
	i32 44, ; 55
	i32 131, ; 56
	i32 113, ; 57
	i32 30, ; 58
	i32 145, ; 59
	i32 29, ; 60
	i32 162, ; 61
	i32 120, ; 62
	i32 112, ; 63
	i32 16, ; 64
	i32 101, ; 65
	i32 123, ; 66
	i32 11, ; 67
	i32 91, ; 68
	i32 122, ; 69
	i32 127, ; 70
	i32 13, ; 71
	i32 78, ; 72
	i32 83, ; 73
	i32 71, ; 74
	i32 114, ; 75
	i32 104, ; 76
	i32 163, ; 77
	i32 8, ; 78
	i32 18, ; 79
	i32 31, ; 80
	i32 44, ; 81
	i32 25, ; 82
	i32 62, ; 83
	i32 36, ; 84
	i32 14, ; 85
	i32 52, ; 86
	i32 39, ; 87
	i32 2, ; 88
	i32 45, ; 89
	i32 94, ; 90
	i32 129, ; 91
	i32 39, ; 92
	i32 6, ; 93
	i32 101, ; 94
	i32 143, ; 95
	i32 70, ; 96
	i32 66, ; 97
	i32 149, ; 98
	i32 96, ; 99
	i32 98, ; 100
	i32 86, ; 101
	i32 120, ; 102
	i32 144, ; 103
	i32 109, ; 104
	i32 125, ; 105
	i32 76, ; 106
	i32 28, ; 107
	i32 109, ; 108
	i32 124, ; 109
	i32 19, ; 110
	i32 86, ; 111
	i32 16, ; 112
	i32 155, ; 113
	i32 106, ; 114
	i32 99, ; 115
	i32 40, ; 116
	i32 69, ; 117
	i32 9, ; 118
	i32 132, ; 119
	i32 155, ; 120
	i32 151, ; 121
	i32 54, ; 122
	i32 40, ; 123
	i32 133, ; 124
	i32 152, ; 125
	i32 118, ; 126
	i32 77, ; 127
	i32 80, ; 128
	i32 67, ; 129
	i32 167, ; 130
	i32 121, ; 131
	i32 102, ; 132
	i32 85, ; 133
	i32 21, ; 134
	i32 168, ; 135
	i32 74, ; 136
	i32 95, ; 137
	i32 49, ; 138
	i32 99, ; 139
	i32 43, ; 140
	i32 104, ; 141
	i32 38, ; 142
	i32 153, ; 143
	i32 149, ; 144
	i32 22, ; 145
	i32 127, ; 146
	i32 142, ; 147
	i32 43, ; 148
	i32 50, ; 149
	i32 143, ; 150
	i32 110, ; 151
	i32 46, ; 152
	i32 93, ; 153
	i32 138, ; 154
	i32 1, ; 155
	i32 3, ; 156
	i32 55, ; 157
	i32 80, ; 158
	i32 79, ; 159
	i32 57, ; 160
	i32 48, ; 161
	i32 139, ; 162
	i32 5, ; 163
	i32 97, ; 164
	i32 121, ; 165
	i32 15, ; 166
	i32 56, ; 167
	i32 151, ; 168
	i32 135, ; 169
	i32 88, ; 170
	i32 116, ; 171
	i32 61, ; 172
	i32 111, ; 173
	i32 26, ; 174
	i32 22, ; 175
	i32 136, ; 176
	i32 7, ; 177
	i32 105, ; 178
	i32 132, ; 179
	i32 93, ; 180
	i32 4, ; 181
	i32 52, ; 182
	i32 100, ; 183
	i32 79, ; 184
	i32 67, ; 185
	i32 165, ; 186
	i32 73, ; 187
	i32 53, ; 188
	i32 133, ; 189
	i32 161, ; 190
	i32 76, ; 191
	i32 3, ; 192
	i32 42, ; 193
	i32 159, ; 194
	i32 116, ; 195
	i32 164, ; 196
	i32 166, ; 197
	i32 106, ; 198
	i32 57, ; 199
	i32 141, ; 200
	i32 65, ; 201
	i32 107, ; 202
	i32 154, ; 203
	i32 75, ; 204
	i32 153, ; 205
	i32 14, ; 206
	i32 105, ; 207
	i32 25, ; 208
	i32 139, ; 209
	i32 68, ; 210
	i32 147, ; 211
	i32 162, ; 212
	i32 122, ; 213
	i32 117, ; 214
	i32 48, ; 215
	i32 74, ; 216
	i32 73, ; 217
	i32 54, ; 218
	i32 156, ; 219
	i32 148, ; 220
	i32 90, ; 221
	i32 87, ; 222
	i32 82, ; 223
	i32 145, ; 224
	i32 98, ; 225
	i32 103, ; 226
	i32 96, ; 227
	i32 62, ; 228
	i32 36, ; 229
	i32 56, ; 230
	i32 103, ; 231
	i32 167, ; 232
	i32 165, ; 233
	i32 15, ; 234
	i32 135, ; 235
	i32 115, ; 236
	i32 1, ; 237
	i32 27, ; 238
	i32 94, ; 239
	i32 58, ; 240
	i32 12, ; 241
	i32 72, ; 242
	i32 0, ; 243
	i32 77, ; 244
	i32 55, ; 245
	i32 168, ; 246
	i32 113, ; 247
	i32 156, ; 248
	i32 68, ; 249
	i32 50, ; 250
	i32 23, ; 251
	i32 42, ; 252
	i32 64, ; 253
	i32 142, ; 254
	i32 35, ; 255
	i32 69, ; 256
	i32 7, ; 257
	i32 158, ; 258
	i32 51, ; 259
	i32 58, ; 260
	i32 128, ; 261
	i32 41, ; 262
	i32 81, ; 263
	i32 83, ; 264
	i32 134, ; 265
	i32 32, ; 266
	i32 41, ; 267
	i32 37, ; 268
	i32 92, ; 269
	i32 166, ; 270
	i32 100, ; 271
	i32 17, ; 272
	i32 5, ; 273
	i32 10, ; 274
	i32 164, ; 275
	i32 88, ; 276
	i32 17, ; 277
	i32 114, ; 278
	i32 169, ; 279
	i32 37, ; 280
	i32 71, ; 281
	i32 160, ; 282
	i32 20, ; 283
	i32 45, ; 284
	i32 129, ; 285
	i32 6, ; 286
	i32 89, ; 287
	i32 97, ; 288
	i32 4, ; 289
	i32 34, ; 290
	i32 60, ; 291
	i32 169, ; 292
	i32 51, ; 293
	i32 38, ; 294
	i32 47, ; 295
	i32 9, ; 296
	i32 131, ; 297
	i32 119, ; 298
	i32 8, ; 299
	i32 20, ; 300
	i32 110, ; 301
	i32 59, ; 302
	i32 111, ; 303
	i32 152, ; 304
	i32 11, ; 305
	i32 146, ; 306
	i32 47, ; 307
	i32 108, ; 308
	i32 92, ; 309
	i32 60, ; 310
	i32 161, ; 311
	i32 89, ; 312
	i32 91, ; 313
	i32 87, ; 314
	i32 46, ; 315
	i32 130, ; 316
	i32 140, ; 317
	i32 138, ; 318
	i32 49, ; 319
	i32 70, ; 320
	i32 158, ; 321
	i32 24, ; 322
	i32 75, ; 323
	i32 18, ; 324
	i32 82, ; 325
	i32 123, ; 326
	i32 137, ; 327
	i32 10, ; 328
	i32 126, ; 329
	i32 84, ; 330
	i32 30, ; 331
	i32 140, ; 332
	i32 63, ; 333
	i32 126, ; 334
	i32 150, ; 335
	i32 119, ; 336
	i32 66, ; 337
	i32 2, ; 338
	i32 148 ; 339
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
