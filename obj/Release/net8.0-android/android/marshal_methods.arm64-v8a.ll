; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [170 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [340 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 28
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 169
	i64 160518225272466977, ; 2: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 18
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 127
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 101
	i64 262023318424385553, ; 5: Uno.Extensions.Navigation.UI.dll => 0x3a2e4d1e18df811 => 58
	i64 354178770117062970, ; 6: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0x4ea4bb703cff13a => 27
	i64 356088405801407835, ; 7: Uno.Toolkit.dll => 0x4f11484b86d955b => 73
	i64 485184752982938798, ; 8: Uno.Extensions.Localization.dll => 0x6bbb8f653fbd4ae => 53
	i64 560278790331054453, ; 9: System.Reflection.Primitives => 0x7c6829760de3975 => 142
	i64 592295183581559413, ; 10: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x8384154d38dba75 => 96
	i64 648449422406355874, ; 11: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 8
	i64 668723562677762733, ; 12: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 5
	i64 702078190593431133, ; 13: Uno.Extensions.Core => 0x9be486502ded65d => 46
	i64 718311129338868318, ; 14: Uno.UI.Dispatching.dll => 0x9f7f42a9673f25e => 81
	i64 750875890346172408, ; 15: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 157
	i64 761938169030670524, ; 16: Uno.Extensions.Navigation.UI => 0xa92f2ba51e278bc => 58
	i64 799765834175365804, ; 17: System.ComponentModel.dll => 0xb1956c9f18442ac => 115
	i64 872800313462103108, ; 18: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 94
	i64 1010599046655515943, ; 19: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 142
	i64 1131182615083724429, ; 20: Uno.Extensions.Reactive.Messaging => 0xfb2c4985c29ae8d => 60
	i64 1222787672431018828, ; 21: Uno.Toolkit.WinUI.dll => 0x10f836e8d2fa434c => 74
	i64 1268860745194512059, ; 22: System.Drawing.dll => 0x119be62002c19ebb => 123
	i64 1404195534211153682, ; 23: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 126
	i64 1476839205573959279, ; 24: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 133
	i64 1481770959016848839, ; 25: Uno.Core.Extensions.Collections => 0x14904ed622b06dc7 => 39
	i64 1513467482682125403, ; 26: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 168
	i64 1519507632020922286, ; 27: Uno.Extensions.Navigation.Toolkit.UI => 0x15166024001a1fae => 57
	i64 1537168428375924959, ; 28: System.Threading.Thread.dll => 0x15551e8a954ae0df => 157
	i64 1641370875421786808, ; 29: Uno.UI.FluentTheme.dll => 0x16c7521d663002b8 => 82
	i64 1657261842476789961, ; 30: Uno.Extensions.Hosting => 0x16ffc6dd7ca370c9 => 48
	i64 1715908411221460909, ; 31: SkiaSharp.Views.Windows.dll => 0x17d0219bd5f5c7ad => 35
	i64 1731380447121279447, ; 32: Newtonsoft.Json => 0x18071957e9b889d7 => 29
	i64 1743969030606105336, ; 33: System.Memory.dll => 0x1833d297e88f2af8 => 130
	i64 1767386781656293639, ; 34: System.Private.Uri.dll => 0x188704e9f5582107 => 137
	i64 1795316252682057001, ; 35: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 91
	i64 1798725109391190735, ; 36: Uno.Extensions.Serialization.Http => 0x18f65af4f9d66acf => 63
	i64 1827550492326098756, ; 37: Uno.Extensions.Configuration.dll => 0x195cc37d702ff744 => 45
	i64 1836611346387731153, ; 38: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 101
	i64 1853458236627568591, ; 39: Uno.Material.WinUI.dll => 0x19b8ce72383547cf => 71
	i64 1875417405349196092, ; 40: System.Drawing.Primitives => 0x1a06d2319b6c713c => 122
	i64 1930726298510463061, ; 41: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 2
	i64 2088755289207276331, ; 42: Uno.Xaml => 0x1cfcbfde6beb032b => 87
	i64 2102659300918482391, ; 43: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 122
	i64 2133195048986300728, ; 44: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 29
	i64 2149805210327152470, ; 45: UniversalImageLoader.dll => 0x1dd5a472d9d57756 => 77
	i64 2176135168026391317, ; 46: Uno.Extensions.Localization => 0x1e332f67d972b315 => 53
	i64 2200176636225660136, ; 47: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 25
	i64 2259972231695953953, ; 48: Uno.Extensions.Http.Refit.dll => 0x1f5d08c5587bf021 => 51
	i64 2262844636196693701, ; 49: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 94
	i64 2287834202362508563, ; 50: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 108
	i64 2329709569556905518, ; 51: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 97
	i64 2335503487726329082, ; 52: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 154
	i64 2481419953551094563, ; 53: Uno.Extensions.Navigation => 0x226fc64cf5fab323 => 56
	i64 2497223385847772520, ; 54: System.Runtime => 0x22a7eb7046413568 => 151
	i64 2516498815742412887, ; 55: Xamarin.AndroidX.Core.SplashScreen.dll => 0x22ec665706048857 => 93
	i64 2547086958574651984, ; 56: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 90
	i64 2566579877633172060, ; 57: Refit => 0x239e52cce5fda25c => 30
	i64 2567511506729954234, ; 58: Uno.UI.FluentTheme.v2.dll => 0x23a1a21cb35debba => 84
	i64 2656907746661064104, ; 59: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 10
	i64 2875445883282773963, ; 60: Uno.Extensions.Serialization => 0x27e7a2cbcbedd7cb => 62
	i64 2897279701402357900, ; 61: Microsoft.Extensions.Hosting => 0x28353489b909908c => 17
	i64 3168817962471953758, ; 62: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 18
	i64 3225006507905686379, ; 63: Uno.UI.FluentTheme.v1 => 0x2cc18655060a9b6b => 83
	i64 3269880844891590771, ; 64: Uno.Extensions.Http.Refit => 0x2d60f34dc99e1073 => 51
	i64 3311221304742556517, ; 65: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 135
	i64 3325875462027654285, ; 66: System.Runtime.Numerics => 0x2e27e21c8958b48d => 148
	i64 3344514922410554693, ; 67: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 105
	i64 3396143930648122816, ; 68: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 14
	i64 3494946837667399002, ; 69: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 3
	i64 3510897089850326691, ; 70: Uno.Extensions.Storage.UI.dll => 0x30b9364d3b7b3ea3 => 66
	i64 3522470458906976663, ; 71: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 102
	i64 3551103847008531295, ; 72: System.Private.CoreLib.dll => 0x31480e226177735f => 165
	i64 3571415421602489686, ; 73: System.Runtime.dll => 0x319037675df7e556 => 151
	i64 3603577959249301444, ; 74: Uno.Extensions.Core.UI.dll => 0x32027b0fb57b4fc4 => 47
	i64 3638003163729360188, ; 75: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 4
	i64 3647754201059316852, ; 76: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 161
	i64 3655542548057982301, ; 77: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 3
	i64 3716579019761409177, ; 78: netstandard.dll => 0x3393f0ed5c8c5c99 => 164
	i64 3722678241737411220, ; 79: Uno.Extensions.Reactive.UI.dll => 0x33a99c2323d58a94 => 61
	i64 3727469159507183293, ; 80: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 100
	i64 3804325682343189483, ; 81: Uno.Extensions.Hosting.WinUI => 0x34cbae0d49f61beb => 49
	i64 3869221888984012293, ; 82: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 21
	i64 3869649043256705283, ; 83: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 120
	i64 3889433610606858880, ; 84: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 15
	i64 3933965368022646939, ; 85: System.Net.Requests => 0x369840a8bfadc09b => 134
	i64 3966267475168208030, ; 86: System.Memory => 0x370b03412596249e => 130
	i64 4009997192427317104, ; 87: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 150
	i64 4047598574134925724, ; 88: Uno.Toolkit.WinUI.Material.dll => 0x382bf57544b0999c => 75
	i64 4073500526318903918, ; 89: System.Private.Xml.dll => 0x3887fb25779ae26e => 139
	i64 4148881117810174540, ; 90: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 145
	i64 4154383907710350974, ; 91: System.ComponentModel => 0x39a7562737acb67e => 115
	i64 4187479170553454871, ; 92: System.Linq.Expressions => 0x3a1cea1e912fa117 => 127
	i64 4205801962323029395, ; 93: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 114
	i64 4306612231831054753, ; 94: SkiaSharp.SceneGraph.dll => 0x3bc42901e7a469a1 => 33
	i64 4418670123468915552, ; 95: Microsoft.Extensions.Logging.Console.dll => 0x3d524510f0ff0360 => 24
	i64 4477672992252076438, ; 96: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 159
	i64 4596456345139358629, ; 97: Uno.Toolkit.WinUI.Material => 0x3fc9e4b15d9f2ba5 => 75
	i64 4657212095206026001, ; 98: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 19
	i64 4672453897036726049, ; 99: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 126
	i64 4686023497551074088, ; 100: Uno.Toolkit.WinUI => 0x4108198b1caa5328 => 74
	i64 4754620528327149104, ; 101: Microsoft.Extensions.Logging.Console => 0x41fbce2df0b84630 => 24
	i64 4794310189461587505, ; 102: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 90
	i64 4795410492532947900, ; 103: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 102
	i64 4809057822547766521, ; 104: System.Drawing => 0x42bd349c3145ecf9 => 123
	i64 4853321196694829351, ; 105: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 147
	i64 4983305270878400103, ; 106: Uno.Fonts.Roboto.dll => 0x452841bdbe09ee67 => 69
	i64 5037243529466023660, ; 107: Uno.Core.Extensions.Equality => 0x45e7e24d34f50eec => 41
	i64 5050310983990269346, ; 108: Uno.Extensions.Hosting.dll => 0x46164f150dfe55a2 => 48
	i64 5081566143765835342, ; 109: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 143
	i64 5099468265966638712, ; 110: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 143
	i64 5103417709280584325, ; 111: System.Collections.Specialized => 0x46d2fb5e161b6285 => 111
	i64 5182934613077526976, ; 112: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 111
	i64 5290786973231294105, ; 113: System.Runtime.Loader => 0x496ca6b869b72699 => 147
	i64 5357166273619557031, ; 114: Uno.Core.Extensions.dll => 0x4a587a57a5cbfaa7 => 38
	i64 5358812605182676071, ; 115: Uno.Core.Extensions => 0x4a5e53ac15cc8c67 => 38
	i64 5446034149219586269, ; 116: System.Diagnostics.Debug => 0x4b94333452e150dd => 118
	i64 5551528377209184482, ; 117: Uno.Extensions.Serialization.dll => 0x4d0afda5540de0e2 => 62
	i64 5570799893513421663, ; 118: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 124
	i64 5573260873512690141, ; 119: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 152
	i64 5741990095351817038, ; 120: Microsoft.Extensions.Localization.Abstractions.dll => 0x4fafa591c141a34e => 20
	i64 5902302265849667035, ; 121: Uno.Core.Extensions.Logging.Singleton.dll => 0x51e930a398f3dddb => 43
	i64 6010974535988770325, ; 122: Microsoft.Extensions.Diagnostics.dll => 0x536b457e33877615 => 12
	i64 6175278734029192665, ; 123: Microsoft.Extensions.Configuration.CommandLine => 0x55b2ff4a62d57dd9 => 6
	i64 6222399776351216807, ; 124: System.Text.Json.dll => 0x565a67a0ffe264a7 => 37
	i64 6250805017556009336, ; 125: Uno.Extensions.Core.dll => 0x56bf520b97a7c178 => 46
	i64 6259870467288533951, ; 126: Uno.Extensions.Configuration => 0x56df870616b10bbf => 45
	i64 6268464631992009879, ; 127: SkiaSharp.Skottie => 0x56fe0f5efcfbc497 => 34
	i64 6284145129771520194, ; 128: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 140
	i64 6357457916754632952, ; 129: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 0
	i64 6366789583649298219, ; 130: Uno.Extensions.Http.dll => 0x585b6164c512d72b => 50
	i64 6368328068195438891, ; 131: Refit.HttpClientFactory => 0x5860d8a31df0512b => 31
	i64 6401687960814735282, ; 132: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 97
	i64 6433331304437599473, ; 133: Uno.UI.BindingHelper.Android => 0x5947c8bc73674cf1 => 79
	i64 6560151584539558821, ; 134: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 26
	i64 6579257534474852689, ; 135: Uno => 0x5b4e37de842f9951 => 88
	i64 6671798237668743565, ; 136: SkiaSharp => 0x5c96fd260152998d => 32
	i64 6772837112740759457, ; 137: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 145
	i64 6786606130239981554, ; 138: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 121
	i64 6814185388980153342, ; 139: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 162
	i64 6876862101832370452, ; 140: System.Xml.Linq => 0x5f6f85a57d108914 => 160
	i64 6894844156784520562, ; 141: System.Numerics.Vectors => 0x5faf683aead1ad72 => 135
	i64 7083547580668757502, ; 142: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 138
	i64 7265877048277052606, ; 143: Uno.UI => 0x64d594addc37acbe => 86
	i64 7270811800166795866, ; 144: System.Linq => 0x64e71ccf51a90a5a => 129
	i64 7287460955657428104, ; 145: Uno.Foundation.Logging.dll => 0x65224320e87d5c88 => 70
	i64 7369667603911638790, ; 146: Uno.Extensions.Serialization.Http.dll => 0x664651a3bbdb7f06 => 63
	i64 7377312882064240630, ; 147: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 114
	i64 7488575175965059935, ; 148: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 160
	i64 7489048572193775167, ; 149: System.ObjectModel => 0x67ee71ff6b419e3f => 136
	i64 7505202665499763299, ; 150: Uno.UI.Composition => 0x6827d60f5c6da263 => 80
	i64 7581362764202499634, ; 151: Uno.UI.Adapter.Microsoft.Extensions.Logging.dll => 0x6936694429a9de32 => 76
	i64 7654504624184590948, ; 152: System.Net.Http => 0x6a3a4366801b8264 => 132
	i64 7714652370974252055, ; 153: System.Private.CoreLib => 0x6b0ff375198b9c17 => 165
	i64 7735176074855944702, ; 154: Microsoft.CSharp => 0x6b58dda848e391fe => 107
	i64 7735352534559001595, ; 155: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 104
	i64 7854438595637245475, ; 156: Uno.Extensions.Reactive.Messaging.dll => 0x6d009249c3137623 => 60
	i64 7915753171979362562, ; 157: Uno.Extensions.Localization.WinUI.dll => 0x6dda679209806102 => 54
	i64 7919757340696389605, ; 158: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 13
	i64 7969868205614615900, ; 159: Microsoft.Extensions.Logging.Configuration => 0x6e9aa8e82656cd5c => 23
	i64 8038446328132759779, ; 160: Microsoft.Extensions.Logging.Configuration.dll => 0x6f8e4c588e6570e3 => 23
	i64 8064050204834738623, ; 161: System.Collections.dll => 0x6fe942efa61731bf => 112
	i64 8077644542230604312, ; 162: Uno.Themes.WinUI.dll => 0x70198ee9f9872a18 => 72
	i64 8085230611270010360, ; 163: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 131
	i64 8087206902342787202, ; 164: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 119
	i64 8161941391545951145, ; 165: Uno.Core.Extensions.Logging.Singleton => 0x71450a73a8a763a9 => 43
	i64 8167236081217502503, ; 166: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 166
	i64 8185542183669246576, ; 167: System.Collections => 0x7198e33f4794aa70 => 112
	i64 8290740647658429042, ; 168: System.Runtime.Extensions => 0x730ea0b15c929a72 => 144
	i64 8293702073711834350, ; 169: System.Linq.Async => 0x731926181883b4ee => 36
	i64 8368701292315763008, ; 170: System.Security.Cryptography => 0x7423997c6fd56140 => 152
	i64 8395747753193675067, ; 171: Uno.Extensions.Http => 0x7483b01954e4993b => 50
	i64 8410671156615598628, ; 172: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 141
	i64 8441654405175021224, ; 173: Uno.Diagnostics.Eventing.dll => 0x7526c7f4a9118ea8 => 44
	i64 8472685364375177308, ; 174: Microsoft.Extensions.Configuration.CommandLine.dll => 0x75950672dd3bc85c => 6
	i64 8483468362836955321, ; 175: Uno.UI.Toolkit => 0x75bb5587562950b9 => 85
	i64 8518412311883997971, ; 176: System.Collections.Immutable => 0x76377add7c28e313 => 109
	i64 8563666267364444763, ; 177: System.Private.Uri => 0x76d841191140ca5b => 137
	i64 8626175481042262068, ; 178: Java.Interop => 0x77b654e585b55834 => 166
	i64 8638972117149407195, ; 179: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 107
	i64 8725526185868997716, ; 180: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 119
	i64 8816904670177563593, ; 181: Microsoft.Extensions.Diagnostics => 0x7a5bf015646a93c9 => 12
	i64 8878432561020139163, ; 182: Uno.UI.dll => 0x7b36875fd1ddf69b => 86
	i64 8941376889969657626, ; 183: System.Xml.XDocument => 0x7c1626e87187471a => 162
	i64 9324707631942237306, ; 184: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 91
	i64 9367838454437641387, ; 185: Uno.UI.FluentTheme.v2 => 0x82013f70fdfffcab => 84
	i64 9650158550865574924, ; 186: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 9
	i64 9659729154652888475, ; 187: System.Text.RegularExpressions => 0x860e407c9991dd9b => 155
	i64 9702891218465930390, ; 188: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 110
	i64 9720113355794297314, ; 189: CommonServiceLocator => 0x86e4c79904a631e2 => 1
	i64 9808709177481450983, ; 190: Mono.Android.dll => 0x881f890734e555e7 => 169
	i64 9903557204219278018, ; 191: Uno.Extensions.Logging.WinUI.dll => 0x897080ce524032c2 => 55
	i64 9933555792566666578, ; 192: System.Linq.Queryable.dll => 0x89db145cf475c552 => 128
	i64 9984712745295547978, ; 193: Uno.Foundation.Logging => 0x8a90d3572fa80e4a => 70
	i64 10013151040122155550, ; 194: Uno.Extensions.Hosting.WinUI.dll => 0x8af5dbd1acd0721e => 49
	i64 10017511394021241210, ; 195: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 25
	i64 10037412179342310022, ; 196: CommonServiceLocator.dll => 0x8b4c0d3255e0ba86 => 1
	i64 10038780035334861115, ; 197: System.Net.Http.dll => 0x8b50e941206af13b => 132
	i64 10051358222726253779, ; 198: System.Private.Xml => 0x8b7d990c97ccccd3 => 139
	i64 10205853378024263619, ; 199: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 5
	i64 10245369515835430794, ; 200: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 141
	i64 10364469296367737616, ; 201: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 140
	i64 10375624106091598968, ; 202: Uno.Extensions.Reactive.UI => 0x8ffd9f26ee91d478 => 61
	i64 10406448008575299332, ; 203: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 105
	i64 10430153318873392755, ; 204: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 92
	i64 10625618926250046079, ; 205: Uno.Extensions.Storage => 0x9375c81dd1cd327f => 65
	i64 10714184849103829812, ; 206: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 144
	i64 10785150219063592792, ; 207: System.Net.Primitives => 0x95ac8cfb68830758 => 133
	i64 10797309073391432218, ; 208: Uno.Themes.WinUI => 0x95d7bf654999321a => 72
	i64 10809043855025277762, ; 209: Microsoft.Extensions.Options.ConfigurationExtensions => 0x9601701e0c668b42 => 27
	i64 10822644899632537592, ; 210: System.Linq.Queryable => 0x9631c23204ca5ff8 => 128
	i64 10943481954321973372, ; 211: Uno.Fonts.Fluent.dll => 0x97df0edb3d42407c => 67
	i64 10949661610871045344, ; 212: Uno.Core.Extensions.Disposables => 0x97f50338a6b33ce0 => 40
	i64 10953751836886437922, ; 213: System.Linq.Async.dll => 0x98038b429b661022 => 36
	i64 11002576679268595294, ; 214: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 22
	i64 11162124722117608902, ; 215: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 103
	i64 11197549611186692145, ; 216: Uno.Core.Extensions.Logging => 0x9b65b00b5198a031 => 42
	i64 11199783702049984371, ; 217: Uno.UI.FluentTheme => 0x9b6d9ff021e60f73 => 82
	i64 11209592088796566107, ; 218: Uno.Extensions.Reactive.dll => 0x9b90789d21bf925b => 59
	i64 11220156604896003572, ; 219: Uno.Foundation => 0x9bb600fc371445f4 => 78
	i64 11226290749488709958, ; 220: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 26
	i64 11446671985764974897, ; 221: Mono.Android.Export => 0x9edabf8623efc131 => 167
	i64 11485890710487134646, ; 222: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 146
	i64 11512875646390393919, ; 223: Uno.UI.Dispatching => 0x9fc5f3670e585c3f => 81
	i64 11529969570048099689, ; 224: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 103
	i64 11530571088791430846, ; 225: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 21
	i64 11597940890313164233, ; 226: netstandard => 0xa0f429ca8d1805c9 => 164
	i64 11639389323749721901, ; 227: Uno.Extensions.Logging.WinUI => 0xa1876aebfc93872d => 55
	i64 11675352430687308415, ; 228: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa2072f2d529c4a7f => 96
	i64 11743665907891708234, ; 229: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 156
	i64 11979871652408364694, ; 230: Uno.UI.BindingHelper.Android.dll => 0xa6410dcbb8928e96 => 79
	i64 12048689113179125827, ; 231: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 15
	i64 12058074296353848905, ; 232: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 16
	i64 12145679461940342714, ; 233: System.Text.Json => 0xa88e1f1ebcb62fba => 37
	i64 12151334981087501243, ; 234: Refit.HttpClientFactory.dll => 0xa8a236c8e67f9bbb => 31
	i64 12169242935900241089, ; 235: Uno.Extensions.Serialization.Refit => 0xa8e1d5f98bc3fcc1 => 64
	i64 12201331334810686224, ; 236: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 150
	i64 12269460666702402136, ; 237: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 109
	i64 12451044538927396471, ; 238: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 95
	i64 12466513435562512481, ; 239: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 99
	i64 12475113361194491050, ; 240: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 0
	i64 12517810545449516888, ; 241: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 121
	i64 12550732019250633519, ; 242: System.IO.Compression => 0xae2d28465e8e1b2f => 125
	i64 12582839906413847523, ; 243: Uno.UI.Composition.dll => 0xae9f3a3a676823e3 => 80
	i64 12708922737231849740, ; 244: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 153
	i64 12752743847204943576, ; 245: Uno.Extensions.Http.WinUI => 0xb0fad8f64c32f6d8 => 52
	i64 12843321153144804894, ; 246: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 28
	i64 13032456853434523281, ; 247: Uno.Core.Extensions.Collections.dll => 0xb4dc96759391de91 => 39
	i64 13068258254871114833, ; 248: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 149
	i64 13343850469010654401, ; 249: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 168
	i64 13411451718096310370, ; 250: UnoApp1 => 0xba1f0c47db6ed062 => 106
	i64 13465488254036897740, ; 251: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 104
	i64 13521440895280410723, ; 252: Uno.UI.Lottie.dll => 0xbba5cedac6a0f063 => 89
	i64 13531434639462670770, ; 253: Uno.Extensions.Reactive => 0xbbc9501caa96a1b2 => 59
	i64 13550417756503177631, ; 254: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 14
	i64 13572454107664307259, ; 255: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 100
	i64 13702626353344114072, ; 256: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 120
	i64 13704219164275085391, ; 257: Uno.UI.Toolkit.dll => 0xbe2f2ab8cab7904f => 85
	i64 13717397318615465333, ; 258: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 113
	i64 13867117524690869568, ; 259: UniversalImageLoader => 0xc071e5eae5cb1d40 => 77
	i64 13881769479078963060, ; 260: System.Console.dll => 0xc0a5f3cade5c6774 => 116
	i64 13904792224041979353, ; 261: Uno.UI.FluentTheme.v1.dll => 0xc0f7bedb65a2cdd9 => 83
	i64 13959074834287824816, ; 262: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 95
	i64 14080018879447829131, ; 263: Uno.Fonts.OpenSans => 0xc36646925c480a8b => 68
	i64 14125464355221830302, ; 264: System.Threading.dll => 0xc407bafdbc707a9e => 158
	i64 14199563118190975076, ; 265: Uno.UI.Adapter.Microsoft.Extensions.Logging => 0xc50efb6c6982d864 => 76
	i64 14254574811015963973, ; 266: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 153
	i64 14291662501039187258, ; 267: Uno.Fonts.Fluent => 0xc6562f530036253a => 67
	i64 14435106083517794524, ; 268: Uno.Extensions.Serialization.Refit.dll => 0xc853cc80a32888dc => 64
	i64 14461014870687870182, ; 269: System.Net.Requests.dll => 0xc8afd8683afdece6 => 134
	i64 14468025415419102254, ; 270: Uno.Extensions.Navigation.Toolkit.UI.dll => 0xc8c8c075df61042e => 57
	i64 14551742072151931844, ; 271: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 154
	i64 14622043554576106986, ; 272: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 149
	i64 14669215534098758659, ; 273: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 10
	i64 14690985099581930927, ; 274: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 159
	i64 14736208836783165550, ; 275: Uno.Core.Extensions.Logging.dll => 0xcc8187dc7c6ed06e => 42
	i64 14795403873026468413, ; 276: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0xcd53d56ee02e6a3d => 98
	i64 14905311287502520239, ; 277: Microsoft.Extensions.Hosting.dll => 0xceda4da4ee353faf => 17
	i64 14954917835170835695, ; 278: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 11
	i64 14987728460634540364, ; 279: System.IO.Compression.dll => 0xcfff1ba06622494c => 125
	i64 15024878362326791334, ; 280: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 131
	i64 15051741671811457419, ; 281: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 13
	i64 15076659072870671916, ; 282: System.ObjectModel.dll => 0xd13b0d8c1620662c => 136
	i64 15101927338945785474, ; 283: SkiaSharp.SceneGraph => 0xd194d2e6bd9fae82 => 33
	i64 15115185479366240210, ; 284: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 124
	i64 15133485256822086103, ; 285: System.Linq.dll => 0xd204f0a9127dd9d7 => 129
	i64 15226449680631151560, ; 286: Uno.Extensions.Storage.UI => 0xd34f374fb4613bc8 => 66
	i64 15227001540531775957, ; 287: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 4
	i64 15255283452148687628, ; 288: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xd3b5a7794937a30c => 98
	i64 15370028218478381000, ; 289: Microsoft.Extensions.Localization.Abstractions => 0xd54d4f3b162247c8 => 20
	i64 15370334346939861994, ; 290: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 92
	i64 15391712275433856905, ; 291: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 11
	i64 15527772828719725935, ; 292: System.Console => 0xd77dbb1e38cd3d6f => 116
	i64 15550489197484186488, ; 293: Uno.Extensions.Core.UI => 0xd7ce6f88fb981b78 => 47
	i64 15609085926864131306, ; 294: System.dll => 0xd89e9cf3334914ea => 163
	i64 15623255159237527798, ; 295: Uno.Extensions.Localization.WinUI => 0xd8d0f3cab1a448f6 => 54
	i64 15661133872274321916, ; 296: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 161
	i64 15747896856950463888, ; 297: Uno.Fonts.Roboto => 0xda8bc4c16605dd90 => 69
	i64 15817206913877585035, ; 298: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 156
	i64 15827202283623377193, ; 299: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 9
	i64 15915482068648965105, ; 300: Microsoft.Extensions.Configuration.EnvironmentVariables => 0xdcdf269e1aebb3f1 => 7
	i64 15928493433218146852, ; 301: Uno.Extensions.Navigation.dll => 0xdd0d60627e1c2224 => 56
	i64 15959458866502526117, ; 302: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 0xdd7b6348415764a5 => 7
	i64 16046910557777125904, ; 303: Uno.Fonts.OpenSans.dll => 0xdeb21421d2c56210 => 68
	i64 16154507427712707110, ; 304: System => 0xe03056ea4e39aa26 => 163
	i64 16252599826146587709, ; 305: Refit.dll => 0xe18cd56e920af43d => 30
	i64 16272598446332964604, ; 306: Uno.Xaml.dll => 0xe1d3e2122e3feefc => 87
	i64 16321164108206115771, ; 307: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 22
	i64 16324796876805858114, ; 308: SkiaSharp.dll => 0xe28d5444586b6342 => 32
	i64 16496768397145114574, ; 309: Mono.Android.Export.dll => 0xe4f04b741db987ce => 167
	i64 16558262036769511634, ; 310: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 19
	i64 16598691774874205178, ; 311: Uno.Core.Extensions.Disposables.dll => 0xe65a6639c1933bfa => 40
	i64 16614989581338162378, ; 312: UnoApp1.dll => 0xe6944cfe867a34ca => 106
	i64 16648892297579399389, ; 313: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 2
	i64 16684153842290013938, ; 314: SkiaSharp.Views.Windows => 0xe78a0585ebaa36f2 => 35
	i64 16703779541941650357, ; 315: Uno.Foundation.dll => 0xe7cfbefe33de83b5 => 78
	i64 16726599473206330474, ; 316: Uno.Core.Extensions.Equality.dll => 0xe820d1997cb3046a => 41
	i64 16856067890322379635, ; 317: System.Data.Common.dll => 0xe9ecc87060889373 => 117
	i64 16890310621557459193, ; 318: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 155
	i64 16915258384925580769, ; 319: Uno.Material.WinUI => 0xeabf11e1556fdde1 => 71
	i64 17008137082415910100, ; 320: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 110
	i64 17047433665992082296, ; 321: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 8
	i64 17054378163216140581, ; 322: Uno.Extensions.Http.WinUI.dll => 0xecad5294dbad4925 => 52
	i64 17062143951396181894, ; 323: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 113
	i64 17205988430934219272, ; 324: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 16
	i64 17230721278011714856, ; 325: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 138
	i64 17260702271250283638, ; 326: System.Data.Common => 0xef8a5543bba6bc76 => 117
	i64 17509666368860808140, ; 327: Xamarin.AndroidX.Core.SplashScreen => 0xf2fed4cad38d63cc => 93
	i64 17685425616465427666, ; 328: Uno.dll => 0xf56f40e59303fcd2 => 88
	i64 17685561362297413336, ; 329: Uno.Toolkit => 0xf56fbc5b5d1c5ed8 => 73
	i64 17685921127322830888, ; 330: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 118
	i64 17704177640604968747, ; 331: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 99
	i64 17712670374920797664, ; 332: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 146
	i64 17777860260071588075, ; 333: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 148
	i64 17808848867378959707, ; 334: SkiaSharp.Skottie.dll => 0xf725bdb086bd955b => 34
	i64 18025913125965088385, ; 335: System.Threading => 0xfa28e87b91334681 => 158
	i64 18070580168630845293, ; 336: Uno.Diagnostics.Eventing => 0xfac798ebdc75bf6d => 44
	i64 18081203486394834667, ; 337: Uno.Extensions.Storage.dll => 0xfaed56c5c61e5eeb => 65
	i64 18245806341561545090, ; 338: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 108
	i64 18256460941441234728 ; 339: Uno.UI.Lottie => 0xfd5bfa7fd665f728 => 89
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [340 x i32] [
	i32 28, ; 0
	i32 169, ; 1
	i32 18, ; 2
	i32 127, ; 3
	i32 101, ; 4
	i32 58, ; 5
	i32 27, ; 6
	i32 73, ; 7
	i32 53, ; 8
	i32 142, ; 9
	i32 96, ; 10
	i32 8, ; 11
	i32 5, ; 12
	i32 46, ; 13
	i32 81, ; 14
	i32 157, ; 15
	i32 58, ; 16
	i32 115, ; 17
	i32 94, ; 18
	i32 142, ; 19
	i32 60, ; 20
	i32 74, ; 21
	i32 123, ; 22
	i32 126, ; 23
	i32 133, ; 24
	i32 39, ; 25
	i32 168, ; 26
	i32 57, ; 27
	i32 157, ; 28
	i32 82, ; 29
	i32 48, ; 30
	i32 35, ; 31
	i32 29, ; 32
	i32 130, ; 33
	i32 137, ; 34
	i32 91, ; 35
	i32 63, ; 36
	i32 45, ; 37
	i32 101, ; 38
	i32 71, ; 39
	i32 122, ; 40
	i32 2, ; 41
	i32 87, ; 42
	i32 122, ; 43
	i32 29, ; 44
	i32 77, ; 45
	i32 53, ; 46
	i32 25, ; 47
	i32 51, ; 48
	i32 94, ; 49
	i32 108, ; 50
	i32 97, ; 51
	i32 154, ; 52
	i32 56, ; 53
	i32 151, ; 54
	i32 93, ; 55
	i32 90, ; 56
	i32 30, ; 57
	i32 84, ; 58
	i32 10, ; 59
	i32 62, ; 60
	i32 17, ; 61
	i32 18, ; 62
	i32 83, ; 63
	i32 51, ; 64
	i32 135, ; 65
	i32 148, ; 66
	i32 105, ; 67
	i32 14, ; 68
	i32 3, ; 69
	i32 66, ; 70
	i32 102, ; 71
	i32 165, ; 72
	i32 151, ; 73
	i32 47, ; 74
	i32 4, ; 75
	i32 161, ; 76
	i32 3, ; 77
	i32 164, ; 78
	i32 61, ; 79
	i32 100, ; 80
	i32 49, ; 81
	i32 21, ; 82
	i32 120, ; 83
	i32 15, ; 84
	i32 134, ; 85
	i32 130, ; 86
	i32 150, ; 87
	i32 75, ; 88
	i32 139, ; 89
	i32 145, ; 90
	i32 115, ; 91
	i32 127, ; 92
	i32 114, ; 93
	i32 33, ; 94
	i32 24, ; 95
	i32 159, ; 96
	i32 75, ; 97
	i32 19, ; 98
	i32 126, ; 99
	i32 74, ; 100
	i32 24, ; 101
	i32 90, ; 102
	i32 102, ; 103
	i32 123, ; 104
	i32 147, ; 105
	i32 69, ; 106
	i32 41, ; 107
	i32 48, ; 108
	i32 143, ; 109
	i32 143, ; 110
	i32 111, ; 111
	i32 111, ; 112
	i32 147, ; 113
	i32 38, ; 114
	i32 38, ; 115
	i32 118, ; 116
	i32 62, ; 117
	i32 124, ; 118
	i32 152, ; 119
	i32 20, ; 120
	i32 43, ; 121
	i32 12, ; 122
	i32 6, ; 123
	i32 37, ; 124
	i32 46, ; 125
	i32 45, ; 126
	i32 34, ; 127
	i32 140, ; 128
	i32 0, ; 129
	i32 50, ; 130
	i32 31, ; 131
	i32 97, ; 132
	i32 79, ; 133
	i32 26, ; 134
	i32 88, ; 135
	i32 32, ; 136
	i32 145, ; 137
	i32 121, ; 138
	i32 162, ; 139
	i32 160, ; 140
	i32 135, ; 141
	i32 138, ; 142
	i32 86, ; 143
	i32 129, ; 144
	i32 70, ; 145
	i32 63, ; 146
	i32 114, ; 147
	i32 160, ; 148
	i32 136, ; 149
	i32 80, ; 150
	i32 76, ; 151
	i32 132, ; 152
	i32 165, ; 153
	i32 107, ; 154
	i32 104, ; 155
	i32 60, ; 156
	i32 54, ; 157
	i32 13, ; 158
	i32 23, ; 159
	i32 23, ; 160
	i32 112, ; 161
	i32 72, ; 162
	i32 131, ; 163
	i32 119, ; 164
	i32 43, ; 165
	i32 166, ; 166
	i32 112, ; 167
	i32 144, ; 168
	i32 36, ; 169
	i32 152, ; 170
	i32 50, ; 171
	i32 141, ; 172
	i32 44, ; 173
	i32 6, ; 174
	i32 85, ; 175
	i32 109, ; 176
	i32 137, ; 177
	i32 166, ; 178
	i32 107, ; 179
	i32 119, ; 180
	i32 12, ; 181
	i32 86, ; 182
	i32 162, ; 183
	i32 91, ; 184
	i32 84, ; 185
	i32 9, ; 186
	i32 155, ; 187
	i32 110, ; 188
	i32 1, ; 189
	i32 169, ; 190
	i32 55, ; 191
	i32 128, ; 192
	i32 70, ; 193
	i32 49, ; 194
	i32 25, ; 195
	i32 1, ; 196
	i32 132, ; 197
	i32 139, ; 198
	i32 5, ; 199
	i32 141, ; 200
	i32 140, ; 201
	i32 61, ; 202
	i32 105, ; 203
	i32 92, ; 204
	i32 65, ; 205
	i32 144, ; 206
	i32 133, ; 207
	i32 72, ; 208
	i32 27, ; 209
	i32 128, ; 210
	i32 67, ; 211
	i32 40, ; 212
	i32 36, ; 213
	i32 22, ; 214
	i32 103, ; 215
	i32 42, ; 216
	i32 82, ; 217
	i32 59, ; 218
	i32 78, ; 219
	i32 26, ; 220
	i32 167, ; 221
	i32 146, ; 222
	i32 81, ; 223
	i32 103, ; 224
	i32 21, ; 225
	i32 164, ; 226
	i32 55, ; 227
	i32 96, ; 228
	i32 156, ; 229
	i32 79, ; 230
	i32 15, ; 231
	i32 16, ; 232
	i32 37, ; 233
	i32 31, ; 234
	i32 64, ; 235
	i32 150, ; 236
	i32 109, ; 237
	i32 95, ; 238
	i32 99, ; 239
	i32 0, ; 240
	i32 121, ; 241
	i32 125, ; 242
	i32 80, ; 243
	i32 153, ; 244
	i32 52, ; 245
	i32 28, ; 246
	i32 39, ; 247
	i32 149, ; 248
	i32 168, ; 249
	i32 106, ; 250
	i32 104, ; 251
	i32 89, ; 252
	i32 59, ; 253
	i32 14, ; 254
	i32 100, ; 255
	i32 120, ; 256
	i32 85, ; 257
	i32 113, ; 258
	i32 77, ; 259
	i32 116, ; 260
	i32 83, ; 261
	i32 95, ; 262
	i32 68, ; 263
	i32 158, ; 264
	i32 76, ; 265
	i32 153, ; 266
	i32 67, ; 267
	i32 64, ; 268
	i32 134, ; 269
	i32 57, ; 270
	i32 154, ; 271
	i32 149, ; 272
	i32 10, ; 273
	i32 159, ; 274
	i32 42, ; 275
	i32 98, ; 276
	i32 17, ; 277
	i32 11, ; 278
	i32 125, ; 279
	i32 131, ; 280
	i32 13, ; 281
	i32 136, ; 282
	i32 33, ; 283
	i32 124, ; 284
	i32 129, ; 285
	i32 66, ; 286
	i32 4, ; 287
	i32 98, ; 288
	i32 20, ; 289
	i32 92, ; 290
	i32 11, ; 291
	i32 116, ; 292
	i32 47, ; 293
	i32 163, ; 294
	i32 54, ; 295
	i32 161, ; 296
	i32 69, ; 297
	i32 156, ; 298
	i32 9, ; 299
	i32 7, ; 300
	i32 56, ; 301
	i32 7, ; 302
	i32 68, ; 303
	i32 163, ; 304
	i32 30, ; 305
	i32 87, ; 306
	i32 22, ; 307
	i32 32, ; 308
	i32 167, ; 309
	i32 19, ; 310
	i32 40, ; 311
	i32 106, ; 312
	i32 2, ; 313
	i32 35, ; 314
	i32 78, ; 315
	i32 41, ; 316
	i32 117, ; 317
	i32 155, ; 318
	i32 71, ; 319
	i32 110, ; 320
	i32 8, ; 321
	i32 52, ; 322
	i32 113, ; 323
	i32 16, ; 324
	i32 138, ; 325
	i32 117, ; 326
	i32 93, ; 327
	i32 88, ; 328
	i32 73, ; 329
	i32 118, ; 330
	i32 99, ; 331
	i32 146, ; 332
	i32 148, ; 333
	i32 34, ; 334
	i32 158, ; 335
	i32 44, ; 336
	i32 65, ; 337
	i32 108, ; 338
	i32 89 ; 339
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
