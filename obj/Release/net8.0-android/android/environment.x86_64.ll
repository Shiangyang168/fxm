; ModuleID = 'environment.x86_64.ll'
source_filename = "environment.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.ApplicationConfig = type {
	i8, ; bool uses_mono_llvm
	i8, ; bool uses_mono_aot
	i8, ; bool aot_lazy_load
	i8, ; bool uses_assembly_preload
	i8, ; bool broken_exception_transitions
	i8, ; bool instant_run_enabled
	i8, ; bool jni_add_native_method_registration_attribute_present
	i8, ; bool have_runtime_config_blob
	i8, ; bool have_assemblies_blob
	i8, ; bool marshal_methods_enabled
	i8, ; uint8_t bound_stream_io_exception_type
	i32, ; uint32_t package_naming_policy
	i32, ; uint32_t environment_variable_count
	i32, ; uint32_t system_property_count
	i32, ; uint32_t number_of_assemblies_in_apk
	i32, ; uint32_t bundled_assembly_name_width
	i32, ; uint32_t number_of_assembly_store_files
	i32, ; uint32_t number_of_dso_cache_entries
	i32, ; uint32_t android_runtime_jnienv_class_token
	i32, ; uint32_t jnienv_initialize_method_token
	i32, ; uint32_t jnienv_registerjninatives_method_token
	i32, ; uint32_t jni_remapping_replacement_type_count
	i32, ; uint32_t jni_remapping_replacement_method_index_entry_count
	i32, ; uint32_t mono_components_mask
	ptr ; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	i32, ; uint32_t debug_data_offset
	i32, ; uint32_t debug_data_size
	i32, ; uint32_t config_data_offset
	i32 ; uint32_t config_data_size
}

%struct.AssemblyStoreRuntimeData = type {
	ptr, ; uint8_t data_start
	i32, ; uint32_t assembly_count
	ptr ; AssemblyStoreAssemblyDescriptor assemblies
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	ptr, ; uint8_t image_data
	ptr, ; uint8_t debug_info_data
	ptr, ; uint8_t config_data
	ptr ; AssemblyStoreAssemblyDescriptor descriptor
}

%struct.DSOCacheEntry = type {
	i64, ; uint64_t hash
	i8, ; bool ignore
	ptr, ; char* name
	ptr ; void* handle
}

%struct.XamarinAndroidBundledAssembly = type {
	i32, ; int32_t apk_fd
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	ptr, ; uint8_t data
	i32, ; uint32_t name_length
	ptr ; char* name
}

; 0x15e6972616d58
@format_tag = dso_local local_unnamed_addr constant i64 385281960275288, align 8

@mono_aot_mode_name = dso_local local_unnamed_addr constant ptr @.str.0, align 8

; Application environment variables array, name:value
@app_environment_variables = dso_local local_unnamed_addr constant [8 x ptr] [
	ptr @.env.0, ; 0
	ptr @.env.1, ; 1
	ptr @.env.2, ; 2
	ptr @.env.3, ; 3
	ptr @.env.4, ; 4
	ptr @.env.5, ; 5
	ptr @.env.6, ; 6
	ptr @.env.7 ; 7
], align 16

; System properties defined by the application
@app_system_properties = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@application_config = dso_local local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; bool uses_mono_llvm
	i8 1, ; bool uses_mono_aot
	i8 1, ; bool aot_lazy_load
	i8 0, ; bool uses_assembly_preload
	i8 0, ; bool broken_exception_transitions
	i8 0, ; bool instant_run_enabled
	i8 0, ; bool jni_add_native_method_registration_attribute_present
	i8 1, ; bool have_runtime_config_blob
	i8 1, ; bool have_assemblies_blob
	i8 0, ; bool marshal_methods_enabled
	i8 0, ; uint8_t bound_stream_io_exception_type (0x0)
	i32 3, ; uint32_t package_naming_policy (0x3)
	i32 8, ; uint32_t environment_variable_count (0x8)
	i32 0, ; uint32_t system_property_count (0x0)
	i32 170, ; uint32_t number_of_assemblies_in_apk (0xaa)
	i32 0, ; uint32_t bundled_assembly_name_width (0x0)
	i32 2, ; uint32_t number_of_assembly_store_files (0x2)
	i32 1048, ; uint32_t number_of_dso_cache_entries (0x418)
	i32 33555374, ; uint32_t android_runtime_jnienv_class_token (0x20003ae)
	i32 100674710, ; uint32_t jnienv_initialize_method_token (0x6002c96)
	i32 100674709, ; uint32_t jnienv_registerjninatives_method_token (0x6002c95)
	i32 0, ; uint32_t jni_remapping_replacement_type_count (0x0)
	i32 0, ; uint32_t jni_remapping_replacement_method_index_entry_count (0x0)
	i32 0, ; uint32_t mono_components_mask (0x0)
	ptr @.ApplicationConfig.0_android_package_name; char* android_package_name
}, align 16

; DSO cache entries
@dso_cache = dso_local local_unnamed_addr global [1048 x %struct.DSOCacheEntry] [
	%struct.DSOCacheEntry {
		i64 7480178121376846, ; hash 0x1a932eafc8044e, from name: libaot-Uno.Core.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Uno.Core.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 0
	%struct.DSOCacheEntry {
		i64 27177278502013137, ; hash 0x608d973f1308d1, from name: aot-Uno.Core.Extensions.Disposables
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Uno.Core.Extensions.Disposables.dll.so
		ptr null; void* handle (0x0)
	}, ; 1
	%struct.DSOCacheEntry {
		i64 74108933065652780, ; hash 0x10749ae960fba2c, from name: libaot-Uno.Themes.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Uno.Themes.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 2
	%struct.DSOCacheEntry {
		i64 91555823548556097, ; hash 0x145458953bae341, from name: Microsoft.Extensions.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 3
	%struct.DSOCacheEntry {
		i64 97514044627863913, ; hash 0x15a7081c6a7c969, from name: libaot-Uno.Extensions.Hosting.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Uno.Extensions.Hosting.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 4
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 5
	%struct.DSOCacheEntry {
		i64 130550379555063986, ; hash 0x1cfcee0e6ac08b2, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 6
	%struct.DSOCacheEntry {
		i64 140080779458762554, ; hash 0x1f1aaba0b7fd73a, from name: libaot-Uno.UI.FluentTheme.v2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-Uno.UI.FluentTheme.v2.dll.so
		ptr null; void* handle (0x0)
	}, ; 7
	%struct.DSOCacheEntry {
		i64 143774355635273725, ; hash 0x1feca03c3737ffd, from name: libaot-Uno.Extensions.Hosting.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Uno.Extensions.Hosting.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 8
	%struct.DSOCacheEntry {
		i64 147907448127148234, ; hash 0x20d790a5940d0ca, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 9
	%struct.DSOCacheEntry {
		i64 160518225272466977, ; hash 0x23a4679b5576e21, from name: Microsoft.Extensions.Hosting.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 10
	%struct.DSOCacheEntry {
		i64 164937188365256487, ; hash 0x249f97fbac34727, from name: libaot-Uno.Extensions.Storage.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Uno.Extensions.Storage.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 11
	%struct.DSOCacheEntry {
		i64 221057335580609593, ; hash 0x3115a79ba46cc39, from name: libaot-System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 12
	%struct.DSOCacheEntry {
		i64 228930976305280909, ; hash 0x32d538290c2778d, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 13
	%struct.DSOCacheEntry {
		i64 274660847975729299, ; hash 0x3cfca96054d0893, from name: System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 14
	%struct.DSOCacheEntry {
		i64 290628453294630638, ; hash 0x4088509d83f66ee, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 15
	%struct.DSOCacheEntry {
		i64 312274068963115203, ; hash 0x4556b9c791cc0c3, from name: aot-Microsoft.Extensions.Configuration.CommandLine
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		ptr null; void* handle (0x0)
	}, ; 16
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 17
	%struct.DSOCacheEntry {
		i64 327393534088447553, ; hash 0x48b22af451a0641, from name: libaot-System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 18
	%struct.DSOCacheEntry {
		i64 409388313388362627, ; hash 0x5ae708082b5ab83, from name: System.Web.HttpUtility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 19
	%struct.DSOCacheEntry {
		i64 455421633420727173, ; hash 0x651fb900b121385, from name: libaot-System.Threading.Tasks.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 20
	%struct.DSOCacheEntry {
		i64 472512565983034901, ; hash 0x68eb3acdf53be15, from name: libaot-System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 21
	%struct.DSOCacheEntry {
		i64 483259409837255036, ; hash 0x6b4e1df71b6e97c, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 22
	%struct.DSOCacheEntry {
		i64 488050600882966260, ; hash 0x6c5e76f8a0b8ef4, from name: Uno.Extensions.Serialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Uno.Extensions.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 23
	%struct.DSOCacheEntry {
		i64 506911994635706642, ; hash 0x708e9c5fca56112, from name: libaot-Uno.Fonts.Roboto.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Uno.Fonts.Roboto.dll.so
		ptr null; void* handle (0x0)
	}, ; 24
	%struct.DSOCacheEntry {
		i64 509887952479750601, ; hash 0x7137c642ace89c9, from name: aot-Microsoft.Extensions.Diagnostics.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 25
	%struct.DSOCacheEntry {
		i64 511358452572857504, ; hash 0x718b5cda67fa4a0, from name: Uno.Extensions.Serialization.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Uno.Extensions.Serialization.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 26
	%struct.DSOCacheEntry {
		i64 544465019603341966, ; hash 0x78e540cf615528e, from name: libaot-System.Text.Encoding.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 27
	%struct.DSOCacheEntry {
		i64 560278790331054453, ; hash 0x7c6829760de3975, from name: System.Reflection.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 28
	%struct.DSOCacheEntry {
		i64 584895086741024446, ; hash 0x81df6fb8411eebe, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 29
	%struct.DSOCacheEntry {
		i64 592295183581559413, ; hash 0x8384154d38dba75, from name: Xamarin.AndroidX.Lifecycle.Common.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 30
	%struct.DSOCacheEntry {
		i64 600304385254350546, ; hash 0x854b5a86831ded2, from name: aot-Uno.Extensions.Http.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Uno.Extensions.Http.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 31
	%struct.DSOCacheEntry {
		i64 626497116700919570, ; hash 0x8b1c3ceedc3c712, from name: aot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 32
	%struct.DSOCacheEntry {
		i64 628522906763308403, ; hash 0x8b8f640eed2ad73, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 33
	%struct.DSOCacheEntry {
		i64 680930311029487832, ; hash 0x973268299b578d8, from name: aot-System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 34
	%struct.DSOCacheEntry {
		i64 702078190593431133, ; hash 0x9be486502ded65d, from name: Uno.Extensions.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Uno.Extensions.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 35
	%struct.DSOCacheEntry {
		i64 743359736279824557, ; hash 0xa50f1bddd4978ad, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 36
	%struct.DSOCacheEntry {
		i64 750875890346172408, ; hash 0xa6ba5a4da7d1ff8, from name: System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 37
	%struct.DSOCacheEntry {
		i64 756112008676698224, ; hash 0xa7e3fdda794e870, from name: libaot-Uno.Extensions.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Uno.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 38
	%struct.DSOCacheEntry {
		i64 756290313852954525, ; hash 0xa7ee2089046279d, from name: System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 39
	%struct.DSOCacheEntry {
		i64 761938169030670524, ; hash 0xa92f2ba51e278bc, from name: Uno.Extensions.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Uno.Extensions.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 40
	%struct.DSOCacheEntry {
		i64 798650806430271120, ; hash 0xb1560ad50db0690, from name: aot-Uno.Themes.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Uno.Themes.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 41
	%struct.DSOCacheEntry {
		i64 872800313462103108, ; hash 0xc1ccf42c3c21c44, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 42
	%struct.DSOCacheEntry {
		i64 894263488832018123, ; hash 0xc690fe7b36f16cb, from name: Uno.Fonts.Fluent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Uno.Fonts.Fluent.dll.so
		ptr null; void* handle (0x0)
	}, ; 43
	%struct.DSOCacheEntry {
		i64 914246676627319014, ; hash 0xcb00e822d73e8e6, from name: libaot-CommonServiceLocator
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommonServiceLocator.dll.so
		ptr null; void* handle (0x0)
	}, ; 44
	%struct.DSOCacheEntry {
		i64 917175643050152429, ; hash 0xcba766350a511ed, from name: aot-System.Runtime.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 45
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 46
	%struct.DSOCacheEntry {
		i64 964580427330536276, ; hash 0xd62e0c9c054c354, from name: aot-Uno.Core.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Uno.Core.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 47
	%struct.DSOCacheEntry {
		i64 1041954372036068483, ; hash 0xe75c3fb19600483, from name: aot-Uno.Material.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Uno.Material.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 48
	%struct.DSOCacheEntry {
		i64 1085877609307728300, ; hash 0xf11cfeeb45669ac, from name: aot-Uno.Diagnostics.Eventing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Uno.Diagnostics.Eventing.dll.so
		ptr null; void* handle (0x0)
	}, ; 49
	%struct.DSOCacheEntry {
		i64 1096321628016204463, ; hash 0xf36eab64d7bdaaf, from name: aot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 50
	%struct.DSOCacheEntry {
		i64 1097501675994448902, ; hash 0xf3b1bf5a20b8406, from name: libaot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 51
	%struct.DSOCacheEntry {
		i64 1125150419624644467, ; hash 0xf9d5658689bcf73, from name: libaot-Refit.HttpClientFactory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Refit.HttpClientFactory.dll.so
		ptr null; void* handle (0x0)
	}, ; 52
	%struct.DSOCacheEntry {
		i64 1131182615083724429, ; hash 0xfb2c4985c29ae8d, from name: Uno.Extensions.Reactive.Messaging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Uno.Extensions.Reactive.Messaging.dll.so
		ptr null; void* handle (0x0)
	}, ; 53
	%struct.DSOCacheEntry {
		i64 1136024923200830162, ; hash 0xfc3f8a613603ad2, from name: libaot-UniversalImageLoader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-UniversalImageLoader.dll.so
		ptr null; void* handle (0x0)
	}, ; 54
	%struct.DSOCacheEntry {
		i64 1136601720422326463, ; hash 0xfc6053e24dee0bf, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 55
	%struct.DSOCacheEntry {
		i64 1146928578970395727, ; hash 0xfeab5774446244f, from name: aot-System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 56
	%struct.DSOCacheEntry {
		i64 1181472735908652530, ; hash 0x10656f318fa4e5f2, from name: System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 57
	%struct.DSOCacheEntry {
		i64 1194039654435224979, ; hash 0x109214bd4a577d93, from name: libaot-Uno.Toolkit.WinUI.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Uno.Toolkit.WinUI.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 58
	%struct.DSOCacheEntry {
		i64 1196280833168408863, ; hash 0x109a0b14609c811f, from name: libaot-System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 59
	%struct.DSOCacheEntry {
		i64 1200280967012175695, ; hash 0x10a8412e1d6c4f4f, from name: libaot-netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 60
	%struct.DSOCacheEntry {
		i64 1249162902185008584, ; hash 0x1155eb0a8b555dc8, from name: aot-System.Diagnostics.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 61
	%struct.DSOCacheEntry {
		i64 1267295974198901873, ; hash 0x119656f95f687c71, from name: aot-Uno.UI.FluentTheme.v2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-Uno.UI.FluentTheme.v2.dll.so
		ptr null; void* handle (0x0)
	}, ; 62
	%struct.DSOCacheEntry {
		i64 1288830572241085177, ; hash 0x11e2d893b217e2f9, from name: aot-_Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 63
	%struct.DSOCacheEntry {
		i64 1310390983169450822, ; hash 0x122f71a80cb0a346, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 64
	%struct.DSOCacheEntry {
		i64 1342948529819606138, ; hash 0x12a31c929787dc7a, from name: aot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 65
	%struct.DSOCacheEntry {
		i64 1347602760944503386, ; hash 0x12b3a592386eca5a, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 66
	%struct.DSOCacheEntry {
		i64 1379514111066213802, ; hash 0x132504c668bd8daa, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 67
	%struct.DSOCacheEntry {
		i64 1408308371658705060, ; hash 0x138b5100a2ed08a4, from name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 68
	%struct.DSOCacheEntry {
		i64 1430514042535569293, ; hash 0x13da34f1478a678d, from name: aot-Uno.UI.FluentTheme
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-Uno.UI.FluentTheme.dll.so
		ptr null; void* handle (0x0)
	}, ; 69
	%struct.DSOCacheEntry {
		i64 1440246745011583723, ; hash 0x13fcc8c8a953faeb, from name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		ptr null; void* handle (0x0)
	}, ; 70
	%struct.DSOCacheEntry {
		i64 1445470738645903154, ; hash 0x140f57fa7635e732, from name: libaot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 71
	%struct.DSOCacheEntry {
		i64 1450787477730752792, ; hash 0x14223b863eb9f918, from name: libaot-SkiaSharp.Views.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-SkiaSharp.Views.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 72
	%struct.DSOCacheEntry {
		i64 1460600780617023150, ; hash 0x144518abdf55feae, from name: libaot-Uno.UI.Composition
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-Uno.UI.Composition.dll.so
		ptr null; void* handle (0x0)
	}, ; 73
	%struct.DSOCacheEntry {
		i64 1469551771793876817, ; hash 0x1464e58ce8d1e751, from name: libaot-Uno.Foundation.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Uno.Foundation.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 74
	%struct.DSOCacheEntry {
		i64 1481770959016848839, ; hash 0x14904ed622b06dc7, from name: Uno.Core.Extensions.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Uno.Core.Extensions.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 75
	%struct.DSOCacheEntry {
		i64 1499327756876432029, ; hash 0x14ceaea6ae80c29d, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 76
	%struct.DSOCacheEntry {
		i64 1513467482682125403, ; hash 0x1500eaa8245f6c5b, from name: Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 77
	%struct.DSOCacheEntry {
		i64 1519507632020922286, ; hash 0x15166024001a1fae, from name: Uno.Extensions.Navigation.Toolkit.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 78
	%struct.DSOCacheEntry {
		i64 1541515823776768866, ; hash 0x1564907973dba362, from name: Microsoft.Extensions.FileSystemGlobbing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		ptr null; void* handle (0x0)
	}, ; 79
	%struct.DSOCacheEntry {
		i64 1560252243653855768, ; hash 0x15a7212626fe8a18, from name: Uno.Toolkit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Uno.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 80
	%struct.DSOCacheEntry {
		i64 1560574748131067758, ; hash 0x15a8467713cc076e, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 81
	%struct.DSOCacheEntry {
		i64 1566816132992284841, ; hash 0x15be72f8bb5b38a9, from name: aot-Microsoft.Extensions.Logging.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.Extensions.Logging.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 82
	%struct.DSOCacheEntry {
		i64 1613474497156736736, ; hash 0x16643681b12de6e0, from name: aot-Uno.Extensions.Reactive.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Uno.Extensions.Reactive.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 83
	%struct.DSOCacheEntry {
		i64 1628697873719960079, ; hash 0x169a4c164183220f, from name: Uno.UI.FluentTheme.v1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-Uno.UI.FluentTheme.v1.dll.so
		ptr null; void* handle (0x0)
	}, ; 84
	%struct.DSOCacheEntry {
		i64 1633723448902383526, ; hash 0x16ac26d2290d77a6, from name: libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 85
	%struct.DSOCacheEntry {
		i64 1657261842476789961, ; hash 0x16ffc6dd7ca370c9, from name: Uno.Extensions.Hosting
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Uno.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 86
	%struct.DSOCacheEntry {
		i64 1709477469831854591, ; hash 0x17b948b39cdc79ff, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 87
	%struct.DSOCacheEntry {
		i64 1711012373916354168, ; hash 0x17bebcb051950678, from name: libaot-Microsoft.Extensions.Logging.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.Extensions.Logging.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 88
	%struct.DSOCacheEntry {
		i64 1730900776029750156, ; hash 0x18056515c8b3838c, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 89
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 90
	%struct.DSOCacheEntry {
		i64 1781677154983234434, ; hash 0x18b9c9eec7344b82, from name: libaot-Uno.Extensions.Reactive.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Uno.Extensions.Reactive.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 91
	%struct.DSOCacheEntry {
		i64 1798725109391190735, ; hash 0x18f65af4f9d66acf, from name: Uno.Extensions.Serialization.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Uno.Extensions.Serialization.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 92
	%struct.DSOCacheEntry {
		i64 1802121905749914162, ; hash 0x19026c53422c7232, from name: aot-Uno.Extensions.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Uno.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 93
	%struct.DSOCacheEntry {
		i64 1804705281214614126, ; hash 0x190b99e43b118a6e, from name: aot-Uno.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Uno.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 94
	%struct.DSOCacheEntry {
		i64 1813483025067564927, ; hash 0x192ac933fb5a5f7f, from name: Uno.Extensions.Navigation.Toolkit.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 95
	%struct.DSOCacheEntry {
		i64 1820835640426350938, ; hash 0x1944e85e25fbc95a, from name: Uno.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Uno.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 96
	%struct.DSOCacheEntry {
		i64 1836611346387731153, ; hash 0x197cf449ebe482d1, from name: Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 97
	%struct.DSOCacheEntry {
		i64 1875417405349196092, ; hash 0x1a06d2319b6c713c, from name: System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 98
	%struct.DSOCacheEntry {
		i64 1880128049796359242, ; hash 0x1a178e7ffc5c244a, from name: Uno.Toolkit.WinUI.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Uno.Toolkit.WinUI.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 99
	%struct.DSOCacheEntry {
		i64 1892964792832851581, ; hash 0x1a452973211f7e7d, from name: libaot-Uno.Extensions.Http.Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Uno.Extensions.Http.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 100
	%struct.DSOCacheEntry {
		i64 1893652335120276468, ; hash 0x1a479ac40aeedbf4, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 101
	%struct.DSOCacheEntry {
		i64 1912955457513114849, ; hash 0x1a8c2eda7436cce1, from name: Uno.Extensions.Reactive.Messaging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Uno.Extensions.Reactive.Messaging.dll.so
		ptr null; void* handle (0x0)
	}, ; 102
	%struct.DSOCacheEntry {
		i64 1944135226823170461, ; hash 0x1afaf4b0361e599d, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 103
	%struct.DSOCacheEntry {
		i64 1963444947021468209, ; hash 0x1b3f8ec6cb401231, from name: aot-Uno.UI.FluentTheme.v1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-Uno.UI.FluentTheme.v1.dll.so
		ptr null; void* handle (0x0)
	}, ; 104
	%struct.DSOCacheEntry {
		i64 1966161898721130683, ; hash 0x1b4935d4682e38bb, from name: Uno.Extensions.Localization.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Uno.Extensions.Localization.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 105
	%struct.DSOCacheEntry {
		i64 1977690810066273238, ; hash 0x1b722b50418e03d6, from name: libaot-Uno.Extensions.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Uno.Extensions.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 106
	%struct.DSOCacheEntry {
		i64 2010011812825262371, ; hash 0x1be4ff1821c9e923, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 107
	%struct.DSOCacheEntry {
		i64 2017348482324985430, ; hash 0x1bff0fc19d277656, from name: libaot-Uno.Extensions.Localization.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Uno.Extensions.Localization.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 108
	%struct.DSOCacheEntry {
		i64 2019051625445060944, ; hash 0x1c051cc185d3f150, from name: libaot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 109
	%struct.DSOCacheEntry {
		i64 2024202821639637893, ; hash 0x1c1769bdd92c8b85, from name: aot-System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 110
	%struct.DSOCacheEntry {
		i64 2027681472575715673, ; hash 0x1c23c58e62843959, from name: Uno.Themes.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Uno.Themes.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 111
	%struct.DSOCacheEntry {
		i64 2054529855940994150, ; hash 0x1c832804c3cc2466, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 112
	%struct.DSOCacheEntry {
		i64 2081794811402477991, ; hash 0x1ce40559e4e561a7, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 113
	%struct.DSOCacheEntry {
		i64 2088755289207276331, ; hash 0x1cfcbfde6beb032b, from name: Uno.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-Uno.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 114
	%struct.DSOCacheEntry {
		i64 2098419421011047770, ; hash 0x1d1f15587324f55a, from name: libaot-Uno.Foundation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Uno.Foundation.dll.so
		ptr null; void* handle (0x0)
	}, ; 115
	%struct.DSOCacheEntry {
		i64 2115676539926256486, ; hash 0x1d5c649a8dee9b66, from name: aot-UniversalImageLoader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-UniversalImageLoader.dll.so
		ptr null; void* handle (0x0)
	}, ; 116
	%struct.DSOCacheEntry {
		i64 2154631985584437668, ; hash 0x1de6ca600a7479a4, from name: libaot-System.Resources.ResourceManager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 117
	%struct.DSOCacheEntry {
		i64 2169143264332568652, ; hash 0x1e1a584e6979584c, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 118
	%struct.DSOCacheEntry {
		i64 2176135168026391317, ; hash 0x1e332f67d972b315, from name: Uno.Extensions.Localization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Uno.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 119
	%struct.DSOCacheEntry {
		i64 2178726392135891111, ; hash 0x1e3c641c3a0738a7, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 120
	%struct.DSOCacheEntry {
		i64 2188053935818705699, ; hash 0x1e5d877639de8b23, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 121
	%struct.DSOCacheEntry {
		i64 2204262165896919438, ; hash 0x1e971cc2de1e798e, from name: Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 122
	%struct.DSOCacheEntry {
		i64 2205845752800215288, ; hash 0x1e9cbd066cf600f8, from name: aot-System.IO.FileSystem.Watcher.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 123
	%struct.DSOCacheEntry {
		i64 2224048179339183696, ; hash 0x1edd68091cddc650, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 124
	%struct.DSOCacheEntry {
		i64 2278942814095671648, ; hash 0x1fa06e6a419a0160, from name: System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 125
	%struct.DSOCacheEntry {
		i64 2287834202362508563, ; hash 0x1fc00515e8ce7513, from name: System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 126
	%struct.DSOCacheEntry {
		i64 2308032427487440447, ; hash 0x2007c743aa78ae3f, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 127
	%struct.DSOCacheEntry {
		i64 2331926070505433189, ; hash 0x205caa67f2f2e865, from name: aot-Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 128
	%struct.DSOCacheEntry {
		i64 2335503487726329082, ; hash 0x2069600c4d9d1cfa, from name: System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 129
	%struct.DSOCacheEntry {
		i64 2349266799542577022, ; hash 0x209a45b50d5aa77e, from name: Refit.HttpClientFactory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Refit.HttpClientFactory.dll.so
		ptr null; void* handle (0x0)
	}, ; 130
	%struct.DSOCacheEntry {
		i64 2383056933276923752, ; hash 0x211251a7a380b768, from name: System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 131
	%struct.DSOCacheEntry {
		i64 2426618879783757044, ; hash 0x21ad1503aec464f4, from name: aot-Uno.Extensions.Serialization.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Uno.Extensions.Serialization.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 132
	%struct.DSOCacheEntry {
		i64 2476817259496200132, ; hash 0x225f6c2cbdd3d7c4, from name: aot-Uno.Core.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Uno.Core.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 133
	%struct.DSOCacheEntry {
		i64 2476879673203463353, ; hash 0x225fa4f090ad94b9, from name: libaot-System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 134
	%struct.DSOCacheEntry {
		i64 2481419953551094563, ; hash 0x226fc64cf5fab323, from name: Uno.Extensions.Navigation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Uno.Extensions.Navigation.dll.so
		ptr null; void* handle (0x0)
	}, ; 135
	%struct.DSOCacheEntry {
		i64 2497223385847772520, ; hash 0x22a7eb7046413568, from name: System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 136
	%struct.DSOCacheEntry {
		i64 2511572262874387261, ; hash 0x22dae5aa8c5a133d, from name: System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 137
	%struct.DSOCacheEntry {
		i64 2516268783161295760, ; hash 0x22eb952063bbc390, from name: _Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 138
	%struct.DSOCacheEntry {
		i64 2522582145975789087, ; hash 0x23020318b7a1261f, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 139
	%struct.DSOCacheEntry {
		i64 2531748212765917768, ; hash 0x23229395f2a48248, from name: aot-Microsoft.Extensions.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 140
	%struct.DSOCacheEntry {
		i64 2538554391237297494, ; hash 0x233ac1c4dcb50556, from name: SkiaSharp.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 141
	%struct.DSOCacheEntry {
		i64 2543609594401387459, ; hash 0x234cb7731191f3c3, from name: aot-System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 142
	%struct.DSOCacheEntry {
		i64 2556787638847292301, ; hash 0x237b88cfa39a438d, from name: libaot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 143
	%struct.DSOCacheEntry {
		i64 2564867392456424521, ; hash 0x23983d4ddf58fc49, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 144
	%struct.DSOCacheEntry {
		i64 2566579877633172060, ; hash 0x239e52cce5fda25c, from name: Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 145
	%struct.DSOCacheEntry {
		i64 2573756026166647687, ; hash 0x23b7d1782e2f1b87, from name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		ptr null; void* handle (0x0)
	}, ; 146
	%struct.DSOCacheEntry {
		i64 2584109571859600390, ; hash 0x23dc99f6e360d406, from name: libaot-Uno.UI.Dispatching.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-Uno.UI.Dispatching.dll.so
		ptr null; void* handle (0x0)
	}, ; 147
	%struct.DSOCacheEntry {
		i64 2603384271731079458, ; hash 0x24211433aa5eb922, from name: Uno.Material.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Uno.Material.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 148
	%struct.DSOCacheEntry {
		i64 2607857763146079109, ; hash 0x2430f8d18d111b85, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 149
	%struct.DSOCacheEntry {
		i64 2608513900725641520, ; hash 0x24334d927c6ba130, from name: libaot-Microsoft.Extensions.Hosting
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 150
	%struct.DSOCacheEntry {
		i64 2621032786002059017, ; hash 0x245fc76e9a4e1f09, from name: aot-Uno
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-Uno.dll.so
		ptr null; void* handle (0x0)
	}, ; 151
	%struct.DSOCacheEntry {
		i64 2656907746661064104, ; hash 0x24df3b84c8b75da8, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 152
	%struct.DSOCacheEntry {
		i64 2680228656536905837, ; hash 0x253215c33db4686d, from name: libaot-System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 153
	%struct.DSOCacheEntry {
		i64 2710393994614567548, ; hash 0x259d40fa525a727c, from name: Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 154
	%struct.DSOCacheEntry {
		i64 2726081049393968892, ; hash 0x25d4fc45620d36fc, from name: libaot-Uno.UI.BindingHelper.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Uno.UI.BindingHelper.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 155
	%struct.DSOCacheEntry {
		i64 2837562181765940674, ; hash 0x27610bc5303dc5c2, from name: libaot-_Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 156
	%struct.DSOCacheEntry {
		i64 2865936624365190494, ; hash 0x27c5da2cec11bd5e, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 157
	%struct.DSOCacheEntry {
		i64 2875445883282773963, ; hash 0x27e7a2cbcbedd7cb, from name: Uno.Extensions.Serialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Uno.Extensions.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 158
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 159
	%struct.DSOCacheEntry {
		i64 2897279701402357900, ; hash 0x28353489b909908c, from name: Microsoft.Extensions.Hosting
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 160
	%struct.DSOCacheEntry {
		i64 2898700389027986628, ; hash 0x283a40a5564cbcc4, from name: aot-System.Linq.Async
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Linq.Async.dll.so
		ptr null; void* handle (0x0)
	}, ; 161
	%struct.DSOCacheEntry {
		i64 2907180662588755459, ; hash 0x28586168e37cce03, from name: aot-Microsoft.Extensions.FileSystemGlobbing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		ptr null; void* handle (0x0)
	}, ; 162
	%struct.DSOCacheEntry {
		i64 2919688997915944480, ; hash 0x2884d1aca7656620, from name: aot-Uno.Extensions.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Uno.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 163
	%struct.DSOCacheEntry {
		i64 2955297273755916539, ; hash 0x290353366fe6d8fb, from name: Microsoft.Extensions.Diagnostics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Diagnostics.dll.so
		ptr null; void* handle (0x0)
	}, ; 164
	%struct.DSOCacheEntry {
		i64 2962110714036393053, ; hash 0x291b88001f84945d, from name: libaot-Uno.Fonts.Fluent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Uno.Fonts.Fluent.dll.so
		ptr null; void* handle (0x0)
	}, ; 165
	%struct.DSOCacheEntry {
		i64 2978076563348721961, ; hash 0x295440db18511129, from name: libaot-System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 166
	%struct.DSOCacheEntry {
		i64 2999711142061255729, ; hash 0x29a11d63fb57ac31, from name: libaot-Uno.Toolkit.WinUI.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Uno.Toolkit.WinUI.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 167
	%struct.DSOCacheEntry {
		i64 3023023456770706911, ; hash 0x29f3efd1387dcddf, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 168
	%struct.DSOCacheEntry {
		i64 3083577836014240253, ; hash 0x2acb11b450e581fd, from name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 169
	%struct.DSOCacheEntry {
		i64 3092532400746456623, ; hash 0x2aeae1d562e0e62f, from name: libaot-Uno.Extensions.Navigation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Uno.Extensions.Navigation.dll.so
		ptr null; void* handle (0x0)
	}, ; 170
	%struct.DSOCacheEntry {
		i64 3108167353802057239, ; hash 0x2b226dbd91d66617, from name: libaot-Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 171
	%struct.DSOCacheEntry {
		i64 3116659788444322944, ; hash 0x2b40999097f7cc80, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 172
	%struct.DSOCacheEntry {
		i64 3127604348072465164, ; hash 0x2b677b9574d3930c, from name: aot-SkiaSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 173
	%struct.DSOCacheEntry {
		i64 3159715243761782120, ; hash 0x2bd99045f7cecd68, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 174
	%struct.DSOCacheEntry {
		i64 3169331001094385336, ; hash 0x2bfbb9c0efdd2eb8, from name: Uno.UI.FluentTheme.v2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-Uno.UI.FluentTheme.v2.dll.so
		ptr null; void* handle (0x0)
	}, ; 175
	%struct.DSOCacheEntry {
		i64 3188209531010000695, ; hash 0x2c3ecbad355da737, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 176
	%struct.DSOCacheEntry {
		i64 3203820055246295907, ; hash 0x2c76415d9d3a5363, from name: libaot-System.Linq.Async.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Linq.Async.dll.so
		ptr null; void* handle (0x0)
	}, ; 177
	%struct.DSOCacheEntry {
		i64 3212929659899216373, ; hash 0x2c969e80ba9c01f5, from name: aot-SkiaSharp.Skottie.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-SkiaSharp.Skottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 178
	%struct.DSOCacheEntry {
		i64 3225006507905686379, ; hash 0x2cc18655060a9b6b, from name: Uno.UI.FluentTheme.v1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-Uno.UI.FluentTheme.v1.dll.so
		ptr null; void* handle (0x0)
	}, ; 179
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 180
	%struct.DSOCacheEntry {
		i64 3232843639425161181, ; hash 0x2cdd5e29665157dd, from name: aot-Uno.Extensions.Localization.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Uno.Extensions.Localization.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 181
	%struct.DSOCacheEntry {
		i64 3248404927772003157, ; hash 0x2d14a7122e7a8b55, from name: libaot-Microsoft.Extensions.Configuration.Binder.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Binder.dll.so
		ptr null; void* handle (0x0)
	}, ; 182
	%struct.DSOCacheEntry {
		i64 3260817401620729492, ; hash 0x2d40c02675040e94, from name: libaot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 183
	%struct.DSOCacheEntry {
		i64 3261539738188127982, ; hash 0x2d43511c8b861eee, from name: Uno.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-Uno.dll.so
		ptr null; void* handle (0x0)
	}, ; 184
	%struct.DSOCacheEntry {
		i64 3269880844891590771, ; hash 0x2d60f34dc99e1073, from name: Uno.Extensions.Http.Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Uno.Extensions.Http.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 185
	%struct.DSOCacheEntry {
		i64 3306570535143595280, ; hash 0x2de34c61fc01dd10, from name: Uno.UI.BindingHelper.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Uno.UI.BindingHelper.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 186
	%struct.DSOCacheEntry {
		i64 3325875462027654285, ; hash 0x2e27e21c8958b48d, from name: System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 187
	%struct.DSOCacheEntry {
		i64 3344514922410554693, ; hash 0x2e6a1a9a18463545, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 188
	%struct.DSOCacheEntry {
		i64 3350069220138397487, ; hash 0x2e7dd634cf51af2f, from name: Microsoft.Extensions.Configuration.FileExtensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 189
	%struct.DSOCacheEntry {
		i64 3364105986321300450, ; hash 0x2eafb4921d723be2, from name: libaot-SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 190
	%struct.DSOCacheEntry {
		i64 3396143930648122816, ; hash 0x2f2186e9506155c0, from name: Microsoft.Extensions.FileProviders.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 191
	%struct.DSOCacheEntry {
		i64 3413847582085635339, ; hash 0x2f606c49df8a5d0b, from name: aot-System.Text.Encoding.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 192
	%struct.DSOCacheEntry {
		i64 3415134081241495173, ; hash 0x2f64fe5a4cbab685, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 193
	%struct.DSOCacheEntry {
		i64 3425915677031941243, ; hash 0x2f8b4c282fee447b, from name: libaot-System.Runtime.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 194
	%struct.DSOCacheEntry {
		i64 3466965984690799750, ; hash 0x301d2331bddb8486, from name: libaot-Microsoft.Extensions.Configuration.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Configuration.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 195
	%struct.DSOCacheEntry {
		i64 3471168813868779455, ; hash 0x302c11a52a1007bf, from name: Microsoft.Extensions.Configuration.Binder.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Binder.dll.so
		ptr null; void* handle (0x0)
	}, ; 196
	%struct.DSOCacheEntry {
		i64 3485058304155689985, ; hash 0x305d6a1020b9a401, from name: aot-Uno.Extensions.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Uno.Extensions.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 197
	%struct.DSOCacheEntry {
		i64 3494946837667399002, ; hash 0x30808ba1c00a455a, from name: Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 198
	%struct.DSOCacheEntry {
		i64 3498147534356994530, ; hash 0x308beaa60541d9e2, from name: aot-Uno.Toolkit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Uno.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 199
	%struct.DSOCacheEntry {
		i64 3500742009687527896, ; hash 0x3095224f61b651d8, from name: Microsoft.Extensions.Configuration.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Configuration.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 200
	%struct.DSOCacheEntry {
		i64 3519863767463074839, ; hash 0x30d911728d679c17, from name: libaot-System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 201
	%struct.DSOCacheEntry {
		i64 3522470458906976663, ; hash 0x30e2543832f52197, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 202
	%struct.DSOCacheEntry {
		i64 3577153083746314324, ; hash 0x31a499c6efe46854, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 203
	%struct.DSOCacheEntry {
		i64 3579654346662722532, ; hash 0x31ad7ca99783bbe4, from name: libaot-Uno.Core.Extensions.Equality.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Uno.Core.Extensions.Equality.dll.so
		ptr null; void* handle (0x0)
	}, ; 204
	%struct.DSOCacheEntry {
		i64 3584501248261514691, ; hash 0x31beb4e4cf9265c3, from name: libaot-System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 205
	%struct.DSOCacheEntry {
		i64 3591073084672227789, ; hash 0x31d60df1b65ab9cd, from name: aot-Refit.HttpClientFactory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Refit.HttpClientFactory.dll.so
		ptr null; void* handle (0x0)
	}, ; 206
	%struct.DSOCacheEntry {
		i64 3604923293906189876, ; hash 0x320742a2d7cf3e34, from name: libaot-System.Reflection.Emit.Lightweight
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 207
	%struct.DSOCacheEntry {
		i64 3617300193753112415, ; hash 0x32333b5c669b1f5f, from name: Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 208
	%struct.DSOCacheEntry {
		i64 3629181783462091808, ; hash 0x325d719a94939c20, from name: libaot-Uno.Extensions.Logging.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Uno.Extensions.Logging.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 209
	%struct.DSOCacheEntry {
		i64 3634539117926197510, ; hash 0x32707a123640a906, from name: CommonServiceLocator.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommonServiceLocator.dll.so
		ptr null; void* handle (0x0)
	}, ; 210
	%struct.DSOCacheEntry {
		i64 3636642728844933843, ; hash 0x3277f34b4bcf3ad3, from name: libaot-Uno.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-Uno.dll.so
		ptr null; void* handle (0x0)
	}, ; 211
	%struct.DSOCacheEntry {
		i64 3638003163729360188, ; hash 0x327cc89a39d5f53c, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 212
	%struct.DSOCacheEntry {
		i64 3647754201059316852, ; hash 0x329f6d1e86145474, from name: System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 213
	%struct.DSOCacheEntry {
		i64 3657389980202273675, ; hash 0x32c1a8cf2f078b8b, from name: libaot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 214
	%struct.DSOCacheEntry {
		i64 3703096612151080118, ; hash 0x33640abfb837b4b6, from name: libaot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 215
	%struct.DSOCacheEntry {
		i64 3705518375990971795, ; hash 0x336ca5548d9fcd93, from name: libaot-CommonServiceLocator.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommonServiceLocator.dll.so
		ptr null; void* handle (0x0)
	}, ; 216
	%struct.DSOCacheEntry {
		i64 3705803144336485011, ; hash 0x336da85359b3aa93, from name: aot-Uno.Toolkit.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Uno.Toolkit.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 217
	%struct.DSOCacheEntry {
		i64 3713334140145759919, ; hash 0x338869b9f3b7f6af, from name: aot-Uno.Extensions.Logging.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Uno.Extensions.Logging.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 218
	%struct.DSOCacheEntry {
		i64 3727469159507183293, ; hash 0x33baa1739ba646bd, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 219
	%struct.DSOCacheEntry {
		i64 3766788760912740873, ; hash 0x3446526bb6234209, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 220
	%struct.DSOCacheEntry {
		i64 3804325682343189483, ; hash 0x34cbae0d49f61beb, from name: Uno.Extensions.Hosting.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Uno.Extensions.Hosting.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 221
	%struct.DSOCacheEntry {
		i64 3844000936989450018, ; hash 0x3558a27c5d865f22, from name: SkiaSharp.SceneGraph.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-SkiaSharp.SceneGraph.dll.so
		ptr null; void* handle (0x0)
	}, ; 222
	%struct.DSOCacheEntry {
		i64 3869649043256705283, ; hash 0x35b3c14d74bf0103, from name: System.Diagnostics.Tools
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 223
	%struct.DSOCacheEntry {
		i64 3912560102738266720, ; hash 0x364c34af0e148a60, from name: Uno.UI.Toolkit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-Uno.UI.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 224
	%struct.DSOCacheEntry {
		i64 3926486732424186854, ; hash 0x367daee1356d8be6, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 225
	%struct.DSOCacheEntry {
		i64 3929170435042096885, ; hash 0x368737b16aa6b6f5, from name: libaot-Uno.UI.Lottie
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-Uno.UI.Lottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 226
	%struct.DSOCacheEntry {
		i64 3933965368022646939, ; hash 0x369840a8bfadc09b, from name: System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 227
	%struct.DSOCacheEntry {
		i64 3942481679277342805, ; hash 0x36b68232facfc055, from name: Microsoft.Extensions.Configuration.CommandLine.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		ptr null; void* handle (0x0)
	}, ; 228
	%struct.DSOCacheEntry {
		i64 3943677120668259164, ; hash 0x36bac1725e44535c, from name: aot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 229
	%struct.DSOCacheEntry {
		i64 3966267475168208030, ; hash 0x370b03412596249e, from name: System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 230
	%struct.DSOCacheEntry {
		i64 4009997192427317104, ; hash 0x37a65f335cf1a770, from name: System.Runtime.Serialization.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 231
	%struct.DSOCacheEntry {
		i64 4012648252110269913, ; hash 0x37afca534b9fedd9, from name: aot-Microsoft.Extensions.Hosting
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 232
	%struct.DSOCacheEntry {
		i64 4017192615964119979, ; hash 0x37bfef6674dd13ab, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 233
	%struct.DSOCacheEntry {
		i64 4082358154728349959, ; hash 0x38a7731cca80a107, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 234
	%struct.DSOCacheEntry {
		i64 4115927144641244248, ; hash 0x391eb5ee51baac58, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 235
	%struct.DSOCacheEntry {
		i64 4154383907710350974, ; hash 0x39a7562737acb67e, from name: System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 236
	%struct.DSOCacheEntry {
		i64 4187479170553454871, ; hash 0x3a1cea1e912fa117, from name: System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 237
	%struct.DSOCacheEntry {
		i64 4205801962323029395, ; hash 0x3a5e0299f7e7ad93, from name: System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 238
	%struct.DSOCacheEntry {
		i64 4212193894419113710, ; hash 0x3a74b807a1eba6ee, from name: aot-Uno.Extensions.Core.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Uno.Extensions.Core.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 239
	%struct.DSOCacheEntry {
		i64 4240134269926784299, ; hash 0x3ad7fba73ef23d2b, from name: Microsoft.Extensions.Hosting.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 240
	%struct.DSOCacheEntry {
		i64 4258673739794913605, ; hash 0x3b19d933f2c29945, from name: SkiaSharp.Views.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-SkiaSharp.Views.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 241
	%struct.DSOCacheEntry {
		i64 4281464260544890017, ; hash 0x3b6ad10f904f04a1, from name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		ptr null; void* handle (0x0)
	}, ; 242
	%struct.DSOCacheEntry {
		i64 4306570051255753644, ; hash 0x3bc402a4f96f5bac, from name: aot-Uno.Core.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Uno.Core.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 243
	%struct.DSOCacheEntry {
		i64 4371478891489709212, ; hash 0x3caa9ce4065ccc9c, from name: libaot-System.Linq.Async
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Linq.Async.dll.so
		ptr null; void* handle (0x0)
	}, ; 244
	%struct.DSOCacheEntry {
		i64 4411920538413871651, ; hash 0x3d3a4a5ab568b223, from name: aot-netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 245
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 246
	%struct.DSOCacheEntry {
		i64 4485509010103122468, ; hash 0x3e3fbaadf002ba24, from name: aot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 247
	%struct.DSOCacheEntry {
		i64 4499861405535535388, ; hash 0x3e72b81b676f811c, from name: Uno.Fonts.Roboto.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Uno.Fonts.Roboto.dll.so
		ptr null; void* handle (0x0)
	}, ; 248
	%struct.DSOCacheEntry {
		i64 4509155949335082141, ; hash 0x3e93bd7204f4f49d, from name: libaot-Uno.Extensions.Serialization.Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Uno.Extensions.Serialization.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 249
	%struct.DSOCacheEntry {
		i64 4519937209358600751, ; hash 0x3eba0af1bae3ca2f, from name: aot-Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 250
	%struct.DSOCacheEntry {
		i64 4521825059161070402, ; hash 0x3ec0bfef03c15b42, from name: libaot-Uno.Fonts.OpenSans
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Uno.Fonts.OpenSans.dll.so
		ptr null; void* handle (0x0)
	}, ; 251
	%struct.DSOCacheEntry {
		i64 4533637005954432954, ; hash 0x3eeab6d6307abfba, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 252
	%struct.DSOCacheEntry {
		i64 4559230397977062140, ; hash 0x3f45a3e42095eafc, from name: aot-Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 253
	%struct.DSOCacheEntry {
		i64 4562889186705488620, ; hash 0x3f52a38a430d3aec, from name: libaot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 254
	%struct.DSOCacheEntry {
		i64 4581220611447237245, ; hash 0x3f93c3dfaf02aa7d, from name: libaot-Uno.Extensions.Http.Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Uno.Extensions.Http.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 255
	%struct.DSOCacheEntry {
		i64 4583973331648265920, ; hash 0x3f9d8b754cc23ec0, from name: Uno.Extensions.Hosting.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Uno.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 256
	%struct.DSOCacheEntry {
		i64 4596456345139358629, ; hash 0x3fc9e4b15d9f2ba5, from name: Uno.Toolkit.WinUI.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Uno.Toolkit.WinUI.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 257
	%struct.DSOCacheEntry {
		i64 4617707205382641077, ; hash 0x4015643cd59815b5, from name: aot-Uno.Extensions.Hosting.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Uno.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 258
	%struct.DSOCacheEntry {
		i64 4619841365973187374, ; hash 0x401cf93ed17cbb2e, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 259
	%struct.DSOCacheEntry {
		i64 4624036676708874426, ; hash 0x402be0dbb79c38ba, from name: aot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 260
	%struct.DSOCacheEntry {
		i64 4636896335231188851, ; hash 0x405990a649c3ff73, from name: libaot-Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 261
	%struct.DSOCacheEntry {
		i64 4649840642642325182, ; hash 0x40878d6db6deaebe, from name: aot-System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 262
	%struct.DSOCacheEntry {
		i64 4672453897036726049, ; hash 0x40d7e4104a437f21, from name: System.IO.FileSystem.Watcher
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 263
	%struct.DSOCacheEntry {
		i64 4672522959425211993, ; hash 0x40d822e021658e59, from name: libaot-Uno.Diagnostics.Eventing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Uno.Diagnostics.Eventing.dll.so
		ptr null; void* handle (0x0)
	}, ; 264
	%struct.DSOCacheEntry {
		i64 4676011426420077172, ; hash 0x40e4879e256fb274, from name: System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 265
	%struct.DSOCacheEntry {
		i64 4686023497551074088, ; hash 0x4108198b1caa5328, from name: Uno.Toolkit.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Uno.Toolkit.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 266
	%struct.DSOCacheEntry {
		i64 4696086077888492960, ; hash 0x412bd9682b3375a0, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 267
	%struct.DSOCacheEntry {
		i64 4746969202323851133, ; hash 0x41e09f56c83b877d, from name: libaot-Uno.Toolkit.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Uno.Toolkit.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 268
	%struct.DSOCacheEntry {
		i64 4754620528327149104, ; hash 0x41fbce2df0b84630, from name: Microsoft.Extensions.Logging.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.Extensions.Logging.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 269
	%struct.DSOCacheEntry {
		i64 4778132833905139113, ; hash 0x424f567f2e8bdda9, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 270
	%struct.DSOCacheEntry {
		i64 4794310189461587505, ; hash 0x4288cfb749e4c631, from name: Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 271
	%struct.DSOCacheEntry {
		i64 4809057822547766521, ; hash 0x42bd349c3145ecf9, from name: System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 272
	%struct.DSOCacheEntry {
		i64 4821796847100292949, ; hash 0x42ea76af7a82ef55, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 273
	%struct.DSOCacheEntry {
		i64 4870688225401794509, ; hash 0x439829228ec06fcd, from name: libaot-Microsoft.Extensions.Configuration.CommandLine
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		ptr null; void* handle (0x0)
	}, ; 274
	%struct.DSOCacheEntry {
		i64 4904118099769380138, ; hash 0x440eed6db9514d2a, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 275
	%struct.DSOCacheEntry {
		i64 4905845688753735370, ; hash 0x441510a9610c46ca, from name: libaot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 276
	%struct.DSOCacheEntry {
		i64 4916798487971342855, ; hash 0x443bfa2cabb5aa07, from name: libaot-Uno.Extensions.Serialization.Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Uno.Extensions.Serialization.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 277
	%struct.DSOCacheEntry {
		i64 4931815757766637469, ; hash 0x4471544d435ab79d, from name: System.IO.FileSystem.Watcher.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 278
	%struct.DSOCacheEntry {
		i64 4942169814716192606, ; hash 0x44961d4301d1175e, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 279
	%struct.DSOCacheEntry {
		i64 4972709925204348719, ; hash 0x45029d5496dd4f2f, from name: aot-Uno.UI.Lottie
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-Uno.UI.Lottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 280
	%struct.DSOCacheEntry {
		i64 5037243529466023660, ; hash 0x45e7e24d34f50eec, from name: Uno.Core.Extensions.Equality
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Uno.Core.Extensions.Equality.dll.so
		ptr null; void* handle (0x0)
	}, ; 281
	%struct.DSOCacheEntry {
		i64 5074164375705998164, ; hash 0x466b0d9d99e5d354, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 282
	%struct.DSOCacheEntry {
		i64 5092863674775640475, ; hash 0x46ad7c87707e199b, from name: CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 283
	%struct.DSOCacheEntry {
		i64 5099468265966638712, ; hash 0x46c4f35ea8519678, from name: System.Resources.ResourceManager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 284
	%struct.DSOCacheEntry {
		i64 5103417709280584325, ; hash 0x46d2fb5e161b6285, from name: System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 285
	%struct.DSOCacheEntry {
		i64 5109692736403029004, ; hash 0x46e94678b0b23c0c, from name: libaot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 286
	%struct.DSOCacheEntry {
		i64 5118965922991257571, ; hash 0x470a3862b13937e3, from name: aot-Uno.UI.Dispatching
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-Uno.UI.Dispatching.dll.so
		ptr null; void* handle (0x0)
	}, ; 287
	%struct.DSOCacheEntry {
		i64 5191653347048411961, ; hash 0x480c75366bc9d339, from name: libaot-Uno.Core.Extensions.Logging.Singleton
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Uno.Core.Extensions.Logging.Singleton.dll.so
		ptr null; void* handle (0x0)
	}, ; 288
	%struct.DSOCacheEntry {
		i64 5232730255288553603, ; hash 0x489e647167e9d083, from name: aot-System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 289
	%struct.DSOCacheEntry {
		i64 5245831624004909525, ; hash 0x48ccf0118452b9d5, from name: libaot-System.Runtime.Serialization.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 290
	%struct.DSOCacheEntry {
		i64 5255546469364035812, ; hash 0x48ef73ab370070e4, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 291
	%struct.DSOCacheEntry {
		i64 5255886558490543920, ; hash 0x48f0a8fa62944730, from name: libaot-Uno.Extensions.Localization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Uno.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 292
	%struct.DSOCacheEntry {
		i64 5267519814036117019, ; hash 0x4919fd5cc2f4561b, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 293
	%struct.DSOCacheEntry {
		i64 5281829587395544379, ; hash 0x494cd40680dc053b, from name: libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 294
	%struct.DSOCacheEntry {
		i64 5290786973231294105, ; hash 0x496ca6b869b72699, from name: System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 295
	%struct.DSOCacheEntry {
		i64 5321274733690245161, ; hash 0x49d8f72d4dde5029, from name: Microsoft.Extensions.FileProviders.Physical.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		ptr null; void* handle (0x0)
	}, ; 296
	%struct.DSOCacheEntry {
		i64 5334205502128732672, ; hash 0x4a06e7a471513a00, from name: aot-System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 297
	%struct.DSOCacheEntry {
		i64 5358812605182676071, ; hash 0x4a5e53ac15cc8c67, from name: Uno.Core.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Uno.Core.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 298
	%struct.DSOCacheEntry {
		i64 5438005991099355802, ; hash 0x4b77ada319ec529a, from name: aot-System.Web.HttpUtility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 299
	%struct.DSOCacheEntry {
		i64 5440481460344582099, ; hash 0x4b80791032efefd3, from name: libaot-System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 300
	%struct.DSOCacheEntry {
		i64 5446034149219586269, ; hash 0x4b94333452e150dd, from name: System.Diagnostics.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 301
	%struct.DSOCacheEntry {
		i64 5479418050698653789, ; hash 0x4c0acdaf97c1b05d, from name: libaot-System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 302
	%struct.DSOCacheEntry {
		i64 5570799893513421663, ; hash 0x4d4f74fcdfa6c35f, from name: System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 303
	%struct.DSOCacheEntry {
		i64 5618551671673884093, ; hash 0x4df91afa1e4c8dbd, from name: libaot-Microsoft.Extensions.Hosting.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 304
	%struct.DSOCacheEntry {
		i64 5652005528388388144, ; hash 0x4e6ff5151c224530, from name: aot-Uno.Foundation.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Uno.Foundation.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 305
	%struct.DSOCacheEntry {
		i64 5716317458873301054, ; hash 0x4f5470714781b83e, from name: aot-Uno.Fonts.Roboto
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Uno.Fonts.Roboto.dll.so
		ptr null; void* handle (0x0)
	}, ; 306
	%struct.DSOCacheEntry {
		i64 5717981446795393555, ; hash 0x4f5a59d4a8837a13, from name: aot-Uno.Fonts.Fluent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Uno.Fonts.Fluent.dll.so
		ptr null; void* handle (0x0)
	}, ; 307
	%struct.DSOCacheEntry {
		i64 5741975342799950240, ; hash 0x4faf9826e8a491a0, from name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 308
	%struct.DSOCacheEntry {
		i64 5753633696766002394, ; hash 0x4fd9035cf77484da, from name: libaot-System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 309
	%struct.DSOCacheEntry {
		i64 5759268217942071081, ; hash 0x4fed07ee28a25729, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 310
	%struct.DSOCacheEntry {
		i64 5900900230463535802, ; hash 0x51e4357ecbccbaba, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 311
	%struct.DSOCacheEntry {
		i64 5915169435820404487, ; hash 0x5216e7431052af07, from name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 312
	%struct.DSOCacheEntry {
		i64 5933665350057375248, ; hash 0x52589d32ae36b610, from name: libaot-Uno.Core.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Uno.Core.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 313
	%struct.DSOCacheEntry {
		i64 5939508376872698512, ; hash 0x526d5f665ff44290, from name: aot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 314
	%struct.DSOCacheEntry {
		i64 5948985717485083712, ; hash 0x528f0afdb0921c40, from name: libSystem.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 315
	%struct.DSOCacheEntry {
		i64 5958220530006169673, ; hash 0x52afda0108751849, from name: System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 316
	%struct.DSOCacheEntry {
		i64 5962886101144695184, ; hash 0x52c06d50f6d7f190, from name: libaot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 317
	%struct.DSOCacheEntry {
		i64 6019580974212452262, ; hash 0x5389d900c0a20fa6, from name: libaot-System.Diagnostics.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 318
	%struct.DSOCacheEntry {
		i64 6025768990844659262, ; hash 0x539fd4f8a5dc263e, from name: Uno.Core.Extensions.Disposables.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Uno.Core.Extensions.Disposables.dll.so
		ptr null; void* handle (0x0)
	}, ; 319
	%struct.DSOCacheEntry {
		i64 6027563593999215487, ; hash 0x53a6352741666b7f, from name: libaot-System.Reflection.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 320
	%struct.DSOCacheEntry {
		i64 6069444521208265984, ; hash 0x543affa27e8f3d00, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 321
	%struct.DSOCacheEntry {
		i64 6076224371281935956, ; hash 0x545315df59d4be54, from name: System.Xml.XDocument.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 322
	%struct.DSOCacheEntry {
		i64 6175278734029192665, ; hash 0x55b2ff4a62d57dd9, from name: Microsoft.Extensions.Configuration.CommandLine
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		ptr null; void* handle (0x0)
	}, ; 323
	%struct.DSOCacheEntry {
		i64 6198196371300036003, ; hash 0x56046ac29f742da3, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 324
	%struct.DSOCacheEntry {
		i64 6225172649132160145, ; hash 0x5664418ac0fff491, from name: libaot-Uno.Extensions.Storage
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Uno.Extensions.Storage.dll.so
		ptr null; void* handle (0x0)
	}, ; 325
	%struct.DSOCacheEntry {
		i64 6251033168959842974, ; hash 0x56c0218c3b092a9e, from name: libaot-System.Web.HttpUtility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 326
	%struct.DSOCacheEntry {
		i64 6259870467288533951, ; hash 0x56df870616b10bbf, from name: Uno.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Uno.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 327
	%struct.DSOCacheEntry {
		i64 6268464631992009879, ; hash 0x56fe0f5efcfbc497, from name: SkiaSharp.Skottie
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-SkiaSharp.Skottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 328
	%struct.DSOCacheEntry {
		i64 6276880809556572268, ; hash 0x571bf5d70715f86c, from name: aot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 329
	%struct.DSOCacheEntry {
		i64 6284145129771520194, ; hash 0x5735c4b3610850c2, from name: System.Reflection.Emit.ILGeneration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 330
	%struct.DSOCacheEntry {
		i64 6308061292769401015, ; hash 0x578abc5300e958b7, from name: libSystem.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 331
	%struct.DSOCacheEntry {
		i64 6309031637591895059, ; hash 0x578e2ed9035dac13, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 332
	%struct.DSOCacheEntry {
		i64 6322033575888028207, ; hash 0x57bc600aace6022f, from name: libaot-SkiaSharp.Views.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-SkiaSharp.Views.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 333
	%struct.DSOCacheEntry {
		i64 6352489697598145066, ; hash 0x582893b918aa822a, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 334
	%struct.DSOCacheEntry {
		i64 6357457916754632952, ; hash 0x583a3a4ac2a7a0f8, from name: _Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 335
	%struct.DSOCacheEntry {
		i64 6368328068195438891, ; hash 0x5860d8a31df0512b, from name: Refit.HttpClientFactory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Refit.HttpClientFactory.dll.so
		ptr null; void* handle (0x0)
	}, ; 336
	%struct.DSOCacheEntry {
		i64 6371436695517066343, ; hash 0x586be3ead12ef467, from name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 337
	%struct.DSOCacheEntry {
		i64 6401687960814735282, ; hash 0x58d75d486341cfb2, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 338
	%struct.DSOCacheEntry {
		i64 6404578999226158050, ; hash 0x58e1a2aab8cd4be2, from name: libaot-System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 339
	%struct.DSOCacheEntry {
		i64 6433331304437599473, ; hash 0x5947c8bc73674cf1, from name: Uno.UI.BindingHelper.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Uno.UI.BindingHelper.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 340
	%struct.DSOCacheEntry {
		i64 6466226557246514285, ; hash 0x59bca6cb55e0246d, from name: aot-UniversalImageLoader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-UniversalImageLoader.dll.so
		ptr null; void* handle (0x0)
	}, ; 341
	%struct.DSOCacheEntry {
		i64 6476763763900536822, ; hash 0x59e21653f169d7f6, from name: aot-Uno.Extensions.Hosting.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Uno.Extensions.Hosting.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 342
	%struct.DSOCacheEntry {
		i64 6488258789742214262, ; hash 0x5a0aecfe3563fc76, from name: aot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 343
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 344
	%struct.DSOCacheEntry {
		i64 6522241766062552580, ; hash 0x5a83a854755ff604, from name: Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 345
	%struct.DSOCacheEntry {
		i64 6524067504148539823, ; hash 0x5a8a24d43b7169af, from name: libaot-Uno.Extensions.Reactive.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Uno.Extensions.Reactive.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 346
	%struct.DSOCacheEntry {
		i64 6558713382764477133, ; hash 0x5b053b127346facd, from name: mono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 347
	%struct.DSOCacheEntry {
		i64 6560151584539558821, ; hash 0x5b0a571be53243a5, from name: Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 348
	%struct.DSOCacheEntry {
		i64 6560588458386133218, ; hash 0x5b0be47183a210e2, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 349
	%struct.DSOCacheEntry {
		i64 6579257534474852689, ; hash 0x5b4e37de842f9951, from name: Uno
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-Uno.dll.so
		ptr null; void* handle (0x0)
	}, ; 350
	%struct.DSOCacheEntry {
		i64 6594663189110128169, ; hash 0x5b84f33b0040fe29, from name: System.Runtime.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 351
	%struct.DSOCacheEntry {
		i64 6671798237668743565, ; hash 0x5c96fd260152998d, from name: SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 352
	%struct.DSOCacheEntry {
		i64 6671798237668743565, ; hash 0x5c96fd260152998d, from name: SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 353
	%struct.DSOCacheEntry {
		i64 6700811815215665556, ; hash 0x5cfe10d7f0ab9194, from name: aot-System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 354
	%struct.DSOCacheEntry {
		i64 6704907064679518435, ; hash 0x5d0c9d73823ad0e3, from name: aot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 355
	%struct.DSOCacheEntry {
		i64 6762140275085669653, ; hash 0x5dd7f2c0b9d7f515, from name: libaot-Uno.Extensions.Localization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Uno.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 356
	%struct.DSOCacheEntry {
		i64 6772837112740759457, ; hash 0x5dfdf378527ec7a1, from name: System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 357
	%struct.DSOCacheEntry {
		i64 6777401631564014917, ; hash 0x5e0e2ae02d86a545, from name: aot-Uno.UI.Dispatching.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-Uno.UI.Dispatching.dll.so
		ptr null; void* handle (0x0)
	}, ; 358
	%struct.DSOCacheEntry {
		i64 6786606130239981554, ; hash 0x5e2ede51877147f2, from name: System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 359
	%struct.DSOCacheEntry {
		i64 6811092106988893788, ; hash 0x5e85dc2f418a365c, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 360
	%struct.DSOCacheEntry {
		i64 6817628571150090235, ; hash 0x5e9d151069f47ffb, from name: aot-Microsoft.Extensions.FileProviders.Physical
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		ptr null; void* handle (0x0)
	}, ; 361
	%struct.DSOCacheEntry {
		i64 6818627770818877899, ; hash 0x5ea0a1d4b745d9cb, from name: libaot-Uno.Extensions.Reactive.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Uno.Extensions.Reactive.dll.so
		ptr null; void* handle (0x0)
	}, ; 362
	%struct.DSOCacheEntry {
		i64 6836385375498469829, ; hash 0x5edfb8473e4301c5, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 363
	%struct.DSOCacheEntry {
		i64 6858837672031028028, ; hash 0x5f2f7c85e57a033c, from name: Uno.Core.Extensions.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Uno.Core.Extensions.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 364
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 365
	%struct.DSOCacheEntry {
		i64 6894844156784520562, ; hash 0x5faf683aead1ad72, from name: System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 366
	%struct.DSOCacheEntry {
		i64 6913716284728566067, ; hash 0x5ff274549d146133, from name: System.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 367
	%struct.DSOCacheEntry {
		i64 6967444786227818992, ; hash 0x60b1561e3341b1f0, from name: aot-Microsoft.Extensions.Diagnostics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Diagnostics.dll.so
		ptr null; void* handle (0x0)
	}, ; 368
	%struct.DSOCacheEntry {
		i64 7005231924406374519, ; hash 0x61379551e777d077, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 369
	%struct.DSOCacheEntry {
		i64 7005623937201008400, ; hash 0x6138f9da7ed6ef10, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 370
	%struct.DSOCacheEntry {
		i64 7026076528261849631, ; hash 0x6181a3606fc1e21f, from name: libaot-Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 371
	%struct.DSOCacheEntry {
		i64 7032820184502538532, ; hash 0x619998b242789124, from name: libaot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 372
	%struct.DSOCacheEntry {
		i64 7078790046120101683, ; hash 0x623cea0aba8f4733, from name: libaot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 373
	%struct.DSOCacheEntry {
		i64 7115462216925655511, ; hash 0x62bf332fdc9131d7, from name: aot-Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 374
	%struct.DSOCacheEntry {
		i64 7129195429767112675, ; hash 0x62effd78a59b67e3, from name: Uno.Extensions.Navigation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Uno.Extensions.Navigation.dll.so
		ptr null; void* handle (0x0)
	}, ; 375
	%struct.DSOCacheEntry {
		i64 7252784626773793767, ; hash 0x64a71130ef441be7, from name: System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 376
	%struct.DSOCacheEntry {
		i64 7254050341552555985, ; hash 0x64ab905a1f0a87d1, from name: aot-Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 377
	%struct.DSOCacheEntry {
		i64 7259603768097681859, ; hash 0x64bf4b29ff8cb1c3, from name: libaot-SkiaSharp.Skottie.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-SkiaSharp.Skottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 378
	%struct.DSOCacheEntry {
		i64 7265877048277052606, ; hash 0x64d594addc37acbe, from name: Uno.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-Uno.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 379
	%struct.DSOCacheEntry {
		i64 7270811800166795866, ; hash 0x64e71ccf51a90a5a, from name: System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 380
	%struct.DSOCacheEntry {
		i64 7286834274487352090, ; hash 0x6520092a53f5bb1a, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 381
	%struct.DSOCacheEntry {
		i64 7318825739514999883, ; hash 0x6591b13bb8c6f44b, from name: aot-Uno.UI.BindingHelper.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Uno.UI.BindingHelper.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 382
	%struct.DSOCacheEntry {
		i64 7320524500087176829, ; hash 0x6597ba3f3d3d7e7d, from name: libaot-Uno.Extensions.Logging.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Uno.Extensions.Logging.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 383
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 384
	%struct.DSOCacheEntry {
		i64 7345228814857056313, ; hash 0x65ef7eb0bf84b039, from name: aot-Uno.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-Uno.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 385
	%struct.DSOCacheEntry {
		i64 7352604061824605300, ; hash 0x6609b2703f265c74, from name: Microsoft.Extensions.FileProviders.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 386
	%struct.DSOCacheEntry {
		i64 7357705307462257638, ; hash 0x661bd1fe8d4b4be6, from name: aot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 387
	%struct.DSOCacheEntry {
		i64 7360049220918255826, ; hash 0x662425c56e3920d2, from name: System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 388
	%struct.DSOCacheEntry {
		i64 7410209401095475185, ; hash 0x66d65a30778e4ff1, from name: Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 389
	%struct.DSOCacheEntry {
		i64 7415347135721941512, ; hash 0x66e89aee86eaaa08, from name: libmono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 390
	%struct.DSOCacheEntry {
		i64 7423424807541224603, ; hash 0x67054d880e51349b, from name: Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 391
	%struct.DSOCacheEntry {
		i64 7461600795583809749, ; hash 0x678cee63ec8b88d5, from name: aot-Uno.Extensions.Logging.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Uno.Extensions.Logging.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 392
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 393
	%struct.DSOCacheEntry {
		i64 7489048572193775167, ; hash 0x67ee71ff6b419e3f, from name: System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 394
	%struct.DSOCacheEntry {
		i64 7490939005235572321, ; hash 0x67f52956292f2e61, from name: libaot-Uno.Extensions.Hosting
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Uno.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 395
	%struct.DSOCacheEntry {
		i64 7505202665499763299, ; hash 0x6827d60f5c6da263, from name: Uno.UI.Composition
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-Uno.UI.Composition.dll.so
		ptr null; void* handle (0x0)
	}, ; 396
	%struct.DSOCacheEntry {
		i64 7515511324144895830, ; hash 0x684c75bafd150756, from name: System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 397
	%struct.DSOCacheEntry {
		i64 7521005961322086945, ; hash 0x685ffb12e632c221, from name: libaot-Uno.Extensions.Serialization.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Uno.Extensions.Serialization.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 398
	%struct.DSOCacheEntry {
		i64 7526449739538959507, ; hash 0x68735229490d0c93, from name: aot-Uno.UI.Lottie.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-Uno.UI.Lottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 399
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 400
	%struct.DSOCacheEntry {
		i64 7540556024932143097, ; hash 0x68a56fc0cb030ff9, from name: aot-System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 401
	%struct.DSOCacheEntry {
		i64 7603066416815619597, ; hash 0x6983849f91ff3e0d, from name: libaot-Uno.Extensions.Core.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Uno.Extensions.Core.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 402
	%struct.DSOCacheEntry {
		i64 7603299711682212348, ; hash 0x698458cdc3a5f1fc, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 403
	%struct.DSOCacheEntry {
		i64 7639941140308737920, ; hash 0x6a0685fd2cfebf80, from name: libSystem.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 404
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 405
	%struct.DSOCacheEntry {
		i64 7673446916582303699, ; hash 0x6a7d8f50a1b467d3, from name: aot-System.Xml.XDocument.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 406
	%struct.DSOCacheEntry {
		i64 7675303261932883976, ; hash 0x6a8427a6b6e81008, from name: aot-System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 407
	%struct.DSOCacheEntry {
		i64 7695876457946633523, ; hash 0x6acd3edd2f335533, from name: aot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 408
	%struct.DSOCacheEntry {
		i64 7702418026123603900, ; hash 0x6ae47c62b6a9afbc, from name: aot-Uno.Extensions.Http.Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Uno.Extensions.Http.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 409
	%struct.DSOCacheEntry {
		i64 7714652370974252055, ; hash 0x6b0ff375198b9c17, from name: System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 410
	%struct.DSOCacheEntry {
		i64 7731301833650051196, ; hash 0x6b4b1a0e3609987c, from name: aot-Microsoft.Extensions.Configuration.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Configuration.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 411
	%struct.DSOCacheEntry {
		i64 7735176074855944702, ; hash 0x6b58dda848e391fe, from name: Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 412
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 413
	%struct.DSOCacheEntry {
		i64 7770273181952392915, ; hash 0x6bd58e4a52043ed3, from name: aot-System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 414
	%struct.DSOCacheEntry {
		i64 7793564601315272872, ; hash 0x6c284db67b74a8a8, from name: aot-Microsoft.Extensions.Configuration.Binder.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Binder.dll.so
		ptr null; void* handle (0x0)
	}, ; 415
	%struct.DSOCacheEntry {
		i64 7826374484462679478, ; hash 0x6c9cde20b19435b6, from name: libaot-Refit.HttpClientFactory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Refit.HttpClientFactory.dll.so
		ptr null; void* handle (0x0)
	}, ; 416
	%struct.DSOCacheEntry {
		i64 7838363236102628013, ; hash 0x6cc775d57460e2ad, from name: aot-Uno.Extensions.Navigation.Toolkit.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 417
	%struct.DSOCacheEntry {
		i64 7852881722911265258, ; hash 0x6cfb0a52154891ea, from name: libaot-Microsoft.Extensions.Configuration.Binder
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Binder.dll.so
		ptr null; void* handle (0x0)
	}, ; 418
	%struct.DSOCacheEntry {
		i64 7855888427540559711, ; hash 0x6d05b8e70ea8375f, from name: System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 419
	%struct.DSOCacheEntry {
		i64 7858357618878921925, ; hash 0x6d0e7e9e77433cc5, from name: aot-Uno.Fonts.Fluent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Uno.Fonts.Fluent.dll.so
		ptr null; void* handle (0x0)
	}, ; 420
	%struct.DSOCacheEntry {
		i64 7897713672933564717, ; hash 0x6d9a50bddcf3612d, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 421
	%struct.DSOCacheEntry {
		i64 7905394480315717233, ; hash 0x6db59a65308d5671, from name: libaot-Uno.UI.Dispatching
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-Uno.UI.Dispatching.dll.so
		ptr null; void* handle (0x0)
	}, ; 422
	%struct.DSOCacheEntry {
		i64 7919757340696389605, ; hash 0x6de8a157378027e5, from name: Microsoft.Extensions.Diagnostics.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 423
	%struct.DSOCacheEntry {
		i64 7948127817007369596, ; hash 0x6e4d6c237a200d7c, from name: aot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 424
	%struct.DSOCacheEntry {
		i64 7969868205614615900, ; hash 0x6e9aa8e82656cd5c, from name: Microsoft.Extensions.Logging.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.Extensions.Logging.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 425
	%struct.DSOCacheEntry {
		i64 7974095695751206426, ; hash 0x6ea9adc96638d61a, from name: libaot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 426
	%struct.DSOCacheEntry {
		i64 8011592480430370928, ; hash 0x6f2ee4e9e93e3070, from name: libaot-Uno.Extensions.Http.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Uno.Extensions.Http.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 427
	%struct.DSOCacheEntry {
		i64 8022823089041973036, ; hash 0x6f56cb17be261f2c, from name: libaot-Uno.Extensions.Reactive.Messaging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Uno.Extensions.Reactive.Messaging.dll.so
		ptr null; void* handle (0x0)
	}, ; 428
	%struct.DSOCacheEntry {
		i64 8040313509880173315, ; hash 0x6f94ee89af2e9303, from name: libaot-Uno.Foundation.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Uno.Foundation.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 429
	%struct.DSOCacheEntry {
		i64 8055805234606573381, ; hash 0x6fcbf82dec750745, from name: aot-Microsoft.Extensions.FileProviders.Physical.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		ptr null; void* handle (0x0)
	}, ; 430
	%struct.DSOCacheEntry {
		i64 8065417565229572634, ; hash 0x6fee1e8b0cb4621a, from name: aot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 431
	%struct.DSOCacheEntry {
		i64 8069027220385562465, ; hash 0x6ffaf1816209ff61, from name: aot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 432
	%struct.DSOCacheEntry {
		i64 8087206902342787202, ; hash 0x703b87d46f3aa082, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 433
	%struct.DSOCacheEntry {
		i64 8092331298404567383, ; hash 0x704dbc70de2e0957, from name: aot-_Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 434
	%struct.DSOCacheEntry {
		i64 8109574044420975149, ; hash 0x708afea08570aa2d, from name: Uno.Foundation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Uno.Foundation.dll.so
		ptr null; void* handle (0x0)
	}, ; 435
	%struct.DSOCacheEntry {
		i64 8129154283138605531, ; hash 0x70d08ec01ad261db, from name: mono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 436
	%struct.DSOCacheEntry {
		i64 8145538378058704681, ; hash 0x710ac3ff78802729, from name: aot-Uno.UI.Toolkit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-Uno.UI.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 437
	%struct.DSOCacheEntry {
		i64 8150551902651424003, ; hash 0x711c93c5a0ec1d03, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 438
	%struct.DSOCacheEntry {
		i64 8161941391545951145, ; hash 0x71450a73a8a763a9, from name: Uno.Core.Extensions.Logging.Singleton
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Uno.Core.Extensions.Logging.Singleton.dll.so
		ptr null; void* handle (0x0)
	}, ; 439
	%struct.DSOCacheEntry {
		i64 8166342558427492485, ; hash 0x7154ad4a2d39b085, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 440
	%struct.DSOCacheEntry {
		i64 8185542183669246576, ; hash 0x7198e33f4794aa70, from name: System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 441
	%struct.DSOCacheEntry {
		i64 8189823481260868218, ; hash 0x71a819108db5027a, from name: libaot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 442
	%struct.DSOCacheEntry {
		i64 8248051171157338920, ; hash 0x7276f6d71213eb28, from name: aot-System.Linq.Async.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Linq.Async.dll.so
		ptr null; void* handle (0x0)
	}, ; 443
	%struct.DSOCacheEntry {
		i64 8290740647658429042, ; hash 0x730ea0b15c929a72, from name: System.Runtime.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 444
	%struct.DSOCacheEntry {
		i64 8293702073711834350, ; hash 0x731926181883b4ee, from name: System.Linq.Async
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Linq.Async.dll.so
		ptr null; void* handle (0x0)
	}, ; 445
	%struct.DSOCacheEntry {
		i64 8298665547085841745, ; hash 0x732ac858cbd30551, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 446
	%struct.DSOCacheEntry {
		i64 8313797594473349417, ; hash 0x73608add2114c129, from name: aot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 447
	%struct.DSOCacheEntry {
		i64 8335746768722831773, ; hash 0x73ae85857f55a99d, from name: aot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 448
	%struct.DSOCacheEntry {
		i64 8336567361463961013, ; hash 0x73b16fd8a22cc5b5, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 449
	%struct.DSOCacheEntry {
		i64 8362087432769215690, ; hash 0x740c1a3742f79cca, from name: System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 450
	%struct.DSOCacheEntry {
		i64 8368701292315763008, ; hash 0x7423997c6fd56140, from name: System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 451
	%struct.DSOCacheEntry {
		i64 8375722837974120975, ; hash 0x743c8b8b6e92fa0f, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 452
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 453
	%struct.DSOCacheEntry {
		i64 8395747753193675067, ; hash 0x7483b01954e4993b, from name: Uno.Extensions.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Uno.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 454
	%struct.DSOCacheEntry {
		i64 8434539578264030384, ; hash 0x750d810eee668cb0, from name: Uno.Extensions.Reactive.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Uno.Extensions.Reactive.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 455
	%struct.DSOCacheEntry {
		i64 8466993038139643024, ; hash 0x7580cd4ee204d490, from name: System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 456
	%struct.DSOCacheEntry {
		i64 8478719509125675648, ; hash 0x75aa7678ab9c3a80, from name: aot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 457
	%struct.DSOCacheEntry {
		i64 8483468362836955321, ; hash 0x75bb5587562950b9, from name: Uno.UI.Toolkit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-Uno.UI.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 458
	%struct.DSOCacheEntry {
		i64 8501952951431151841, ; hash 0x75fd0129ff2340e1, from name: libaot-Uno.Material.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Uno.Material.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 459
	%struct.DSOCacheEntry {
		i64 8518412311883997971, ; hash 0x76377add7c28e313, from name: System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 460
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 461
	%struct.DSOCacheEntry {
		i64 8550103612409229541, ; hash 0x76a811ef626fb0e5, from name: Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 462
	%struct.DSOCacheEntry {
		i64 8563666267364444763, ; hash 0x76d841191140ca5b, from name: System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 463
	%struct.DSOCacheEntry {
		i64 8573750271974502421, ; hash 0x76fc147259f2f015, from name: aot-Uno.Foundation.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Uno.Foundation.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 464
	%struct.DSOCacheEntry {
		i64 8603817278601864351, ; hash 0x7766e63adb6ea49f, from name: Uno.Extensions.Storage.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Uno.Extensions.Storage.dll.so
		ptr null; void* handle (0x0)
	}, ; 465
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 466
	%struct.DSOCacheEntry {
		i64 8618994514990787848, ; hash 0x779cd1d89310ed08, from name: aot-Uno.Extensions.Serialization.Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Uno.Extensions.Serialization.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 467
	%struct.DSOCacheEntry {
		i64 8623099412595258045, ; hash 0x77ab673a869eb2bd, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 468
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 469
	%struct.DSOCacheEntry {
		i64 8626645781824515032, ; hash 0x77b800a1f4c5abd8, from name: System.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 470
	%struct.DSOCacheEntry {
		i64 8628664141348535547, ; hash 0x77bf2c51e73afcfb, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 471
	%struct.DSOCacheEntry {
		i64 8645244703776865449, ; hash 0x77fa1440ecf27ca9, from name: libaot-System.Diagnostics.Tools.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 472
	%struct.DSOCacheEntry {
		i64 8658236679209272073, ; hash 0x78283c62ed86c309, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 473
	%struct.DSOCacheEntry {
		i64 8659486139845940425, ; hash 0x782cacc3a6ef94c9, from name: System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 474
	%struct.DSOCacheEntry {
		i64 8678798904678110092, ; hash 0x7871499f1e63538c, from name: SkiaSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 475
	%struct.DSOCacheEntry {
		i64 8714656118670318412, ; hash 0x78f0ad9155075b4c, from name: aot-Uno.Fonts.OpenSans.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Uno.Fonts.OpenSans.dll.so
		ptr null; void* handle (0x0)
	}, ; 476
	%struct.DSOCacheEntry {
		i64 8730145678495508517, ; hash 0x7927b53d8422e825, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 477
	%struct.DSOCacheEntry {
		i64 8747763348793017252, ; hash 0x79664c6b07fd43a4, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 478
	%struct.DSOCacheEntry {
		i64 8760858219412156768, ; hash 0x7994d2222f9f7160, from name: System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 479
	%struct.DSOCacheEntry {
		i64 8761982123773840073, ; hash 0x7998d0518fdccac9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 480
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 481
	%struct.DSOCacheEntry {
		i64 8774486596666825193, ; hash 0x79c53d1208c099e9, from name: libaot-System.Resources.ResourceManager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 482
	%struct.DSOCacheEntry {
		i64 8812786412666749070, ; hash 0x7a4d4e8cd864008e, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 483
	%struct.DSOCacheEntry {
		i64 8816904670177563593, ; hash 0x7a5bf015646a93c9, from name: Microsoft.Extensions.Diagnostics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Diagnostics.dll.so
		ptr null; void* handle (0x0)
	}, ; 484
	%struct.DSOCacheEntry {
		i64 8820689904703318489, ; hash 0x7a6962bbfbb729d9, from name: aot-Uno.Extensions.Reactive.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Uno.Extensions.Reactive.dll.so
		ptr null; void* handle (0x0)
	}, ; 485
	%struct.DSOCacheEntry {
		i64 8824907823227734965, ; hash 0x7a785ee8ab0e0bb5, from name: aot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 486
	%struct.DSOCacheEntry {
		i64 8879040545617680294, ; hash 0x7b38b05543d517a6, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 487
	%struct.DSOCacheEntry {
		i64 8879340544350621822, ; hash 0x7b39c12e29be107e, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 488
	%struct.DSOCacheEntry {
		i64 8908792031059908905, ; hash 0x7ba26326c5281929, from name: aot-Uno.UI.FluentTheme.v2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-Uno.UI.FluentTheme.v2.dll.so
		ptr null; void* handle (0x0)
	}, ; 489
	%struct.DSOCacheEntry {
		i64 8918104616950577861, ; hash 0x7bc378e6231c3ac5, from name: Uno.UI.FluentTheme.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-Uno.UI.FluentTheme.dll.so
		ptr null; void* handle (0x0)
	}, ; 490
	%struct.DSOCacheEntry {
		i64 8941376889969657626, ; hash 0x7c1626e87187471a, from name: System.Xml.XDocument
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 491
	%struct.DSOCacheEntry {
		i64 8949786918460740537, ; hash 0x7c3407c8ca4a53b9, from name: libaot-SkiaSharp.SceneGraph
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-SkiaSharp.SceneGraph.dll.so
		ptr null; void* handle (0x0)
	}, ; 492
	%struct.DSOCacheEntry {
		i64 8959200230209785136, ; hash 0x7c55792439408d30, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 493
	%struct.DSOCacheEntry {
		i64 8967164847000689438, ; hash 0x7c71c4eb13d89b1e, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 494
	%struct.DSOCacheEntry {
		i64 8986832625747589532, ; hash 0x7cb7a4a8a993799c, from name: Uno.UI.Lottie.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-Uno.UI.Lottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 495
	%struct.DSOCacheEntry {
		i64 8997370548061476269, ; hash 0x7cdd14d7e5c415ad, from name: aot-Uno.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-Uno.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 496
	%struct.DSOCacheEntry {
		i64 9032777207089403703, ; hash 0x7d5adf031bcf1737, from name: libaot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 497
	%struct.DSOCacheEntry {
		i64 9048598243993758896, ; hash 0x7d9314295078acb0, from name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 498
	%struct.DSOCacheEntry {
		i64 9049979032622352945, ; hash 0x7d97fbfb38304a31, from name: libaot-System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 499
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 500
	%struct.DSOCacheEntry {
		i64 9071850823194088089, ; hash 0x7de5b0424bd19299, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 501
	%struct.DSOCacheEntry {
		i64 9104800902720461245, ; hash 0x7e5ac02e854f19bd, from name: aot-Microsoft.Extensions.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 502
	%struct.DSOCacheEntry {
		i64 9137369390292547645, ; hash 0x7ece750c71ea383d, from name: aot-System.Reflection.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 503
	%struct.DSOCacheEntry {
		i64 9140500408108877275, ; hash 0x7ed994b156a485db, from name: aot-Uno.Extensions.Storage.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Uno.Extensions.Storage.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 504
	%struct.DSOCacheEntry {
		i64 9154755511689393204, ; hash 0x7f0c39a247cbb434, from name: aot-CommonServiceLocator
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommonServiceLocator.dll.so
		ptr null; void* handle (0x0)
	}, ; 505
	%struct.DSOCacheEntry {
		i64 9203934533617371674, ; hash 0x7fbaf1b19c36ca1a, from name: aot-Microsoft.Extensions.Hosting.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 506
	%struct.DSOCacheEntry {
		i64 9212468770286852480, ; hash 0x7fd943896d53d980, from name: libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 507
	%struct.DSOCacheEntry {
		i64 9219236770475081177, ; hash 0x7ff14eff4462fdd9, from name: aot-Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 508
	%struct.DSOCacheEntry {
		i64 9229950270326412960, ; hash 0x80175ede555396a0, from name: aot-Uno.UI.Composition
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-Uno.UI.Composition.dll.so
		ptr null; void* handle (0x0)
	}, ; 509
	%struct.DSOCacheEntry {
		i64 9266426761682324524, ; hash 0x8098f60b4b3f8c2c, from name: aot-Uno.Core.Extensions.Logging.Singleton
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Uno.Core.Extensions.Logging.Singleton.dll.so
		ptr null; void* handle (0x0)
	}, ; 510
	%struct.DSOCacheEntry {
		i64 9291832402907592505, ; hash 0x80f3385717c57739, from name: aot-Uno.Core.Extensions.Logging.Singleton.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Uno.Core.Extensions.Logging.Singleton.dll.so
		ptr null; void* handle (0x0)
	}, ; 511
	%struct.DSOCacheEntry {
		i64 9299847883656428969, ; hash 0x810fb260a2827da9, from name: Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		ptr null; void* handle (0x0)
	}, ; 512
	%struct.DSOCacheEntry {
		i64 9324707631942237306, ; hash 0x8168042fd44a7c7a, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 513
	%struct.DSOCacheEntry {
		i64 9347740879148000061, ; hash 0x81b9d8cd9a03a33d, from name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 514
	%struct.DSOCacheEntry {
		i64 9367092681395718278, ; hash 0x81fe992a2cc0c886, from name: libaot-System.Xml.XDocument.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 515
	%struct.DSOCacheEntry {
		i64 9367838454437641387, ; hash 0x82013f70fdfffcab, from name: Uno.UI.FluentTheme.v2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-Uno.UI.FluentTheme.v2.dll.so
		ptr null; void* handle (0x0)
	}, ; 516
	%struct.DSOCacheEntry {
		i64 9444544435846700834, ; hash 0x8311c3200408df22, from name: aot-Uno.Extensions.Hosting.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Uno.Extensions.Hosting.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 517
	%struct.DSOCacheEntry {
		i64 9479165618227509866, ; hash 0x838cc2e8318bfa6a, from name: aot-Uno.Extensions.Localization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Uno.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 518
	%struct.DSOCacheEntry {
		i64 9480837820460553798, ; hash 0x8392b3c41da3d646, from name: aot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 519
	%struct.DSOCacheEntry {
		i64 9506520580141107219, ; hash 0x83edf21995404813, from name: Uno.Extensions.Http.Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Uno.Extensions.Http.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 520
	%struct.DSOCacheEntry {
		i64 9523258311667062251, ; hash 0x842968fa633395eb, from name: libaot-System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 521
	%struct.DSOCacheEntry {
		i64 9551046264236990507, ; hash 0x848c21f9452ae02b, from name: aot-SkiaSharp.SceneGraph
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-SkiaSharp.SceneGraph.dll.so
		ptr null; void* handle (0x0)
	}, ; 522
	%struct.DSOCacheEntry {
		i64 9564066322021869238, ; hash 0x84ba63a5b463e6b6, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 523
	%struct.DSOCacheEntry {
		i64 9584802165301184279, ; hash 0x85040ec9712c0717, from name: System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 524
	%struct.DSOCacheEntry {
		i64 9634288537769747425, ; hash 0x85b3de61656223e1, from name: Microsoft.Extensions.Logging.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.Extensions.Logging.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 525
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 526
	%struct.DSOCacheEntry {
		i64 9646535838956341721, ; hash 0x85df613c6a1149d9, from name: aot-Uno.Material.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Uno.Material.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 527
	%struct.DSOCacheEntry {
		i64 9650158550865574924, ; hash 0x85ec4012c28a7c0c, from name: Microsoft.Extensions.Configuration.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Configuration.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 528
	%struct.DSOCacheEntry {
		i64 9659729154652888475, ; hash 0x860e407c9991dd9b, from name: System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 529
	%struct.DSOCacheEntry {
		i64 9681136872728016537, ; hash 0x865a4eb160e3b699, from name: aot-Uno.Extensions.Localization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Uno.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 530
	%struct.DSOCacheEntry {
		i64 9700644217508604131, ; hash 0x869f9c85050c28e3, from name: System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 531
	%struct.DSOCacheEntry {
		i64 9720113355794297314, ; hash 0x86e4c79904a631e2, from name: CommonServiceLocator
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommonServiceLocator.dll.so
		ptr null; void* handle (0x0)
	}, ; 532
	%struct.DSOCacheEntry {
		i64 9722570950406190356, ; hash 0x86ed82c45a7e3514, from name: Uno.Extensions.Hosting.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Uno.Extensions.Hosting.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 533
	%struct.DSOCacheEntry {
		i64 9723757432752603539, ; hash 0x86f1b9ddcd488193, from name: libaot-Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 534
	%struct.DSOCacheEntry {
		i64 9726477907368752353, ; hash 0x86fb641fa86634e1, from name: libaot-Uno.Core.Extensions.Disposables
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Uno.Core.Extensions.Disposables.dll.so
		ptr null; void* handle (0x0)
	}, ; 535
	%struct.DSOCacheEntry {
		i64 9730585375023143521, ; hash 0x8709fbd7fedd9a61, from name: aot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 536
	%struct.DSOCacheEntry {
		i64 9783785228567974479, ; hash 0x87c6fcd42382124f, from name: libaot-System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 537
	%struct.DSOCacheEntry {
		i64 9785861402587091236, ; hash 0x87ce5d191268d124, from name: aot-System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 538
	%struct.DSOCacheEntry {
		i64 9805292690550983636, ; hash 0x881365c05b068bd4, from name: aot-Uno.Toolkit.WinUI.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Uno.Toolkit.WinUI.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 539
	%struct.DSOCacheEntry {
		i64 9808040346124881443, ; hash 0x881d28bac5790e23, from name: aot-System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 540
	%struct.DSOCacheEntry {
		i64 9826454774730797097, ; hash 0x885e948e09453029, from name: aot-Microsoft.Extensions.Hosting.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 541
	%struct.DSOCacheEntry {
		i64 9832182655897657795, ; hash 0x8872ee084b8961c3, from name: libaot-Uno.Core.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Uno.Core.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 542
	%struct.DSOCacheEntry {
		i64 9872301298376226842, ; hash 0x890175b9a557b81a, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 543
	%struct.DSOCacheEntry {
		i64 9878540403917854255, ; hash 0x8917a0289ade162f, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 544
	%struct.DSOCacheEntry {
		i64 9901757312158402783, ; hash 0x896a1bd04b5408df, from name: aot-System.Diagnostics.Tools.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 545
	%struct.DSOCacheEntry {
		i64 9921778862272270480, ; hash 0x89b13d4eb1b7d090, from name: aot-System.Reflection.Emit.ILGeneration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 546
	%struct.DSOCacheEntry {
		i64 9930928567611131222, ; hash 0x89d1beea7a3d8556, from name: libaot-Uno.UI.FluentTheme.v1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-Uno.UI.FluentTheme.v1.dll.so
		ptr null; void* handle (0x0)
	}, ; 547
	%struct.DSOCacheEntry {
		i64 9932504481447475117, ; hash 0x89d7583382a6f7ad, from name: libaot-Microsoft.Extensions.Logging.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.Extensions.Logging.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 548
	%struct.DSOCacheEntry {
		i64 9935234070679127486, ; hash 0x89e10abf873005be, from name: aot-Microsoft.Extensions.Localization.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 549
	%struct.DSOCacheEntry {
		i64 9935526963929688589, ; hash 0x89e215220d582a0d, from name: Uno.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-Uno.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 550
	%struct.DSOCacheEntry {
		i64 9979507094340266003, ; hash 0x8a7e54d41fa46813, from name: aot-Uno.Extensions.Serialization.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Uno.Extensions.Serialization.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 551
	%struct.DSOCacheEntry {
		i64 9984712745295547978, ; hash 0x8a90d3572fa80e4a, from name: Uno.Foundation.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Uno.Foundation.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 552
	%struct.DSOCacheEntry {
		i64 9988317748301940683, ; hash 0x8a9da2125b4447cb, from name: aot-Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 553
	%struct.DSOCacheEntry {
		i64 10015320022696718808, ; hash 0x8afd907f48b1f1d8, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 554
	%struct.DSOCacheEntry {
		i64 10017511394021241210, ; hash 0x8b055989ae10717a, from name: Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 555
	%struct.DSOCacheEntry {
		i64 10036215306110403221, ; hash 0x8b47cca5920c8295, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 556
	%struct.DSOCacheEntry {
		i64 10038591806013433352, ; hash 0x8b503e0f9293e608, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 557
	%struct.DSOCacheEntry {
		i64 10043659251706229531, ; hash 0x8b623ee03703f31b, from name: libaot-Microsoft.Extensions.Hosting.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 558
	%struct.DSOCacheEntry {
		i64 10051358222726253779, ; hash 0x8b7d990c97ccccd3, from name: System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 559
	%struct.DSOCacheEntry {
		i64 10098231779408961622, ; hash 0x8c24204cf73b6056, from name: libaot-Uno.Material.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Uno.Material.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 560
	%struct.DSOCacheEntry {
		i64 10100633424984079765, ; hash 0x8c2ca895a69cfd95, from name: libaot-System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 561
	%struct.DSOCacheEntry {
		i64 10117538216423255955, ; hash 0x8c68b7671f58ef93, from name: System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 562
	%struct.DSOCacheEntry {
		i64 10125640814986396946, ; hash 0x8c8580ac5c760512, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 563
	%struct.DSOCacheEntry {
		i64 10202443004866537339, ; hash 0x8d965bdbaa3d277b, from name: aot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 564
	%struct.DSOCacheEntry {
		i64 10205853378024263619, ; hash 0x8da279930adb4fc3, from name: Microsoft.Extensions.Configuration.Binder
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Binder.dll.so
		ptr null; void* handle (0x0)
	}, ; 565
	%struct.DSOCacheEntry {
		i64 10205933005510771811, ; hash 0x8da2c1fec2e78463, from name: aot-System.Diagnostics.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 566
	%struct.DSOCacheEntry {
		i64 10214437830394522368, ; hash 0x8dc0f9169cfa2b00, from name: aot-System.Reflection.Emit.Lightweight
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 567
	%struct.DSOCacheEntry {
		i64 10224492561641212282, ; hash 0x8de4b1d0293f897a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 568
	%struct.DSOCacheEntry {
		i64 10245369515835430794, ; hash 0x8e2edd4ad7fc978a, from name: System.Reflection.Emit.Lightweight
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 569
	%struct.DSOCacheEntry {
		i64 10254793398930330001, ; hash 0x8e5058439c435191, from name: aot-Uno.Extensions.Storage
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Uno.Extensions.Storage.dll.so
		ptr null; void* handle (0x0)
	}, ; 570
	%struct.DSOCacheEntry {
		i64 10273345953350871244, ; hash 0x8e9241b6cc2ce8cc, from name: netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 571
	%struct.DSOCacheEntry {
		i64 10291981562957691400, ; hash 0x8ed476b3c6f67a08, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 572
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 573
	%struct.DSOCacheEntry {
		i64 10360315726388337145, ; hash 0x8fc73c43084519f9, from name: libaot-System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 574
	%struct.DSOCacheEntry {
		i64 10362236940373752476, ; hash 0x8fce0f9885687a9c, from name: libaot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 575
	%struct.DSOCacheEntry {
		i64 10362672660717842022, ; hash 0x8fcf9be191bd2e66, from name: libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		ptr null; void* handle (0x0)
	}, ; 576
	%struct.DSOCacheEntry {
		i64 10375624106091598968, ; hash 0x8ffd9f26ee91d478, from name: Uno.Extensions.Reactive.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Uno.Extensions.Reactive.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 577
	%struct.DSOCacheEntry {
		i64 10384251670433159083, ; hash 0x901c45e04a6cd7ab, from name: Uno.Core.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Uno.Core.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 578
	%struct.DSOCacheEntry {
		i64 10385124814576326370, ; hash 0x901f5fff00ea96e2, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 579
	%struct.DSOCacheEntry {
		i64 10387475612650146223, ; hash 0x9027ba08d50b89af, from name: libaot-System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 580
	%struct.DSOCacheEntry {
		i64 10392419804969934685, ; hash 0x90394ac04ff79f5d, from name: libaot-System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 581
	%struct.DSOCacheEntry {
		i64 10430153318873392755, ; hash 0x90bf592ea44f6673, from name: Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 582
	%struct.DSOCacheEntry {
		i64 10431089073467423858, ; hash 0x90c2ac3efc7bfc72, from name: libaot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 583
	%struct.DSOCacheEntry {
		i64 10445573484590211502, ; hash 0x90f621bdc03d21ae, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 584
	%struct.DSOCacheEntry {
		i64 10450970453325464374, ; hash 0x91094e4174914336, from name: aot-System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 585
	%struct.DSOCacheEntry {
		i64 10459184157551667163, ; hash 0x91267c937f42a7db, from name: libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		ptr null; void* handle (0x0)
	}, ; 586
	%struct.DSOCacheEntry {
		i64 10462325736163448418, ; hash 0x9131a5d344731662, from name: libaot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 587
	%struct.DSOCacheEntry {
		i64 10466761509042826167, ; hash 0x914168231f3aabb7, from name: aot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 588
	%struct.DSOCacheEntry {
		i64 10473362234602959150, ; hash 0x9158db764d80312e, from name: libaot-Uno.UI.FluentTheme.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-Uno.UI.FluentTheme.dll.so
		ptr null; void* handle (0x0)
	}, ; 589
	%struct.DSOCacheEntry {
		i64 10500280519662880332, ; hash 0x91b87d7ff075c64c, from name: aot-Uno.UI.FluentTheme.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-Uno.UI.FluentTheme.dll.so
		ptr null; void* handle (0x0)
	}, ; 590
	%struct.DSOCacheEntry {
		i64 10502580187155877545, ; hash 0x91c0a909007b4ea9, from name: aot-Uno.Toolkit.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Uno.Toolkit.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 591
	%struct.DSOCacheEntry {
		i64 10541184346832605581, ; hash 0x9249cf5058dd918d, from name: UnoApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-UnoApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 592
	%struct.DSOCacheEntry {
		i64 10561557058910284153, ; hash 0x92923030035de979, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 593
	%struct.DSOCacheEntry {
		i64 10599892432760363771, ; hash 0x931a6201c8085afb, from name: aot-Microsoft.Extensions.Logging.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.Extensions.Logging.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 594
	%struct.DSOCacheEntry {
		i64 10625618926250046079, ; hash 0x9375c81dd1cd327f, from name: Uno.Extensions.Storage
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Uno.Extensions.Storage.dll.so
		ptr null; void* handle (0x0)
	}, ; 595
	%struct.DSOCacheEntry {
		i64 10638196514328206315, ; hash 0x93a2775dbf54dbeb, from name: aot-System.IO.FileSystem.Watcher
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 596
	%struct.DSOCacheEntry {
		i64 10657322552275964462, ; hash 0x93e66a65792b122e, from name: aot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 597
	%struct.DSOCacheEntry {
		i64 10686502423950929984, ; hash 0x944e1555c6f23040, from name: libaot-netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 598
	%struct.DSOCacheEntry {
		i64 10738576877450676954, ; hash 0x950716c64dabcada, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 599
	%struct.DSOCacheEntry {
		i64 10762728535378187181, ; hash 0x955ce4945d2d53ad, from name: Uno.Extensions.Localization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Uno.Extensions.Localization.dll.so
		ptr null; void* handle (0x0)
	}, ; 600
	%struct.DSOCacheEntry {
		i64 10785150219063592792, ; hash 0x95ac8cfb68830758, from name: System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 601
	%struct.DSOCacheEntry {
		i64 10797309073391432218, ; hash 0x95d7bf654999321a, from name: Uno.Themes.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Uno.Themes.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 602
	%struct.DSOCacheEntry {
		i64 10802119357986192625, ; hash 0x95e8d652f2233cf1, from name: libaot-System.Threading.Tasks
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 603
	%struct.DSOCacheEntry {
		i64 10809043855025277762, ; hash 0x9601701e0c668b42, from name: Microsoft.Extensions.Options.ConfigurationExtensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 604
	%struct.DSOCacheEntry {
		i64 10814049875159822295, ; hash 0x96133910f0422fd7, from name: aot-Microsoft.Extensions.Options.ConfigurationExtensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 605
	%struct.DSOCacheEntry {
		i64 10822644899632537592, ; hash 0x9631c23204ca5ff8, from name: System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 606
	%struct.DSOCacheEntry {
		i64 10827433220396269482, ; hash 0x9642c525d2fbbfaa, from name: aot-Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 607
	%struct.DSOCacheEntry {
		i64 10860677900725225535, ; hash 0x96b8e10224a9883f, from name: libaot-Uno.UI.BindingHelper.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Uno.UI.BindingHelper.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 608
	%struct.DSOCacheEntry {
		i64 10868272605511454858, ; hash 0x96d3dc5a259e908a, from name: Uno.Extensions.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Uno.Extensions.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 609
	%struct.DSOCacheEntry {
		i64 10868435016331494222, ; hash 0x96d470105cdb034e, from name: aot-Uno.Extensions.Storage.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Uno.Extensions.Storage.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 610
	%struct.DSOCacheEntry {
		i64 10897157901176593817, ; hash 0x973a7b6020f8dd99, from name: aot-Uno.Extensions.Serialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Uno.Extensions.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 611
	%struct.DSOCacheEntry {
		i64 10917237497488401533, ; hash 0x9781d1a9765ee47d, from name: aot-Uno.UI.Composition.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-Uno.UI.Composition.dll.so
		ptr null; void* handle (0x0)
	}, ; 612
	%struct.DSOCacheEntry {
		i64 10924302013488348491, ; hash 0x979aeacd450ebd4b, from name: aot-SkiaSharp.Skottie
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-SkiaSharp.Skottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 613
	%struct.DSOCacheEntry {
		i64 10949661610871045344, ; hash 0x97f50338a6b33ce0, from name: Uno.Core.Extensions.Disposables
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Uno.Core.Extensions.Disposables.dll.so
		ptr null; void* handle (0x0)
	}, ; 614
	%struct.DSOCacheEntry {
		i64 10959662263064203642, ; hash 0x98188ac2f032117a, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 615
	%struct.DSOCacheEntry {
		i64 10980007583825662638, ; hash 0x9860d2b9110612ae, from name: Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 616
	%struct.DSOCacheEntry {
		i64 11002576679268595294, ; hash 0x98b1013215cd365e, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 617
	%struct.DSOCacheEntry {
		i64 11018114698382650455, ; hash 0x98e834f1139bac57, from name: aot-Uno.Core.Extensions.Disposables.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Uno.Core.Extensions.Disposables.dll.so
		ptr null; void* handle (0x0)
	}, ; 618
	%struct.DSOCacheEntry {
		i64 11031718967604308070, ; hash 0x991889f3d5fe6866, from name: libaot-System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 619
	%struct.DSOCacheEntry {
		i64 11043797956829943227, ; hash 0x994373baac0895bb, from name: aot-System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 620
	%struct.DSOCacheEntry {
		i64 11116516824914593865, ; hash 0x9a45cd2788b00849, from name: libaot-System.IO.FileSystem.Watcher
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 621
	%struct.DSOCacheEntry {
		i64 11132589231015983802, ; hash 0x9a7ee6ec310bfaba, from name: aot-Uno.Toolkit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Uno.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 622
	%struct.DSOCacheEntry {
		i64 11143151591835348178, ; hash 0x9aa46d5575acacd2, from name: aot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 623
	%struct.DSOCacheEntry {
		i64 11155155660125070409, ; hash 0x9acf12f867f16449, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 624
	%struct.DSOCacheEntry {
		i64 11162124722117608902, ; hash 0x9ae7d54b986d05c6, from name: Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 625
	%struct.DSOCacheEntry {
		i64 11164818937994912957, ; hash 0x9af167ab9cbda4bd, from name: System.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 626
	%struct.DSOCacheEntry {
		i64 11171214345979581187, ; hash 0x9b08204291dc5303, from name: libaot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 627
	%struct.DSOCacheEntry {
		i64 11193726116885764879, ; hash 0x9b581a98adfd1b0f, from name: aot-Uno.Extensions.Reactive.Messaging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Uno.Extensions.Reactive.Messaging.dll.so
		ptr null; void* handle (0x0)
	}, ; 628
	%struct.DSOCacheEntry {
		i64 11195996647188411653, ; hash 0x9b602ba1b6213505, from name: libaot-Uno.UI.Composition.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-Uno.UI.Composition.dll.so
		ptr null; void* handle (0x0)
	}, ; 629
	%struct.DSOCacheEntry {
		i64 11197549611186692145, ; hash 0x9b65b00b5198a031, from name: Uno.Core.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Uno.Core.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 630
	%struct.DSOCacheEntry {
		i64 11199783702049984371, ; hash 0x9b6d9ff021e60f73, from name: Uno.UI.FluentTheme
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-Uno.UI.FluentTheme.dll.so
		ptr null; void* handle (0x0)
	}, ; 631
	%struct.DSOCacheEntry {
		i64 11220156604896003572, ; hash 0x9bb600fc371445f4, from name: Uno.Foundation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Uno.Foundation.dll.so
		ptr null; void* handle (0x0)
	}, ; 632
	%struct.DSOCacheEntry {
		i64 11226833703947185032, ; hash 0x9bcdb9c57c27ab88, from name: libaot-Uno.Core.Extensions.Logging.Singleton.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Uno.Core.Extensions.Logging.Singleton.dll.so
		ptr null; void* handle (0x0)
	}, ; 633
	%struct.DSOCacheEntry {
		i64 11245267750673177240, ; hash 0x9c0f37707307da98, from name: aot-System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 634
	%struct.DSOCacheEntry {
		i64 11255273348651191199, ; hash 0x9c32c37a44468b9f, from name: System.Linq.Async.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Linq.Async.dll.so
		ptr null; void* handle (0x0)
	}, ; 635
	%struct.DSOCacheEntry {
		i64 11265617348861323052, ; hash 0x9c57834a7e5b672c, from name: Uno.Core.Extensions.Logging.Singleton.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Uno.Core.Extensions.Logging.Singleton.dll.so
		ptr null; void* handle (0x0)
	}, ; 636
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 637
	%struct.DSOCacheEntry {
		i64 11272056437825607010, ; hash 0x9c6e639bb8c01562, from name: libaot-Uno.Core.Extensions.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Uno.Core.Extensions.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 638
	%struct.DSOCacheEntry {
		i64 11277712621019035171, ; hash 0x9c827be07ec77623, from name: aot-System.Web.HttpUtility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 639
	%struct.DSOCacheEntry {
		i64 11297620656358036086, ; hash 0x9cc936212d561276, from name: libaot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 640
	%struct.DSOCacheEntry {
		i64 11298091066671352730, ; hash 0x9ccae1f71cf5cb9a, from name: Xamarin.AndroidX.Core.SplashScreen.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		ptr null; void* handle (0x0)
	}, ; 641
	%struct.DSOCacheEntry {
		i64 11315382762034569782, ; hash 0x9d0850abaca62236, from name: libaot-Microsoft.Extensions.Diagnostics.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 642
	%struct.DSOCacheEntry {
		i64 11327873123841536301, ; hash 0x9d34b096a744f12d, from name: aot-netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 643
	%struct.DSOCacheEntry {
		i64 11329407233932627207, ; hash 0x9d3a23da7e4b8d07, from name: aot-System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 644
	%struct.DSOCacheEntry {
		i64 11345572787732702867, ; hash 0x9d739256ca256693, from name: aot-UnoApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-UnoApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 645
	%struct.DSOCacheEntry {
		i64 11369008813813839762, ; hash 0x9dc6d547d3a8b792, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 646
	%struct.DSOCacheEntry {
		i64 11400871676363553699, ; hash 0x9e3808629f763ba3, from name: aot-Uno.Extensions.Navigation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Uno.Extensions.Navigation.dll.so
		ptr null; void* handle (0x0)
	}, ; 647
	%struct.DSOCacheEntry {
		i64 11427562517396788789, ; hash 0x9e96db9052011635, from name: libaot-Uno.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-Uno.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 648
	%struct.DSOCacheEntry {
		i64 11427651043692466812, ; hash 0x9e972c13f469527c, from name: System.Reflection.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 649
	%struct.DSOCacheEntry {
		i64 11437608939786898104, ; hash 0x9eba8cbb4fd48ab8, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 650
	%struct.DSOCacheEntry {
		i64 11446671985764974897, ; hash 0x9edabf8623efc131, from name: Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 651
	%struct.DSOCacheEntry {
		i64 11454522132406759586, ; hash 0x9ef6a330d5f470a2, from name: aot-SkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 652
	%struct.DSOCacheEntry {
		i64 11459687736992758643, ; hash 0x9f08fd47e05a7b73, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 653
	%struct.DSOCacheEntry {
		i64 11465353776621081442, ; hash 0x9f1d1e8387aed362, from name: aot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 654
	%struct.DSOCacheEntry {
		i64 11481066638389282847, ; hash 0x9f54f1473fc8081f, from name: libaot-Microsoft.Extensions.Diagnostics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Diagnostics.dll.so
		ptr null; void* handle (0x0)
	}, ; 655
	%struct.DSOCacheEntry {
		i64 11485890710487134646, ; hash 0x9f6614bf0f8b71b6, from name: System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 656
	%struct.DSOCacheEntry {
		i64 11495032816624096970, ; hash 0x9f868f71845656ca, from name: aot-System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 657
	%struct.DSOCacheEntry {
		i64 11501144570798221654, ; hash 0x9f9c460d2cd72956, from name: libaot-Uno.UI.FluentTheme.v2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-Uno.UI.FluentTheme.v2.dll.so
		ptr null; void* handle (0x0)
	}, ; 658
	%struct.DSOCacheEntry {
		i64 11501523568478995397, ; hash 0x9f9d9ebf72f943c5, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 659
	%struct.DSOCacheEntry {
		i64 11512875646390393919, ; hash 0x9fc5f3670e585c3f, from name: Uno.UI.Dispatching
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-Uno.UI.Dispatching.dll.so
		ptr null; void* handle (0x0)
	}, ; 660
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 661
	%struct.DSOCacheEntry {
		i64 11530571088791430846, ; hash 0xa004d1504ccd66be, from name: Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 662
	%struct.DSOCacheEntry {
		i64 11530669335547299986, ; hash 0xa0052aab27c94892, from name: System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 663
	%struct.DSOCacheEntry {
		i64 11531048335771130113, ; hash 0xa006835e057f5901, from name: System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 664
	%struct.DSOCacheEntry {
		i64 11543093801659331803, ; hash 0xa0314ea798eaf4db, from name: aot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 665
	%struct.DSOCacheEntry {
		i64 11597940890313164233, ; hash 0xa0f429ca8d1805c9, from name: netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 666
	%struct.DSOCacheEntry {
		i64 11610782509437733205, ; hash 0xa121c92cff5ac955, from name: libaot-Uno.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-Uno.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 667
	%struct.DSOCacheEntry {
		i64 11622665325505776179, ; hash 0xa14c0088b6058a33, from name: libaot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 668
	%struct.DSOCacheEntry {
		i64 11631892012703656401, ; hash 0xa16cc8283ae7a9d1, from name: libaot-Uno.Extensions.Reactive.Messaging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Uno.Extensions.Reactive.Messaging.dll.so
		ptr null; void* handle (0x0)
	}, ; 669
	%struct.DSOCacheEntry {
		i64 11637972874768420528, ; hash 0xa18262ab42340eb0, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 670
	%struct.DSOCacheEntry {
		i64 11639389323749721901, ; hash 0xa1876aebfc93872d, from name: Uno.Extensions.Logging.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Uno.Extensions.Logging.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 671
	%struct.DSOCacheEntry {
		i64 11678659343752180467, ; hash 0xa212eecc052532f3, from name: aot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 672
	%struct.DSOCacheEntry {
		i64 11687911221173069033, ; hash 0xa233cd549852a4e9, from name: aot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 673
	%struct.DSOCacheEntry {
		i64 11710881013513342734, ; hash 0xa285683c21544f0e, from name: Microsoft.Extensions.Hosting.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 674
	%struct.DSOCacheEntry {
		i64 11743665907891708234, ; hash 0xa2f9e1ec30c0214a, from name: System.Threading.Tasks
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 675
	%struct.DSOCacheEntry {
		i64 11764213056097819061, ; hash 0xa342e171eeb919b5, from name: libaot-System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 676
	%struct.DSOCacheEntry {
		i64 11774386958472795079, ; hash 0xa367068e2bc353c7, from name: libaot-Microsoft.Extensions.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 677
	%struct.DSOCacheEntry {
		i64 11775896168281936811, ; hash 0xa36c632c765413ab, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 678
	%struct.DSOCacheEntry {
		i64 11782443198922974530, ; hash 0xa383a5a9d2056542, from name: aot-System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 679
	%struct.DSOCacheEntry {
		i64 11791551279424221216, ; hash 0xa3a4016a10e23020, from name: aot-Uno.Extensions.Hosting
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Uno.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 680
	%struct.DSOCacheEntry {
		i64 11799183892646765925, ; hash 0xa3bf1f3c50b8a565, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 681
	%struct.DSOCacheEntry {
		i64 11878431249347270648, ; hash 0xa4d8aa49623e57f8, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 682
	%struct.DSOCacheEntry {
		i64 11896613629761995876, ; hash 0xa5194310b808c464, from name: System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 683
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 684
	%struct.DSOCacheEntry {
		i64 11910831168713401344, ; hash 0xa54bc5d776d02400, from name: aot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so
		ptr null; void* handle (0x0)
	}, ; 685
	%struct.DSOCacheEntry {
		i64 11912807392173141590, ; hash 0xa552cb34d820ae56, from name: libaot-Microsoft.Extensions.FileProviders.Physical
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		ptr null; void* handle (0x0)
	}, ; 686
	%struct.DSOCacheEntry {
		i64 11916391738981060886, ; hash 0xa55f87269e5d9116, from name: aot-Uno.Extensions.Storage.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Uno.Extensions.Storage.dll.so
		ptr null; void* handle (0x0)
	}, ; 687
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 688
	%struct.DSOCacheEntry {
		i64 11960635333391233705, ; hash 0xa5fcb6772ec532a9, from name: aot-Uno.Foundation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Uno.Foundation.dll.so
		ptr null; void* handle (0x0)
	}, ; 689
	%struct.DSOCacheEntry {
		i64 11961267664017900664, ; hash 0xa5fef59121274478, from name: libaot-Uno.Extensions.Core.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Uno.Extensions.Core.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 690
	%struct.DSOCacheEntry {
		i64 11971492326651720736, ; hash 0xa62348d7e963f420, from name: aot-Refit.HttpClientFactory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Refit.HttpClientFactory.dll.so
		ptr null; void* handle (0x0)
	}, ; 691
	%struct.DSOCacheEntry {
		i64 12009284439097441554, ; hash 0xa6a98c91c7077d12, from name: aot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		ptr null; void* handle (0x0)
	}, ; 692
	%struct.DSOCacheEntry {
		i64 12009367026972078138, ; hash 0xa6a9d7aec3f5b03a, from name: libaot-Uno.UI.FluentTheme.v1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-Uno.UI.FluentTheme.v1.dll.so
		ptr null; void* handle (0x0)
	}, ; 693
	%struct.DSOCacheEntry {
		i64 12025475895945156578, ; hash 0xa6e3129d18d557e2, from name: Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 694
	%struct.DSOCacheEntry {
		i64 12048689113179125827, ; hash 0xa7358ae968287843, from name: Microsoft.Extensions.FileProviders.Physical
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.FileProviders.Physical.dll.so
		ptr null; void* handle (0x0)
	}, ; 695
	%struct.DSOCacheEntry {
		i64 12050631976567110376, ; hash 0xa73c71ef8a3efae8, from name: aot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 696
	%struct.DSOCacheEntry {
		i64 12051765732457062039, ; hash 0xa7407914a7541e97, from name: aot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 697
	%struct.DSOCacheEntry {
		i64 12052751833701477691, ; hash 0xa743f9ef3db6ed3b, from name: System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 698
	%struct.DSOCacheEntry {
		i64 12056972575567611300, ; hash 0xa752f8ad495585a4, from name: libaot-Microsoft.Extensions.Logging.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.Extensions.Logging.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 699
	%struct.DSOCacheEntry {
		i64 12088653206460999738, ; hash 0xa7c3860af7fea83a, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 700
	%struct.DSOCacheEntry {
		i64 12126438742198983615, ; hash 0xa849c3c9934e1bbf, from name: aot-UnoApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-UnoApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 701
	%struct.DSOCacheEntry {
		i64 12145679461940342714, ; hash 0xa88e1f1ebcb62fba, from name: System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 702
	%struct.DSOCacheEntry {
		i64 12159949127356048468, ; hash 0xa8c0d14e1ee0e454, from name: aot-Uno.Diagnostics.Eventing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Uno.Diagnostics.Eventing.dll.so
		ptr null; void* handle (0x0)
	}, ; 703
	%struct.DSOCacheEntry {
		i64 12169242935900241089, ; hash 0xa8e1d5f98bc3fcc1, from name: Uno.Extensions.Serialization.Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Uno.Extensions.Serialization.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 704
	%struct.DSOCacheEntry {
		i64 12192045520349597797, ; hash 0xa932d8cdf5d49065, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 705
	%struct.DSOCacheEntry {
		i64 12196119803066310016, ; hash 0xa9415257d3dfdd80, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 706
	%struct.DSOCacheEntry {
		i64 12200030640715187753, ; hash 0xa94f373aacb5c629, from name: libaot-SkiaSharp.Skottie
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-SkiaSharp.Skottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 707
	%struct.DSOCacheEntry {
		i64 12278824155482493573, ; hash 0xaa6725836f051285, from name: libaot-System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 708
	%struct.DSOCacheEntry {
		i64 12278928371408744993, ; hash 0xaa67844c1848b221, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 709
	%struct.DSOCacheEntry {
		i64 12299237789830559228, ; hash 0xaaafab9b0ee935fc, from name: aot-Uno.Foundation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Uno.Foundation.dll.so
		ptr null; void* handle (0x0)
	}, ; 710
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 711
	%struct.DSOCacheEntry {
		i64 12302553327003790745, ; hash 0xaabb7311b65c6d99, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 712
	%struct.DSOCacheEntry {
		i64 12315876021774320129, ; hash 0xaaeac7fd4f9c0201, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 713
	%struct.DSOCacheEntry {
		i64 12319133490348723861, ; hash 0xaaf65aa3d0da8e95, from name: libaot-System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 714
	%struct.DSOCacheEntry {
		i64 12323058790757879636, ; hash 0xab044cae0960cf54, from name: Microsoft.Extensions.Logging.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.Extensions.Logging.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 715
	%struct.DSOCacheEntry {
		i64 12338163837237862793, ; hash 0xab39f6a3bb222189, from name: libaot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 716
	%struct.DSOCacheEntry {
		i64 12351515874201093065, ; hash 0xab69663f175ac3c9, from name: Uno.Extensions.Core.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Uno.Extensions.Core.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 717
	%struct.DSOCacheEntry {
		i64 12362395135250488461, ; hash 0xab900ce0719f5c8d, from name: aot-System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 718
	%struct.DSOCacheEntry {
		i64 12405317157449198374, ; hash 0xac288a3a7fd16b26, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 719
	%struct.DSOCacheEntry {
		i64 12416582163251960561, ; hash 0xac508fb10d159af1, from name: Uno.Core.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Uno.Core.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 720
	%struct.DSOCacheEntry {
		i64 12439793764729580087, ; hash 0xaca3068529d36a37, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 721
	%struct.DSOCacheEntry {
		i64 12453234617382276517, ; hash 0xacd2c6e789ab0da5, from name: libaot-System.Reflection.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 722
	%struct.DSOCacheEntry {
		i64 12456599198595667770, ; hash 0xacdebaf925b5d73a, from name: System.Resources.ResourceManager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 723
	%struct.DSOCacheEntry {
		i64 12523245389433574075, ; hash 0xadcb8154a83c92bb, from name: libaot-Uno.UI.Lottie.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-Uno.UI.Lottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 724
	%struct.DSOCacheEntry {
		i64 12531980697337323275, ; hash 0xadea8a0c04d7df0b, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 725
	%struct.DSOCacheEntry {
		i64 12550732019250633519, ; hash 0xae2d28465e8e1b2f, from name: System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 726
	%struct.DSOCacheEntry {
		i64 12556856643548507433, ; hash 0xae42ea9696366d29, from name: aot-Microsoft.Extensions.FileProviders.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 727
	%struct.DSOCacheEntry {
		i64 12576283905579907466, ; hash 0xae87ef94828d798a, from name: libaot-UnoApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-UnoApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 728
	%struct.DSOCacheEntry {
		i64 12614790357517496411, ; hash 0xaf10bcfe7fda705b, from name: aot-SkiaSharp.Views.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-SkiaSharp.Views.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 729
	%struct.DSOCacheEntry {
		i64 12674035147592014371, ; hash 0xafe337d11b099a23, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 730
	%struct.DSOCacheEntry {
		i64 12674984561979589840, ; hash 0xafe6974dde5a84d0, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 731
	%struct.DSOCacheEntry {
		i64 12675504801352667864, ; hash 0xafe87075896252d8, from name: libaot-Microsoft.Extensions.FileSystemGlobbing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		ptr null; void* handle (0x0)
	}, ; 732
	%struct.DSOCacheEntry {
		i64 12708922737231849740, ; hash 0xb05f29e50e96e90c, from name: System.Text.Encoding.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 733
	%struct.DSOCacheEntry {
		i64 12727750515385895548, ; hash 0xb0a20da8c35f0a7c, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 734
	%struct.DSOCacheEntry {
		i64 12731065605289563280, ; hash 0xb0add4b7477a5490, from name: libaot-Uno.Core.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Uno.Core.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 735
	%struct.DSOCacheEntry {
		i64 12749051275663360017, ; hash 0xb0edba967d27c011, from name: libaot-Uno.UI.Toolkit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-Uno.UI.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 736
	%struct.DSOCacheEntry {
		i64 12752743847204943576, ; hash 0xb0fad8f64c32f6d8, from name: Uno.Extensions.Http.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Uno.Extensions.Http.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 737
	%struct.DSOCacheEntry {
		i64 12755088045610812437, ; hash 0xb1032cff8576c415, from name: aot-Uno.Extensions.Serialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Uno.Extensions.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 738
	%struct.DSOCacheEntry {
		i64 12819671646769953880, ; hash 0xb1e89f70f2debc58, from name: aot-Xamarin.AndroidX.Lifecycle.Common.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 739
	%struct.DSOCacheEntry {
		i64 12843321153144804894, ; hash 0xb23ca48abd74d61e, from name: Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 740
	%struct.DSOCacheEntry {
		i64 12850269674346675894, ; hash 0xb255542f67687eb6, from name: Uno.Toolkit.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Uno.Toolkit.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 741
	%struct.DSOCacheEntry {
		i64 12868190565700119421, ; hash 0xb294ff241296ab7d, from name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 742
	%struct.DSOCacheEntry {
		i64 12875951528938057945, ; hash 0xb2b091b2238030d9, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 743
	%struct.DSOCacheEntry {
		i64 12895691319166646681, ; hash 0xb2f6b2ee34043999, from name: aot-System.Runtime.Serialization.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 744
	%struct.DSOCacheEntry {
		i64 12903149379311849700, ; hash 0xb31131ff25af50e4, from name: libaot-SkiaSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-SkiaSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 745
	%struct.DSOCacheEntry {
		i64 12975930668465563552, ; hash 0xb413c4318bfca7a0, from name: libaot-System.Diagnostics.Tools
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 746
	%struct.DSOCacheEntry {
		i64 12991100427358516376, ; hash 0xb449a90246213498, from name: libaot-Uno.Core.Extensions.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Uno.Core.Extensions.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 747
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 748
	%struct.DSOCacheEntry {
		i64 13006425725023322809, ; hash 0xb4801b49318482b9, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 749
	%struct.DSOCacheEntry {
		i64 13009881931361839985, ; hash 0xb48c62aff0986b71, from name: libaot-Uno.Extensions.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Uno.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 750
	%struct.DSOCacheEntry {
		i64 13051597964816349319, ; hash 0xb5209732dc16f887, from name: libaot-UnoApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-UnoApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 751
	%struct.DSOCacheEntry {
		i64 13087390844131920673, ; hash 0xb59fc0a1fd2ecb21, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 752
	%struct.DSOCacheEntry {
		i64 13101809809254258831, ; hash 0xb5d2fa9aeb54188f, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 753
	%struct.DSOCacheEntry {
		i64 13116315589229894972, ; hash 0xb606838901f75d3c, from name: aot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 754
	%struct.DSOCacheEntry {
		i64 13222957746497227746, ; hash 0xb78162031ff78be2, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 755
	%struct.DSOCacheEntry {
		i64 13266626436012637180, ; hash 0xb81c86743656fbfc, from name: libaot-Xamarin.AndroidX.Core.SplashScreen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		ptr null; void* handle (0x0)
	}, ; 756
	%struct.DSOCacheEntry {
		i64 13314286428381311703, ; hash 0xb8c5d8f6e978f2d7, from name: libaot-System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 757
	%struct.DSOCacheEntry {
		i64 13343470684234793228, ; hash 0xb92d87e3fca7410c, from name: Uno.Foundation.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Uno.Foundation.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 758
	%struct.DSOCacheEntry {
		i64 13352871532007464144, ; hash 0xb94eede96cbb1cd0, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 759
	%struct.DSOCacheEntry {
		i64 13384594276806126840, ; hash 0xb9bfa19483c16cf8, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 760
	%struct.DSOCacheEntry {
		i64 13402327748773141627, ; hash 0xb9fea21434fbdc7b, from name: libaot-Uno.Fonts.OpenSans.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Uno.Fonts.OpenSans.dll.so
		ptr null; void* handle (0x0)
	}, ; 761
	%struct.DSOCacheEntry {
		i64 13411451718096310370, ; hash 0xba1f0c47db6ed062, from name: UnoApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-UnoApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 762
	%struct.DSOCacheEntry {
		i64 13422109118610439509, ; hash 0xba44e921474e7d55, from name: aot-SkiaSharp.Views.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-SkiaSharp.Views.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 763
	%struct.DSOCacheEntry {
		i64 13433432588885320352, ; hash 0xba6d23c426aa62a0, from name: libaot-Uno.UI.Toolkit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-Uno.UI.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 764
	%struct.DSOCacheEntry {
		i64 13465488254036897740, ; hash 0xbadf06394d106fcc, from name: Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 765
	%struct.DSOCacheEntry {
		i64 13488491921086969402, ; hash 0xbb30bfefe81d763a, from name: aot-System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 766
	%struct.DSOCacheEntry {
		i64 13530422824673281176, ; hash 0xbbc5b7df2d7d0498, from name: libaot-Uno.Toolkit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Uno.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 767
	%struct.DSOCacheEntry {
		i64 13531434639462670770, ; hash 0xbbc9501caa96a1b2, from name: Uno.Extensions.Reactive
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Uno.Extensions.Reactive.dll.so
		ptr null; void* handle (0x0)
	}, ; 768
	%struct.DSOCacheEntry {
		i64 13543298794604804824, ; hash 0xbbf3767f8b653ad8, from name: libaot-Microsoft.Extensions.Localization.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 769
	%struct.DSOCacheEntry {
		i64 13546874730744599821, ; hash 0xbc002acb0ebf550d, from name: System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 770
	%struct.DSOCacheEntry {
		i64 13589927487757454067, ; hash 0xbc991f0c2f198af3, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 771
	%struct.DSOCacheEntry {
		i64 13603500654432575449, ; hash 0xbcc957c5513f5fd9, from name: System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 772
	%struct.DSOCacheEntry {
		i64 13654006570823925361, ; hash 0xbd7cc6a256cf3e71, from name: aot-Microsoft.Extensions.Configuration.FileExtensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 773
	%struct.DSOCacheEntry {
		i64 13699603031714047885, ; hash 0xbe1ec45fad2e278d, from name: libaot-Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 774
	%struct.DSOCacheEntry {
		i64 13717233136797750441, ; hash 0xbe5d66dc640c14a9, from name: aot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 775
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 776
	%struct.DSOCacheEntry {
		i64 13761955127882175294, ; hash 0xbefc49465c48533e, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 777
	%struct.DSOCacheEntry {
		i64 13768113933372556022, ; hash 0xbf122aad01c702f6, from name: libaot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 778
	%struct.DSOCacheEntry {
		i64 13780240838949801592, ; hash 0xbf3d40083cef0e78, from name: System.Text.Encoding.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 779
	%struct.DSOCacheEntry {
		i64 13807487031629930123, ; hash 0xbf9e0c4cd11d5e8b, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 780
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 781
	%struct.DSOCacheEntry {
		i64 13860366284965389963, ; hash 0xc059e9b36829a68b, from name: libaot-Uno.Extensions.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Uno.Extensions.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 782
	%struct.DSOCacheEntry {
		i64 13867117524690869568, ; hash 0xc071e5eae5cb1d40, from name: UniversalImageLoader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-UniversalImageLoader.dll.so
		ptr null; void* handle (0x0)
	}, ; 783
	%struct.DSOCacheEntry {
		i64 13876721762243165199, ; hash 0xc09404ebb56fbc0f, from name: System.Diagnostics.Tools.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 784
	%struct.DSOCacheEntry {
		i64 13895367298828589466, ; hash 0xc0d642effe41d99a, from name: aot-Uno.Core.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-Uno.Core.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 785
	%struct.DSOCacheEntry {
		i64 13895932895870473602, ; hash 0xc0d8455851065582, from name: libaot-Microsoft.Extensions.FileProviders.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 786
	%struct.DSOCacheEntry {
		i64 13900452450741477987, ; hash 0xc0e853db2fa76263, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 787
	%struct.DSOCacheEntry {
		i64 13917396180688427187, ; hash 0xc1248616bc4fd8b3, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 788
	%struct.DSOCacheEntry {
		i64 13927427627500361954, ; hash 0xc14829a2f41ed8e2, from name: aot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 789
	%struct.DSOCacheEntry {
		i64 13934622921725558032, ; hash 0xc161b9b7f077bd10, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 790
	%struct.DSOCacheEntry {
		i64 13959074834287824816, ; hash 0xc1b8989a7ad20fb0, from name: Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 791
	%struct.DSOCacheEntry {
		i64 14024723203617446143, ; hash 0xc2a1d37290cbd8ff, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 792
	%struct.DSOCacheEntry {
		i64 14030387949735038754, ; hash 0xc2b5f3810ce0cf22, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 793
	%struct.DSOCacheEntry {
		i64 14037761671920318323, ; hash 0xc2d025dd88677773, from name: aot-System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 794
	%struct.DSOCacheEntry {
		i64 14044858527140495619, ; hash 0xc2e95c6ae6d34103, from name: aot-System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 795
	%struct.DSOCacheEntry {
		i64 14048877051556269115, ; hash 0xc2f7a33e87260c3b, from name: libaot-Uno.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Uno.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 796
	%struct.DSOCacheEntry {
		i64 14058709349301150578, ; hash 0xc31a91aabd8ee372, from name: System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 797
	%struct.DSOCacheEntry {
		i64 14063001558333072857, ; hash 0xc329d168883525d9, from name: libaot-Microsoft.Extensions.Configuration.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Configuration.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 798
	%struct.DSOCacheEntry {
		i64 14080018879447829131, ; hash 0xc36646925c480a8b, from name: Uno.Fonts.OpenSans
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Uno.Fonts.OpenSans.dll.so
		ptr null; void* handle (0x0)
	}, ; 799
	%struct.DSOCacheEntry {
		i64 14143988164198918098, ; hash 0xc4498a4c1a67e7d2, from name: System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 800
	%struct.DSOCacheEntry {
		i64 14148722663669600943, ; hash 0xc45a5c4ca98b92af, from name: aot-Uno.Core.Extensions.Equality
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Uno.Core.Extensions.Equality.dll.so
		ptr null; void* handle (0x0)
	}, ; 801
	%struct.DSOCacheEntry {
		i64 14152660198772281192, ; hash 0xc46859777ea18f68, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 802
	%struct.DSOCacheEntry {
		i64 14159110086036678642, ; hash 0xc47f439ae5dde7f2, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 803
	%struct.DSOCacheEntry {
		i64 14174671189317472550, ; hash 0xc4b68c58973b5126, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 804
	%struct.DSOCacheEntry {
		i64 14182888721008485466, ; hash 0xc4d3be25c89ae45a, from name: aot-System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 805
	%struct.DSOCacheEntry {
		i64 14199563118190975076, ; hash 0xc50efb6c6982d864, from name: Uno.UI.Adapter.Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 806
	%struct.DSOCacheEntry {
		i64 14205353690359892427, ; hash 0xc5238deb0eaf89cb, from name: aot-Uno.Extensions.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Uno.Extensions.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 807
	%struct.DSOCacheEntry {
		i64 14229759311599148967, ; hash 0xc57a42b38f2c9fa7, from name: libaot-Uno.Extensions.Reactive
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Uno.Extensions.Reactive.dll.so
		ptr null; void* handle (0x0)
	}, ; 808
	%struct.DSOCacheEntry {
		i64 14230396410514008665, ; hash 0xc57c8623b5ae6a59, from name: aot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 809
	%struct.DSOCacheEntry {
		i64 14291662501039187258, ; hash 0xc6562f530036253a, from name: Uno.Fonts.Fluent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Uno.Fonts.Fluent.dll.so
		ptr null; void* handle (0x0)
	}, ; 810
	%struct.DSOCacheEntry {
		i64 14305829392090577947, ; hash 0xc68884095ce6bc1b, from name: aot-Microsoft.Extensions.Configuration.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Configuration.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 811
	%struct.DSOCacheEntry {
		i64 14311480642376061124, ; hash 0xc69c97d19ab450c4, from name: aot-Uno.Extensions.Reactive.Messaging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Uno.Extensions.Reactive.Messaging.dll.so
		ptr null; void* handle (0x0)
	}, ; 812
	%struct.DSOCacheEntry {
		i64 14311937532941220850, ; hash 0xc69e375bba8abbf2, from name: libaot-Uno.Fonts.Fluent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Uno.Fonts.Fluent.dll.so
		ptr null; void* handle (0x0)
	}, ; 813
	%struct.DSOCacheEntry {
		i64 14317997431913345095, ; hash 0xc6b3becde8267047, from name: aot-System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 814
	%struct.DSOCacheEntry {
		i64 14319327830875434373, ; hash 0xc6b878cb8db1ed85, from name: System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 815
	%struct.DSOCacheEntry {
		i64 14325261326580300370, ; hash 0xc6cd8d472d75ba52, from name: libaot-Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 816
	%struct.DSOCacheEntry {
		i64 14337652136568443136, ; hash 0xc6f992a771485100, from name: SkiaSharp.Skottie.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-SkiaSharp.Skottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 817
	%struct.DSOCacheEntry {
		i64 14339080265730885305, ; hash 0xc6fea587acb406b9, from name: libaot-System.Diagnostics.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 818
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 819
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 820
	%struct.DSOCacheEntry {
		i64 14395654623042501629, ; hash 0xc7c7a39bb3a87bfd, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 821
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 822
	%struct.DSOCacheEntry {
		i64 14447177743796000557, ; hash 0xc87eaf9d11e3d72d, from name: libaot-Uno.Foundation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-Uno.Foundation.dll.so
		ptr null; void* handle (0x0)
	}, ; 823
	%struct.DSOCacheEntry {
		i64 14462803528705013993, ; hash 0xc8b6332ea0ba78e9, from name: aot-System.Threading.Tasks.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 824
	%struct.DSOCacheEntry {
		i64 14465730964008673032, ; hash 0xc8c099ab461b1f08, from name: aot-Uno.UI.BindingHelper.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-Uno.UI.BindingHelper.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 825
	%struct.DSOCacheEntry {
		i64 14552637583844960886, ; hash 0xc9f55ac78213ea76, from name: libaot-Uno.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-Uno.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 826
	%struct.DSOCacheEntry {
		i64 14562678984415238708, ; hash 0xca190761441dda34, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 827
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 828
	%struct.DSOCacheEntry {
		i64 14622043554576106986, ; hash 0xcaebef2458cc85ea, from name: System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 829
	%struct.DSOCacheEntry {
		i64 14626410408635701964, ; hash 0xcafb72c5c9ce9acc, from name: aot-Microsoft.Extensions.Diagnostics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Diagnostics.dll.so
		ptr null; void* handle (0x0)
	}, ; 830
	%struct.DSOCacheEntry {
		i64 14667624749505042044, ; hash 0xcb8ddeff4cf9d67c, from name: aot-Uno.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-Uno.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 831
	%struct.DSOCacheEntry {
		i64 14690985099581930927, ; hash 0xcbe0dd1ca5233daf, from name: System.Web.HttpUtility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 832
	%struct.DSOCacheEntry {
		i64 14713405421650509891, ; hash 0xcc308446a9c90043, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 833
	%struct.DSOCacheEntry {
		i64 14726144688497773647, ; hash 0xcc5dc6925cea4c4f, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 834
	%struct.DSOCacheEntry {
		i64 14762328105337106929, ; hash 0xccde5332986231f1, from name: aot-Uno.Toolkit.WinUI.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-Uno.Toolkit.WinUI.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 835
	%struct.DSOCacheEntry {
		i64 14774794309616865412, ; hash 0xcd0a9d24f62d1084, from name: aot-Uno.Extensions.Navigation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Uno.Extensions.Navigation.dll.so
		ptr null; void* handle (0x0)
	}, ; 836
	%struct.DSOCacheEntry {
		i64 14793308678264731746, ; hash 0xcd4c63dd54ac3862, from name: libaot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 837
	%struct.DSOCacheEntry {
		i64 14795403873026468413, ; hash 0xcd53d56ee02e6a3d, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 838
	%struct.DSOCacheEntry {
		i64 14795805678016710373, ; hash 0xcd5542df63e4c6e5, from name: aot-Uno.Extensions.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Uno.Extensions.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 839
	%struct.DSOCacheEntry {
		i64 14797884060996115029, ; hash 0xcd5ca526a3169a55, from name: aot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 840
	%struct.DSOCacheEntry {
		i64 14808015954785261626, ; hash 0xcd80a40dfd4ad83a, from name: libaot-Uno.Extensions.Storage.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Uno.Extensions.Storage.dll.so
		ptr null; void* handle (0x0)
	}, ; 841
	%struct.DSOCacheEntry {
		i64 14833034687618711860, ; hash 0xcdd98675a88f8134, from name: libaot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 842
	%struct.DSOCacheEntry {
		i64 14848298015145851925, ; hash 0xce0fc06007e7fc15, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 843
	%struct.DSOCacheEntry {
		i64 14852025521463078876, ; hash 0xce1cfe85b9d7afdc, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 844
	%struct.DSOCacheEntry {
		i64 14896568121329360884, ; hash 0xcebb3dc7ec3e9ff4, from name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 845
	%struct.DSOCacheEntry {
		i64 14897085563595232120, ; hash 0xcebd146456b19378, from name: Uno.Core.Extensions.Equality.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Uno.Core.Extensions.Equality.dll.so
		ptr null; void* handle (0x0)
	}, ; 846
	%struct.DSOCacheEntry {
		i64 14912024704597522923, ; hash 0xcef22776276279eb, from name: libaot-Uno.Extensions.Serialization.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Uno.Extensions.Serialization.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 847
	%struct.DSOCacheEntry {
		i64 14918813585188930566, ; hash 0xcf0a45e997754406, from name: libaot-Uno.Extensions.Storage.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Uno.Extensions.Storage.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 848
	%struct.DSOCacheEntry {
		i64 14929951904236909252, ; hash 0xcf31d82795b532c4, from name: aot-System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 849
	%struct.DSOCacheEntry {
		i64 14937857240486681905, ; hash 0xcf4dee041cb49d31, from name: aot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 850
	%struct.DSOCacheEntry {
		i64 14956178634283043352, ; hash 0xcf8f053a05ba4a18, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 851
	%struct.DSOCacheEntry {
		i64 15024878362326791334, ; hash 0xd0831743ebf0f4a6, from name: System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 852
	%struct.DSOCacheEntry {
		i64 15053928356398764554, ; hash 0xd0ea4c14bd54120a, from name: aot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 853
	%struct.DSOCacheEntry {
		i64 15074836884257005195, ; hash 0xd1349446bd185e8b, from name: libaot-System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 854
	%struct.DSOCacheEntry {
		i64 15101927338945785474, ; hash 0xd194d2e6bd9fae82, from name: SkiaSharp.SceneGraph
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-SkiaSharp.SceneGraph.dll.so
		ptr null; void* handle (0x0)
	}, ; 855
	%struct.DSOCacheEntry {
		i64 15127553122569877007, ; hash 0xd1efdd6a6fa0f60f, from name: libaot-Uno.Extensions.Http.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Uno.Extensions.Http.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 856
	%struct.DSOCacheEntry {
		i64 15169277521300507936, ; hash 0xd28419890c6f4d20, from name: aot-System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 857
	%struct.DSOCacheEntry {
		i64 15212030046956336817, ; hash 0xd31bfcbb1d66b6b1, from name: libaot-System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 858
	%struct.DSOCacheEntry {
		i64 15225082071389566405, ; hash 0xd34a5b7a5d57f5c5, from name: aot-System.Resources.ResourceManager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 859
	%struct.DSOCacheEntry {
		i64 15226449680631151560, ; hash 0xd34f374fb4613bc8, from name: Uno.Extensions.Storage.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Uno.Extensions.Storage.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 860
	%struct.DSOCacheEntry {
		i64 15241652306130060418, ; hash 0xd3853a04c8e54482, from name: aot-System.Runtime.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 861
	%struct.DSOCacheEntry {
		i64 15259376815735202632, ; hash 0xd3c4325dc3ba6348, from name: aot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 862
	%struct.DSOCacheEntry {
		i64 15275473185398115273, ; hash 0xd3fd61eddfa8cbc9, from name: libaot-System.IO.FileSystem.Watcher.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 863
	%struct.DSOCacheEntry {
		i64 15287759098695794728, ; hash 0xd42907e6f9824028, from name: System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 864
	%struct.DSOCacheEntry {
		i64 15337749101053706843, ; hash 0xd4daa18b665f825b, from name: aot-Uno.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Uno.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 865
	%struct.DSOCacheEntry {
		i64 15340454584154540485, ; hash 0xd4e43e2ac58b49c5, from name: Uno.UI.Composition.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-Uno.UI.Composition.dll.so
		ptr null; void* handle (0x0)
	}, ; 866
	%struct.DSOCacheEntry {
		i64 15348282727708163003, ; hash 0xd5000dd2794efbbb, from name: aot-System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 867
	%struct.DSOCacheEntry {
		i64 15361183609531804313, ; hash 0xd52de31b17b22a99, from name: System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 868
	%struct.DSOCacheEntry {
		i64 15370028218478381000, ; hash 0xd54d4f3b162247c8, from name: Microsoft.Extensions.Localization.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Extensions.Localization.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 869
	%struct.DSOCacheEntry {
		i64 15371816955219117674, ; hash 0xd553aa13d029866a, from name: libaot-System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 870
	%struct.DSOCacheEntry {
		i64 15391712275433856905, ; hash 0xd59a58c406411f89, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 871
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 872
	%struct.DSOCacheEntry {
		i64 15402866408016801300, ; hash 0xd5c1f963e4a36e14, from name: Uno.Extensions.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Uno.Extensions.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 873
	%struct.DSOCacheEntry {
		i64 15422076159312007880, ; hash 0xd606388ea6d012c8, from name: libaot-Uno.Core.Extensions.Disposables.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-Uno.Core.Extensions.Disposables.dll.so
		ptr null; void* handle (0x0)
	}, ; 874
	%struct.DSOCacheEntry {
		i64 15422501938551467493, ; hash 0xd607bbcd1b222de5, from name: System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 875
	%struct.DSOCacheEntry {
		i64 15441728228412085485, ; hash 0xd64c0a028c9fd4ed, from name: libaot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 876
	%struct.DSOCacheEntry {
		i64 15463046201841099886, ; hash 0xd697c6980631246e, from name: libaot-Microsoft.Extensions.Logging.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.Extensions.Logging.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 877
	%struct.DSOCacheEntry {
		i64 15476609812571688208, ; hash 0xd6c7f6a03da90d10, from name: libaot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 878
	%struct.DSOCacheEntry {
		i64 15499187879247194549, ; hash 0xd7182d420991a9b5, from name: aot-Uno.Themes.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Uno.Themes.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 879
	%struct.DSOCacheEntry {
		i64 15503723175688157554, ; hash 0xd7284a1606e23972, from name: aot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 880
	%struct.DSOCacheEntry {
		i64 15508200808610002858, ; hash 0xd73832782e9ff7aa, from name: libaot-System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 881
	%struct.DSOCacheEntry {
		i64 15527772828719725935, ; hash 0xd77dbb1e38cd3d6f, from name: System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 882
	%struct.DSOCacheEntry {
		i64 15550489197484186488, ; hash 0xd7ce6f88fb981b78, from name: Uno.Extensions.Core.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Uno.Extensions.Core.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 883
	%struct.DSOCacheEntry {
		i64 15558326944329442161, ; hash 0xd7ea47eca0252371, from name: libaot-Microsoft.Extensions.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 884
	%struct.DSOCacheEntry {
		i64 15593231889514649202, ; hash 0xd86649c97ad05672, from name: libaot-Uno.Extensions.Hosting.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Uno.Extensions.Hosting.dll.so
		ptr null; void* handle (0x0)
	}, ; 885
	%struct.DSOCacheEntry {
		i64 15602862011767004647, ; hash 0xd88880550acf1de7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 886
	%struct.DSOCacheEntry {
		i64 15617887668700861200, ; hash 0xd8bde2166ade5310, from name: aot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 887
	%struct.DSOCacheEntry {
		i64 15619787930512100580, ; hash 0xd8c4a25d991b8ce4, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 888
	%struct.DSOCacheEntry {
		i64 15623255159237527798, ; hash 0xd8d0f3cab1a448f6, from name: Uno.Extensions.Localization.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Uno.Extensions.Localization.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 889
	%struct.DSOCacheEntry {
		i64 15668100459131072642, ; hash 0xd970465abba47082, from name: aot-Uno.Extensions.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Uno.Extensions.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 890
	%struct.DSOCacheEntry {
		i64 15686934220232282941, ; hash 0xd9b32f8f73dd533d, from name: libaot-Microsoft.Extensions.Diagnostics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Diagnostics.dll.so
		ptr null; void* handle (0x0)
	}, ; 891
	%struct.DSOCacheEntry {
		i64 15742342285542832975, ; hash 0xda7808e6f6643b4f, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 892
	%struct.DSOCacheEntry {
		i64 15747896856950463888, ; hash 0xda8bc4c16605dd90, from name: Uno.Fonts.Roboto
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Uno.Fonts.Roboto.dll.so
		ptr null; void* handle (0x0)
	}, ; 893
	%struct.DSOCacheEntry {
		i64 15763336660331019481, ; hash 0xdac29f2cc1ec3cd9, from name: libSkiaSharp.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 894
	%struct.DSOCacheEntry {
		i64 15814129912579445024, ; hash 0xdb77135e5f2d5120, from name: libaot-SkiaSharp.SceneGraph.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-SkiaSharp.SceneGraph.dll.so
		ptr null; void* handle (0x0)
	}, ; 895
	%struct.DSOCacheEntry {
		i64 15826022526504414146, ; hash 0xdba153a353a02bc2, from name: aot-Xamarin.AndroidX.Core.SplashScreen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		ptr null; void* handle (0x0)
	}, ; 896
	%struct.DSOCacheEntry {
		i64 15847727014260307913, ; hash 0xdbee6fc12e58f7c9, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 897
	%struct.DSOCacheEntry {
		i64 15849083565767285263, ; hash 0xdbf34187f10a5a0f, from name: aot-Microsoft.Extensions.Configuration.Binder
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.Extensions.Configuration.Binder.dll.so
		ptr null; void* handle (0x0)
	}, ; 898
	%struct.DSOCacheEntry {
		i64 15859050240082762136, ; hash 0xdc16aa2b2334d998, from name: libaot-Uno.Toolkit.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-Uno.Toolkit.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 899
	%struct.DSOCacheEntry {
		i64 15863946577159298302, ; hash 0xdc280f5c735a9cfe, from name: aot-Uno.Extensions.Core.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Uno.Extensions.Core.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 900
	%struct.DSOCacheEntry {
		i64 15869986477656553338, ; hash 0xdc3d849e5ef8b77a, from name: libaot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 901
	%struct.DSOCacheEntry {
		i64 15877362158028440773, ; hash 0xdc57b8c2c783c4c5, from name: Uno.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-Uno.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 902
	%struct.DSOCacheEntry {
		i64 15908591910761673656, ; hash 0xdcc6ac0e359a33b8, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 903
	%struct.DSOCacheEntry {
		i64 15915482068648965105, ; hash 0xdcdf269e1aebb3f1, from name: Microsoft.Extensions.Configuration.EnvironmentVariables
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		ptr null; void* handle (0x0)
	}, ; 904
	%struct.DSOCacheEntry {
		i64 15920910109220503623, ; hash 0xdcf26f6449038047, from name: System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 905
	%struct.DSOCacheEntry {
		i64 15927317453833871639, ; hash 0xdd0932d674a5a117, from name: libaot-Microsoft.Extensions.Configuration.FileExtensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 906
	%struct.DSOCacheEntry {
		i64 15964641699753034279, ; hash 0xdd8dcd0aa82b0227, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 907
	%struct.DSOCacheEntry {
		i64 15997847813046465227, ; hash 0xde03c5d36364f2cb, from name: Uno.Extensions.Storage.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Uno.Extensions.Storage.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 908
	%struct.DSOCacheEntry {
		i64 16003192683685867721, ; hash 0xde16c2f50f39f0c9, from name: Uno.Extensions.Reactive.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Uno.Extensions.Reactive.dll.so
		ptr null; void* handle (0x0)
	}, ; 909
	%struct.DSOCacheEntry {
		i64 16028674295501350649, ; hash 0xde714a5923cae6f9, from name: libaot-System.Runtime.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 910
	%struct.DSOCacheEntry {
		i64 16063734291401971715, ; hash 0xdeedd93a8d469803, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 911
	%struct.DSOCacheEntry {
		i64 16088198360481622984, ; hash 0xdf44c32b80876bc8, from name: UniversalImageLoader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-UniversalImageLoader.dll.so
		ptr null; void* handle (0x0)
	}, ; 912
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 913
	%struct.DSOCacheEntry {
		i64 16186580156264869966, ; hash 0xe0a248e4568df04e, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 914
	%struct.DSOCacheEntry {
		i64 16208402292834325832, ; hash 0xe0efd00271045548, from name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 915
	%struct.DSOCacheEntry {
		i64 16215129991522364183, ; hash 0xe107b6d0db792b17, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 916
	%struct.DSOCacheEntry {
		i64 16217712076265891113, ; hash 0xe110e3354f642529, from name: libmono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 917
	%struct.DSOCacheEntry {
		i64 16253390427661688581, ; hash 0xe18fa47ad4825f05, from name: libaot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 918
	%struct.DSOCacheEntry {
		i64 16254491453283163162, ; hash 0xe1938ddb5590dc1a, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 919
	%struct.DSOCacheEntry {
		i64 16273606707797624453, ; hash 0xe1d7771458b10685, from name: System.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 920
	%struct.DSOCacheEntry {
		i64 16296283324790586071, ; hash 0xe2280757ad43bad7, from name: Uno.Extensions.Serialization.Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Uno.Extensions.Serialization.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 921
	%struct.DSOCacheEntry {
		i64 16329114974302298891, ; hash 0xe29cab8dc3cce30b, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 922
	%struct.DSOCacheEntry {
		i64 16354813168604688526, ; hash 0xe2f7f7ece290308e, from name: aot-System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 923
	%struct.DSOCacheEntry {
		i64 16359895623217386732, ; hash 0xe30a0664105714ec, from name: libaot-System.Xml.XDocument
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 924
	%struct.DSOCacheEntry {
		i64 16370340268830916137, ; hash 0xe32f21bd9ff07e29, from name: System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 925
	%struct.DSOCacheEntry {
		i64 16377177043440272539, ; hash 0xe3476bc041f0849b, from name: aot-SkiaSharp.SceneGraph.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-SkiaSharp.SceneGraph.dll.so
		ptr null; void* handle (0x0)
	}, ; 926
	%struct.DSOCacheEntry {
		i64 16381697928620763692, ; hash 0xe3577b78dd316a2c, from name: aot-System.Xml.XDocument
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 927
	%struct.DSOCacheEntry {
		i64 16411908373586787849, ; hash 0xe3c2cfb635e63e09, from name: libaot-System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 928
	%struct.DSOCacheEntry {
		i64 16413721059704043258, ; hash 0xe3c940571601f6fa, from name: aot-System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 929
	%struct.DSOCacheEntry {
		i64 16477862173331498088, ; hash 0xe4ad2057db452468, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 930
	%struct.DSOCacheEntry {
		i64 16481900306254799575, ; hash 0xe4bb7900f1b822d7, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 931
	%struct.DSOCacheEntry {
		i64 16489970448331339899, ; hash 0xe4d824c1517a787b, from name: libaot-Uno.Extensions.Navigation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Uno.Extensions.Navigation.dll.so
		ptr null; void* handle (0x0)
	}, ; 932
	%struct.DSOCacheEntry {
		i64 16508394994773784608, ; hash 0xe51999c85353f820, from name: libaot-Uno.Toolkit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Uno.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 933
	%struct.DSOCacheEntry {
		i64 16558262036769511634, ; hash 0xe5cac397cf7b98d2, from name: Microsoft.Extensions.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 934
	%struct.DSOCacheEntry {
		i64 16577343910374837510, ; hash 0xe60e8e74b9608d06, from name: libSkiaSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libSkiaSharp.so
		ptr null; void* handle (0x0)
	}, ; 935
	%struct.DSOCacheEntry {
		i64 16618002788132358261, ; hash 0xe69f017d67148875, from name: libaot-Uno.Core.Extensions.Equality
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Uno.Core.Extensions.Equality.dll.so
		ptr null; void* handle (0x0)
	}, ; 936
	%struct.DSOCacheEntry {
		i64 16648892297579399389, ; hash 0xe70cbf55c4f508dd, from name: CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 937
	%struct.DSOCacheEntry {
		i64 16664416786714177775, ; hash 0xe743e6c69127b0ef, from name: aot-Microsoft.Extensions.Logging.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.Extensions.Logging.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 938
	%struct.DSOCacheEntry {
		i64 16684153842290013938, ; hash 0xe78a0585ebaa36f2, from name: SkiaSharp.Views.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-SkiaSharp.Views.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 939
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 940
	%struct.DSOCacheEntry {
		i64 16733100980842614628, ; hash 0xe837eaafb1dd4f64, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 941
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 942
	%struct.DSOCacheEntry {
		i64 16775064563344992829, ; hash 0xe8cd00579e6bea3d, from name: aot-Uno.Fonts.Roboto.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Uno.Fonts.Roboto.dll.so
		ptr null; void* handle (0x0)
	}, ; 943
	%struct.DSOCacheEntry {
		i64 16778162983708529344, ; hash 0xe8d80256d38e12c0, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 944
	%struct.DSOCacheEntry {
		i64 16789249482984759426, ; hash 0xe8ff657396b7a082, from name: libaot-Uno.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Uno.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 945
	%struct.DSOCacheEntry {
		i64 16793322498770776196, ; hash 0xe90dddd679ceb084, from name: Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 946
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 947
	%struct.DSOCacheEntry {
		i64 16812641203226435415, ; hash 0xe9528018de685f57, from name: libaot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 948
	%struct.DSOCacheEntry {
		i64 16815316975977795608, ; hash 0xe95c01b2c2c09018, from name: aot-Uno.UI.Adapter.Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 949
	%struct.DSOCacheEntry {
		i64 16818814240165112060, ; hash 0xe9686e710852a8fc, from name: aot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 950
	%struct.DSOCacheEntry {
		i64 16831427098943474553, ; hash 0xe9953dc50f68cb79, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 951
	%struct.DSOCacheEntry {
		i64 16836283848371485551, ; hash 0xe9a67ef527d43b6f, from name: System.Threading.Tasks.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 952
	%struct.DSOCacheEntry {
		i64 16839201194873792135, ; hash 0xe9b0dc44d1c92687, from name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		ptr null; void* handle (0x0)
	}, ; 953
	%struct.DSOCacheEntry {
		i64 16854830507031458252, ; hash 0xe9e8630ba106f1cc, from name: aot-Uno.Extensions.Http.Refit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Uno.Extensions.Http.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 954
	%struct.DSOCacheEntry {
		i64 16855015306063241933, ; hash 0xe9e90b1e81abe2cd, from name: aot-Uno.Core.Extensions.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Uno.Core.Extensions.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 955
	%struct.DSOCacheEntry {
		i64 16913431814627102754, ; hash 0xeab8949fcba39022, from name: aot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 956
	%struct.DSOCacheEntry {
		i64 16915258384925580769, ; hash 0xeabf11e1556fdde1, from name: Uno.Material.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Uno.Material.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 957
	%struct.DSOCacheEntry {
		i64 16924802110373038789, ; hash 0xeae0f9d912910ac5, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 958
	%struct.DSOCacheEntry {
		i64 16948040093346346617, ; hash 0xeb3388ab9afcb679, from name: System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 959
	%struct.DSOCacheEntry {
		i64 16967745026080341269, ; hash 0xeb798a33c6eb7d15, from name: aot-System.Threading.Tasks
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 960
	%struct.DSOCacheEntry {
		i64 16981765825737054331, ; hash 0xebab5a0b95ecd87b, from name: aot-Uno.Extensions.Http.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Uno.Extensions.Http.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 961
	%struct.DSOCacheEntry {
		i64 17008137082415910100, ; hash 0xec090a90408c8cd4, from name: System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 962
	%struct.DSOCacheEntry {
		i64 17040979769503905609, ; hash 0xec7db8d039e5f749, from name: libaot-Uno.Extensions.Serialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Uno.Extensions.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 963
	%struct.DSOCacheEntry {
		i64 17047433665992082296, ; hash 0xec94a699197e4378, from name: Microsoft.Extensions.Configuration.FileExtensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 964
	%struct.DSOCacheEntry {
		i64 17055547629728291761, ; hash 0xecb17a347fb5dbb1, from name: aot-System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 965
	%struct.DSOCacheEntry {
		i64 17062143951396181894, ; hash 0xecc8e986518c9786, from name: System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 966
	%struct.DSOCacheEntry {
		i64 17133180713992634266, ; hash 0xedc549157a1abf9a, from name: libaot-UniversalImageLoader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-UniversalImageLoader.dll.so
		ptr null; void* handle (0x0)
	}, ; 967
	%struct.DSOCacheEntry {
		i64 17145096810407974221, ; hash 0xedef9eb5e00cd54d, from name: aot-Uno.Extensions.Reactive.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Uno.Extensions.Reactive.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 968
	%struct.DSOCacheEntry {
		i64 17190907010335893176, ; hash 0xee925ed835d7e6b8, from name: aot-Uno.Core.Extensions.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-Uno.Core.Extensions.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 969
	%struct.DSOCacheEntry {
		i64 17205988430934219272, ; hash 0xeec7f35113509a08, from name: Microsoft.Extensions.FileSystemGlobbing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so
		ptr null; void* handle (0x0)
	}, ; 970
	%struct.DSOCacheEntry {
		i64 17230721278011714856, ; hash 0xef1fd1b5c7a72d28, from name: System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 971
	%struct.DSOCacheEntry {
		i64 17232502350579816344, ; hash 0xef2625960d64d798, from name: aot-Uno.Extensions.Serialization.Refit.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Uno.Extensions.Serialization.Refit.dll.so
		ptr null; void* handle (0x0)
	}, ; 972
	%struct.DSOCacheEntry {
		i64 17245589249618295297, ; hash 0xef54a40d2dcb3a01, from name: libaot-Uno.UI.FluentTheme
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-Uno.UI.FluentTheme.dll.so
		ptr null; void* handle (0x0)
	}, ; 973
	%struct.DSOCacheEntry {
		i64 17260702271250283638, ; hash 0xef8a5543bba6bc76, from name: System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 974
	%struct.DSOCacheEntry {
		i64 17307979906726032011, ; hash 0xf0324c060800f28b, from name: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 975
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 976
	%struct.DSOCacheEntry {
		i64 17317630548055557570, ; hash 0xf054953b104e05c2, from name: aot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 977
	%struct.DSOCacheEntry {
		i64 17328209431143309214, ; hash 0xf07a2aab38dedf9e, from name: libaot-Uno.Fonts.Roboto
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Uno.Fonts.Roboto.dll.so
		ptr null; void* handle (0x0)
	}, ; 978
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 979
	%struct.DSOCacheEntry {
		i64 17400986468793356184, ; hash 0xf17cb8ffbdce8f98, from name: aot-Uno.Extensions.Localization.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Uno.Extensions.Localization.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 980
	%struct.DSOCacheEntry {
		i64 17413454142804747506, ; hash 0xf1a904484e6e64f2, from name: aot-System.Diagnostics.Tools
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 981
	%struct.DSOCacheEntry {
		i64 17473883080302169638, ; hash 0xf27fb414b81e8e26, from name: libaot-Uno.Themes.WinUI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-Uno.Themes.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 982
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 983
	%struct.DSOCacheEntry {
		i64 17501557440705411739, ; hash 0xf2e205c3dd573a9b, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 984
	%struct.DSOCacheEntry {
		i64 17509666368860808140, ; hash 0xf2fed4cad38d63cc, from name: Xamarin.AndroidX.Core.SplashScreen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		ptr null; void* handle (0x0)
	}, ; 985
	%struct.DSOCacheEntry {
		i64 17519290824397243887, ; hash 0xf321062f00f545ef, from name: aot-Microsoft.Extensions.Logging.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.Extensions.Logging.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 986
	%struct.DSOCacheEntry {
		i64 17522546682042810800, ; hash 0xf32c975e6f5c81b0, from name: aot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		ptr null; void* handle (0x0)
	}, ; 987
	%struct.DSOCacheEntry {
		i64 17577202782581072989, ; hash 0xf3eec4cd80c0a45d, from name: System.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 988
	%struct.DSOCacheEntry {
		i64 17609972836565069669, ; hash 0xf46330fe43bd2f65, from name: aot-Uno.UI.Toolkit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-Uno.UI.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 989
	%struct.DSOCacheEntry {
		i64 17621652644066257425, ; hash 0xf48cafb75ce46a11, from name: libaot-System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 990
	%struct.DSOCacheEntry {
		i64 17623318455445168472, ; hash 0xf4929ac34c652158, from name: libaot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 991
	%struct.DSOCacheEntry {
		i64 17634962315631480230, ; hash 0xf4bbf8cac29d4da6, from name: aot-System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 992
	%struct.DSOCacheEntry {
		i64 17635985471660375247, ; hash 0xf4bf9b58d6443ccf, from name: Uno.Fonts.OpenSans.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Uno.Fonts.OpenSans.dll.so
		ptr null; void* handle (0x0)
	}, ; 993
	%struct.DSOCacheEntry {
		i64 17639262739183727563, ; hash 0xf4cb400124d473cb, from name: Uno.Diagnostics.Eventing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Uno.Diagnostics.Eventing.dll.so
		ptr null; void* handle (0x0)
	}, ; 994
	%struct.DSOCacheEntry {
		i64 17678238194885447556, ; hash 0xf555b7f994e3cf84, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 995
	%struct.DSOCacheEntry {
		i64 17685561362297413336, ; hash 0xf56fbc5b5d1c5ed8, from name: Uno.Toolkit
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-Uno.Toolkit.dll.so
		ptr null; void* handle (0x0)
	}, ; 996
	%struct.DSOCacheEntry {
		i64 17704177640604968747, ; hash 0xf5b1dfc36cac272b, from name: Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 997
	%struct.DSOCacheEntry {
		i64 17725651416025760223, ; hash 0xf5fe2a0c609d81df, from name: aot-System.Reflection.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 998
	%struct.DSOCacheEntry {
		i64 17743242089888636773, ; hash 0xf63ca8ac4b925f65, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 999
	%struct.DSOCacheEntry {
		i64 17771541739553677272, ; hash 0xf6a1330df11fdfd8, from name: aot-Uno.Extensions.Reactive
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Uno.Extensions.Reactive.dll.so
		ptr null; void* handle (0x0)
	}, ; 1000
	%struct.DSOCacheEntry {
		i64 17787024224463859773, ; hash 0xf6d8344ade6fb03d, from name: libaot-Uno.Extensions.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Uno.Extensions.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1001
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1002
	%struct.DSOCacheEntry {
		i64 17805432513571245261, ; hash 0xf7199a88ab9acccd, from name: aot-Uno.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-Uno.dll.so
		ptr null; void* handle (0x0)
	}, ; 1003
	%struct.DSOCacheEntry {
		i64 17836755953205038117, ; hash 0xf788e309481ecc25, from name: aot-Microsoft.Extensions.Configuration.EnvironmentVariables
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so
		ptr null; void* handle (0x0)
	}, ; 1004
	%struct.DSOCacheEntry {
		i64 17860386764028855539, ; hash 0xf7dcd7222d0744f3, from name: Uno.UI.Dispatching.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-Uno.UI.Dispatching.dll.so
		ptr null; void* handle (0x0)
	}, ; 1005
	%struct.DSOCacheEntry {
		i64 17914242430051000782, ; hash 0xf89c2c938f6ba1ce, from name: libaot-Uno.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-Uno.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1006
	%struct.DSOCacheEntry {
		i64 17920482996738314431, ; hash 0xf8b25856b803d0bf, from name: aot-Uno.Core.Extensions.Equality.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Uno.Core.Extensions.Equality.dll.so
		ptr null; void* handle (0x0)
	}, ; 1007
	%struct.DSOCacheEntry {
		i64 17935984482491575587, ; hash 0xf8e96adb9fd42d23, from name: aot-System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 1008
	%struct.DSOCacheEntry {
		i64 17936373173282875089, ; hash 0xf8eacc5ec05f26d1, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1009
	%struct.DSOCacheEntry {
		i64 17940524804072690014, ; hash 0xf8f98c419ed6515e, from name: libaot-Uno.Extensions.Navigation.Toolkit.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1010
	%struct.DSOCacheEntry {
		i64 17942753209644081272, ; hash 0xf90176fab955e078, from name: aot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1011
	%struct.DSOCacheEntry {
		i64 17951811262081050984, ; hash 0xf921a53ae732a968, from name: aot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so
		ptr null; void* handle (0x0)
	}, ; 1012
	%struct.DSOCacheEntry {
		i64 17952543475350759635, ; hash 0xf9243f2c9709e8d3, from name: aot-Uno.UI.FluentTheme.v1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-Uno.UI.FluentTheme.v1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1013
	%struct.DSOCacheEntry {
		i64 17966837238658391933, ; hash 0xf9570746b37e5f7d, from name: libaot-System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 1014
	%struct.DSOCacheEntry {
		i64 17993787845989681834, ; hash 0xf9b6c6b5f3f4caaa, from name: Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1015
	%struct.DSOCacheEntry {
		i64 18009788196303210532, ; hash 0xf9ef9ef1d0ad0824, from name: Uno.Extensions.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Uno.Extensions.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 1016
	%struct.DSOCacheEntry {
		i64 18025913125965088385, ; hash 0xfa28e87b91334681, from name: System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1017
	%struct.DSOCacheEntry {
		i64 18040554133168495475, ; hash 0xfa5cec66b2b69b73, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1018
	%struct.DSOCacheEntry {
		i64 18047428238759735039, ; hash 0xfa75585d20a0aeff, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1019
	%struct.DSOCacheEntry {
		i64 18051112112354944973, ; hash 0xfa826ed3c9aae7cd, from name: aot-System.Resources.ResourceManager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1020
	%struct.DSOCacheEntry {
		i64 18057033459698909374, ; hash 0xfa977842e6b240be, from name: libaot-System.Web.HttpUtility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1021
	%struct.DSOCacheEntry {
		i64 18066658939550349411, ; hash 0xfab9aa959208b863, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1022
	%struct.DSOCacheEntry {
		i64 18067072551421494559, ; hash 0xfabb22c316b0451f, from name: Uno.Extensions.Http.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Uno.Extensions.Http.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1023
	%struct.DSOCacheEntry {
		i64 18070580168630845293, ; hash 0xfac798ebdc75bf6d, from name: Uno.Diagnostics.Eventing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Uno.Diagnostics.Eventing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1024
	%struct.DSOCacheEntry {
		i64 18086360900563295465, ; hash 0xfaffa969d596dce9, from name: aot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1025
	%struct.DSOCacheEntry {
		i64 18145848498878603418, ; hash 0xfbd30111a3b6e09a, from name: libSystem.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 1026
	%struct.DSOCacheEntry {
		i64 18184133905358159931, ; hash 0xfc5b05717902803b, from name: libaot-Uno.Extensions.Localization.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Uno.Extensions.Localization.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1027
	%struct.DSOCacheEntry {
		i64 18216548572077619261, ; hash 0xfcce2e693055f83d, from name: Uno.Extensions.Logging.WinUI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Uno.Extensions.Logging.WinUI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1028
	%struct.DSOCacheEntry {
		i64 18226465753896977720, ; hash 0xfcf16a0903da0538, from name: libaot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1029
	%struct.DSOCacheEntry {
		i64 18230255841617913293, ; hash 0xfcfee119942025cd, from name: libaot-Uno.Extensions.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Uno.Extensions.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1030
	%struct.DSOCacheEntry {
		i64 18244606656330222332, ; hash 0xfd31dd17014a4afc, from name: libaot-Uno.Diagnostics.Eventing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Uno.Diagnostics.Eventing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1031
	%struct.DSOCacheEntry {
		i64 18256460941441234728, ; hash 0xfd5bfa7fd665f728, from name: Uno.UI.Lottie
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-Uno.UI.Lottie.dll.so
		ptr null; void* handle (0x0)
	}, ; 1032
	%struct.DSOCacheEntry {
		i64 18257096356770733190, ; hash 0xfd5e3c67ff65dc86, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 1033
	%struct.DSOCacheEntry {
		i64 18292328407895211277, ; hash 0xfddb67c523617d0d, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1034
	%struct.DSOCacheEntry {
		i64 18306284074023131206, ; hash 0xfe0cfc5fdd8a1846, from name: libaot-Uno.Extensions.Serialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Uno.Extensions.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1035
	%struct.DSOCacheEntry {
		i64 18309516218928916979, ; hash 0xfe1877fe3e82e9f3, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 1036
	%struct.DSOCacheEntry {
		i64 18311766861373607544, ; hash 0xfe2076f0c5f18e78, from name: aot-Uno.Fonts.OpenSans
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Uno.Fonts.OpenSans.dll.so
		ptr null; void* handle (0x0)
	}, ; 1037
	%struct.DSOCacheEntry {
		i64 18326780397005581920, ; hash 0xfe55cdabf01c2e60, from name: aot-CommonServiceLocator.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CommonServiceLocator.dll.so
		ptr null; void* handle (0x0)
	}, ; 1038
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1039
	%struct.DSOCacheEntry {
		i64 18333266604593944900, ; hash 0xfe6cd8d7d35a9944, from name: aot-Uno.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-Uno.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1040
	%struct.DSOCacheEntry {
		i64 18347920244245135731, ; hash 0xfea0e8402d6e0173, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1041
	%struct.DSOCacheEntry {
		i64 18350561708207496498, ; hash 0xfeaa4aa5ee97dd32, from name: System.Diagnostics.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1042
	%struct.DSOCacheEntry {
		i64 18377348929170574574, ; hash 0xff09757bd49e0cee, from name: aot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1043
	%struct.DSOCacheEntry {
		i64 18400295460575378824, ; hash 0xff5afb3b81d3fd88, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1044
	%struct.DSOCacheEntry {
		i64 18418229140929285389, ; hash 0xff9ab1d1d8d68d0d, from name: aot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1045
	%struct.DSOCacheEntry {
		i64 18430245465031233326, ; hash 0xffc5629a5270cf2e, from name: libaot-Uno
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-Uno.dll.so
		ptr null; void* handle (0x0)
	}, ; 1046
	%struct.DSOCacheEntry {
		i64 18441817052021859583, ; hash 0xffee7ee65e8124ff, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	} ; 1047
], align 16

; Bundled assembly name buffers, all empty (unused when assembly stores are enabled)
@bundled_assemblies = dso_local local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 8

@assembly_store_bundled_assemblies = dso_local local_unnamed_addr global [170 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 8

@assembly_stores = dso_local local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 8

; Strings
@.str.0 = private unnamed_addr constant [7 x i8] c"normal\00", align 1

; Application environment variables name:value pairs
@.env.0 = private unnamed_addr constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@.env.1 = private unnamed_addr constant [67 x i8] c"bridge-implementation=tarjan,nursery-size=32m,soft-heap-limit=256m\00", align 16
@.env.2 = private unnamed_addr constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 16
@.env.3 = private unnamed_addr constant [37 x i8] c"2014e31d-59ba-4f5f-85c6-9f5e0a237627\00", align 16
@.env.4 = private unnamed_addr constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 16
@.env.5 = private unnamed_addr constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 16
@.env.6 = private unnamed_addr constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 16
@.env.7 = private unnamed_addr constant [15 x i8] c"LowercaseCrc64\00", align 1

;ApplicationConfig
@.ApplicationConfig.0_android_package_name = private unnamed_addr constant [24 x i8] c"com.companyname.UnoApp1\00", align 16

;DSOCacheEntry
@.DSOCacheEntry.0_name = private unnamed_addr constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 16
@.DSOCacheEntry.1_name = private unnamed_addr constant [20 x i8] c"libSystem.Native.so\00", align 16
@.DSOCacheEntry.2_name = private unnamed_addr constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 16
@.DSOCacheEntry.3_name = private unnamed_addr constant [35 x i8] c"libmono-component-marshal-ilgen.so\00", align 16
@.DSOCacheEntry.4_name = private unnamed_addr constant [19 x i8] c"libmonosgen-2.0.so\00", align 16
@.DSOCacheEntry.5_name = private unnamed_addr constant [16 x i8] c"libmonodroid.so\00", align 16
@.DSOCacheEntry.6_name = private unnamed_addr constant [16 x i8] c"libSkiaSharp.so\00", align 16
@.DSOCacheEntry.7_name = private unnamed_addr constant [51 x i8] c"libaot-_Microsoft.Android.Resource.Designer.dll.so\00", align 16
@.DSOCacheEntry.8_name = private unnamed_addr constant [22 x i8] c"libaot-UnoApp1.dll.so\00", align 16
@.DSOCacheEntry.9_name = private unnamed_addr constant [35 x i8] c"libaot-CommonServiceLocator.dll.so\00", align 16
@.DSOCacheEntry.10_name = private unnamed_addr constant [36 x i8] c"libaot-CommunityToolkit.Mvvm.dll.so\00", align 16
@.DSOCacheEntry.11_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 16
@.DSOCacheEntry.12_name = private unnamed_addr constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.13_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Configuration.Binder.dll.so\00", align 16
@.DSOCacheEntry.14_name = private unnamed_addr constant [61 x i8] c"libaot-Microsoft.Extensions.Configuration.CommandLine.dll.so\00", align 16
@.DSOCacheEntry.15_name = private unnamed_addr constant [70 x i8] c"libaot-Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so\00", align 16
@.DSOCacheEntry.16_name = private unnamed_addr constant [64 x i8] c"libaot-Microsoft.Extensions.Configuration.FileExtensions.dll.so\00", align 16
@.DSOCacheEntry.17_name = private unnamed_addr constant [54 x i8] c"libaot-Microsoft.Extensions.Configuration.Json.dll.so\00", align 16
@.DSOCacheEntry.18_name = private unnamed_addr constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 16
@.DSOCacheEntry.19_name = private unnamed_addr constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.20_name = private unnamed_addr constant [47 x i8] c"libaot-Microsoft.Extensions.Diagnostics.dll.so\00", align 16
@.DSOCacheEntry.21_name = private unnamed_addr constant [60 x i8] c"libaot-Microsoft.Extensions.Diagnostics.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.22_name = private unnamed_addr constant [62 x i8] c"libaot-Microsoft.Extensions.FileProviders.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.23_name = private unnamed_addr constant [58 x i8] c"libaot-Microsoft.Extensions.FileProviders.Physical.dll.so\00", align 16
@.DSOCacheEntry.24_name = private unnamed_addr constant [54 x i8] c"libaot-Microsoft.Extensions.FileSystemGlobbing.dll.so\00", align 16
@.DSOCacheEntry.25_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Hosting.dll.so\00", align 16
@.DSOCacheEntry.26_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Hosting.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.27_name = private unnamed_addr constant [40 x i8] c"libaot-Microsoft.Extensions.Http.dll.so\00", align 16
@.DSOCacheEntry.28_name = private unnamed_addr constant [61 x i8] c"libaot-Microsoft.Extensions.Localization.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.29_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 16
@.DSOCacheEntry.30_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.31_name = private unnamed_addr constant [57 x i8] c"libaot-Microsoft.Extensions.Logging.Configuration.dll.so\00", align 16
@.DSOCacheEntry.32_name = private unnamed_addr constant [51 x i8] c"libaot-Microsoft.Extensions.Logging.Console.dll.so\00", align 16
@.DSOCacheEntry.33_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Logging.Debug.dll.so\00", align 16
@.DSOCacheEntry.34_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 16
@.DSOCacheEntry.35_name = private unnamed_addr constant [67 x i8] c"libaot-Microsoft.Extensions.Options.ConfigurationExtensions.dll.so\00", align 16
@.DSOCacheEntry.36_name = private unnamed_addr constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 16
@.DSOCacheEntry.37_name = private unnamed_addr constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 16
@.DSOCacheEntry.38_name = private unnamed_addr constant [20 x i8] c"libaot-Refit.dll.so\00", align 16
@.DSOCacheEntry.39_name = private unnamed_addr constant [38 x i8] c"libaot-Refit.HttpClientFactory.dll.so\00", align 16
@.DSOCacheEntry.40_name = private unnamed_addr constant [24 x i8] c"libaot-SkiaSharp.dll.so\00", align 16
@.DSOCacheEntry.41_name = private unnamed_addr constant [35 x i8] c"libaot-SkiaSharp.SceneGraph.dll.so\00", align 16
@.DSOCacheEntry.42_name = private unnamed_addr constant [32 x i8] c"libaot-SkiaSharp.Skottie.dll.so\00", align 16
@.DSOCacheEntry.43_name = private unnamed_addr constant [38 x i8] c"libaot-SkiaSharp.Views.Windows.dll.so\00", align 16
@.DSOCacheEntry.44_name = private unnamed_addr constant [32 x i8] c"libaot-System.Linq.Async.dll.so\00", align 16
@.DSOCacheEntry.45_name = private unnamed_addr constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 16
@.DSOCacheEntry.46_name = private unnamed_addr constant [34 x i8] c"libaot-Uno.Core.Extensions.dll.so\00", align 16
@.DSOCacheEntry.47_name = private unnamed_addr constant [46 x i8] c"libaot-Uno.Core.Extensions.Collections.dll.so\00", align 16
@.DSOCacheEntry.48_name = private unnamed_addr constant [46 x i8] c"libaot-Uno.Core.Extensions.Disposables.dll.so\00", align 16
@.DSOCacheEntry.49_name = private unnamed_addr constant [43 x i8] c"libaot-Uno.Core.Extensions.Equality.dll.so\00", align 16
@.DSOCacheEntry.50_name = private unnamed_addr constant [42 x i8] c"libaot-Uno.Core.Extensions.Logging.dll.so\00", align 16
@.DSOCacheEntry.51_name = private unnamed_addr constant [52 x i8] c"libaot-Uno.Core.Extensions.Logging.Singleton.dll.so\00", align 16
@.DSOCacheEntry.52_name = private unnamed_addr constant [39 x i8] c"libaot-Uno.Diagnostics.Eventing.dll.so\00", align 16
@.DSOCacheEntry.53_name = private unnamed_addr constant [43 x i8] c"libaot-Uno.Extensions.Configuration.dll.so\00", align 16
@.DSOCacheEntry.54_name = private unnamed_addr constant [34 x i8] c"libaot-Uno.Extensions.Core.dll.so\00", align 16
@.DSOCacheEntry.55_name = private unnamed_addr constant [37 x i8] c"libaot-Uno.Extensions.Core.UI.dll.so\00", align 16
@.DSOCacheEntry.56_name = private unnamed_addr constant [37 x i8] c"libaot-Uno.Extensions.Hosting.dll.so\00", align 16
@.DSOCacheEntry.57_name = private unnamed_addr constant [43 x i8] c"libaot-Uno.Extensions.Hosting.WinUI.dll.so\00", align 16
@.DSOCacheEntry.58_name = private unnamed_addr constant [34 x i8] c"libaot-Uno.Extensions.Http.dll.so\00", align 16
@.DSOCacheEntry.59_name = private unnamed_addr constant [40 x i8] c"libaot-Uno.Extensions.Http.Refit.dll.so\00", align 16
@.DSOCacheEntry.60_name = private unnamed_addr constant [40 x i8] c"libaot-Uno.Extensions.Http.WinUI.dll.so\00", align 16
@.DSOCacheEntry.61_name = private unnamed_addr constant [42 x i8] c"libaot-Uno.Extensions.Localization.dll.so\00", align 16
@.DSOCacheEntry.62_name = private unnamed_addr constant [48 x i8] c"libaot-Uno.Extensions.Localization.WinUI.dll.so\00", align 16
@.DSOCacheEntry.63_name = private unnamed_addr constant [43 x i8] c"libaot-Uno.Extensions.Logging.WinUI.dll.so\00", align 16
@.DSOCacheEntry.64_name = private unnamed_addr constant [40 x i8] c"libaot-Uno.Extensions.Navigation.dll.so\00", align 16
@.DSOCacheEntry.65_name = private unnamed_addr constant [51 x i8] c"libaot-Uno.Extensions.Navigation.Toolkit.UI.dll.so\00", align 16
@.DSOCacheEntry.66_name = private unnamed_addr constant [43 x i8] c"libaot-Uno.Extensions.Navigation.UI.dll.so\00", align 16
@.DSOCacheEntry.67_name = private unnamed_addr constant [38 x i8] c"libaot-Uno.Extensions.Reactive.dll.so\00", align 16
@.DSOCacheEntry.68_name = private unnamed_addr constant [48 x i8] c"libaot-Uno.Extensions.Reactive.Messaging.dll.so\00", align 16
@.DSOCacheEntry.69_name = private unnamed_addr constant [41 x i8] c"libaot-Uno.Extensions.Reactive.UI.dll.so\00", align 16
@.DSOCacheEntry.70_name = private unnamed_addr constant [43 x i8] c"libaot-Uno.Extensions.Serialization.dll.so\00", align 16
@.DSOCacheEntry.71_name = private unnamed_addr constant [48 x i8] c"libaot-Uno.Extensions.Serialization.Http.dll.so\00", align 16
@.DSOCacheEntry.72_name = private unnamed_addr constant [49 x i8] c"libaot-Uno.Extensions.Serialization.Refit.dll.so\00", align 16
@.DSOCacheEntry.73_name = private unnamed_addr constant [37 x i8] c"libaot-Uno.Extensions.Storage.dll.so\00", align 16
@.DSOCacheEntry.74_name = private unnamed_addr constant [40 x i8] c"libaot-Uno.Extensions.Storage.UI.dll.so\00", align 16
@.DSOCacheEntry.75_name = private unnamed_addr constant [31 x i8] c"libaot-Uno.Fonts.Fluent.dll.so\00", align 16
@.DSOCacheEntry.76_name = private unnamed_addr constant [33 x i8] c"libaot-Uno.Fonts.OpenSans.dll.so\00", align 16
@.DSOCacheEntry.77_name = private unnamed_addr constant [31 x i8] c"libaot-Uno.Fonts.Roboto.dll.so\00", align 16
@.DSOCacheEntry.78_name = private unnamed_addr constant [37 x i8] c"libaot-Uno.Foundation.Logging.dll.so\00", align 16
@.DSOCacheEntry.79_name = private unnamed_addr constant [33 x i8] c"libaot-Uno.Material.WinUI.dll.so\00", align 16
@.DSOCacheEntry.80_name = private unnamed_addr constant [31 x i8] c"libaot-Uno.Themes.WinUI.dll.so\00", align 16
@.DSOCacheEntry.81_name = private unnamed_addr constant [26 x i8] c"libaot-Uno.Toolkit.dll.so\00", align 16
@.DSOCacheEntry.82_name = private unnamed_addr constant [32 x i8] c"libaot-Uno.Toolkit.WinUI.dll.so\00", align 16
@.DSOCacheEntry.83_name = private unnamed_addr constant [41 x i8] c"libaot-Uno.Toolkit.WinUI.Material.dll.so\00", align 16
@.DSOCacheEntry.84_name = private unnamed_addr constant [58 x i8] c"libaot-Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so\00", align 16
@.DSOCacheEntry.85_name = private unnamed_addr constant [35 x i8] c"libaot-UniversalImageLoader.dll.so\00", align 16
@.DSOCacheEntry.86_name = private unnamed_addr constant [29 x i8] c"libaot-Uno.Foundation.dll.so\00", align 16
@.DSOCacheEntry.87_name = private unnamed_addr constant [43 x i8] c"libaot-Uno.UI.BindingHelper.Android.dll.so\00", align 16
@.DSOCacheEntry.88_name = private unnamed_addr constant [33 x i8] c"libaot-Uno.UI.Composition.dll.so\00", align 16
@.DSOCacheEntry.89_name = private unnamed_addr constant [33 x i8] c"libaot-Uno.UI.Dispatching.dll.so\00", align 16
@.DSOCacheEntry.90_name = private unnamed_addr constant [33 x i8] c"libaot-Uno.UI.FluentTheme.dll.so\00", align 16
@.DSOCacheEntry.91_name = private unnamed_addr constant [36 x i8] c"libaot-Uno.UI.FluentTheme.v1.dll.so\00", align 16
@.DSOCacheEntry.92_name = private unnamed_addr constant [36 x i8] c"libaot-Uno.UI.FluentTheme.v2.dll.so\00", align 16
@.DSOCacheEntry.93_name = private unnamed_addr constant [29 x i8] c"libaot-Uno.UI.Toolkit.dll.so\00", align 16
@.DSOCacheEntry.94_name = private unnamed_addr constant [21 x i8] c"libaot-Uno.UI.dll.so\00", align 16
@.DSOCacheEntry.95_name = private unnamed_addr constant [23 x i8] c"libaot-Uno.Xaml.dll.so\00", align 16
@.DSOCacheEntry.96_name = private unnamed_addr constant [18 x i8] c"libaot-Uno.dll.so\00", align 16
@.DSOCacheEntry.97_name = private unnamed_addr constant [28 x i8] c"libaot-Uno.UI.Lottie.dll.so\00", align 16
@.DSOCacheEntry.98_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 16
@.DSOCacheEntry.99_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 16
@.DSOCacheEntry.100_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 16
@.DSOCacheEntry.101_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Core.SplashScreen.dll.so\00", align 16
@.DSOCacheEntry.102_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 16
@.DSOCacheEntry.103_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 16
@.DSOCacheEntry.104_name = private unnamed_addr constant [52 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so\00", align 16
@.DSOCacheEntry.105_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 16
@.DSOCacheEntry.106_name = private unnamed_addr constant [59 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so\00", align 16
@.DSOCacheEntry.107_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 16
@.DSOCacheEntry.108_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 16
@.DSOCacheEntry.109_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 16
@.DSOCacheEntry.110_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 16
@.DSOCacheEntry.111_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 16
@.DSOCacheEntry.112_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 16
@.DSOCacheEntry.113_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 16
@.DSOCacheEntry.114_name = private unnamed_addr constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 16
@.DSOCacheEntry.115_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 16
@.DSOCacheEntry.116_name = private unnamed_addr constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 16
@.DSOCacheEntry.117_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 16
@.DSOCacheEntry.118_name = private unnamed_addr constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 16
@.DSOCacheEntry.119_name = private unnamed_addr constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 16
@.DSOCacheEntry.120_name = private unnamed_addr constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 16
@.DSOCacheEntry.121_name = private unnamed_addr constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 16
@.DSOCacheEntry.122_name = private unnamed_addr constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 16
@.DSOCacheEntry.123_name = private unnamed_addr constant [29 x i8] c"libaot-System.Console.dll.so\00", align 16
@.DSOCacheEntry.124_name = private unnamed_addr constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 16
@.DSOCacheEntry.125_name = private unnamed_addr constant [39 x i8] c"libaot-System.Diagnostics.Debug.dll.so\00", align 16
@.DSOCacheEntry.126_name = private unnamed_addr constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 16
@.DSOCacheEntry.127_name = private unnamed_addr constant [39 x i8] c"libaot-System.Diagnostics.Tools.dll.so\00", align 16
@.DSOCacheEntry.128_name = private unnamed_addr constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 16
@.DSOCacheEntry.129_name = private unnamed_addr constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 16
@.DSOCacheEntry.130_name = private unnamed_addr constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 16
@.DSOCacheEntry.131_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 16
@.DSOCacheEntry.132_name = private unnamed_addr constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 16
@.DSOCacheEntry.133_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.FileSystem.Watcher.dll.so\00", align 16
@.DSOCacheEntry.134_name = private unnamed_addr constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 16
@.DSOCacheEntry.135_name = private unnamed_addr constant [36 x i8] c"libaot-System.Linq.Queryable.dll.so\00", align 16
@.DSOCacheEntry.136_name = private unnamed_addr constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 16
@.DSOCacheEntry.137_name = private unnamed_addr constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 16
@.DSOCacheEntry.138_name = private unnamed_addr constant [35 x i8] c"libaot-System.Net.Http.Json.dll.so\00", align 16
@.DSOCacheEntry.139_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 16
@.DSOCacheEntry.140_name = private unnamed_addr constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 16
@.DSOCacheEntry.141_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 16
@.DSOCacheEntry.142_name = private unnamed_addr constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 16
@.DSOCacheEntry.143_name = private unnamed_addr constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 16
@.DSOCacheEntry.144_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 16
@.DSOCacheEntry.145_name = private unnamed_addr constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 16
@.DSOCacheEntry.146_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 16
@.DSOCacheEntry.147_name = private unnamed_addr constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 16
@.DSOCacheEntry.148_name = private unnamed_addr constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 16
@.DSOCacheEntry.149_name = private unnamed_addr constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 16
@.DSOCacheEntry.150_name = private unnamed_addr constant [47 x i8] c"libaot-System.Resources.ResourceManager.dll.so\00", align 16
@.DSOCacheEntry.151_name = private unnamed_addr constant [40 x i8] c"libaot-System.Runtime.Extensions.dll.so\00", align 16
@.DSOCacheEntry.152_name = private unnamed_addr constant [56 x i8] c"libaot-System.Runtime.InteropServices.JavaScript.dll.so\00", align 16
@.DSOCacheEntry.153_name = private unnamed_addr constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 16
@.DSOCacheEntry.154_name = private unnamed_addr constant [36 x i8] c"libaot-System.Runtime.Loader.dll.so\00", align 16
@.DSOCacheEntry.155_name = private unnamed_addr constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 16
@.DSOCacheEntry.156_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 16
@.DSOCacheEntry.157_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 16
@.DSOCacheEntry.158_name = private unnamed_addr constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 16
@.DSOCacheEntry.159_name = private unnamed_addr constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 16
@.DSOCacheEntry.160_name = private unnamed_addr constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 16
@.DSOCacheEntry.161_name = private unnamed_addr constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 16
@.DSOCacheEntry.162_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 16
@.DSOCacheEntry.163_name = private unnamed_addr constant [37 x i8] c"libaot-System.Threading.Tasks.dll.so\00", align 16
@.DSOCacheEntry.164_name = private unnamed_addr constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 16
@.DSOCacheEntry.165_name = private unnamed_addr constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 16
@.DSOCacheEntry.166_name = private unnamed_addr constant [37 x i8] c"libaot-System.Web.HttpUtility.dll.so\00", align 16
@.DSOCacheEntry.167_name = private unnamed_addr constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 16
@.DSOCacheEntry.168_name = private unnamed_addr constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 16
@.DSOCacheEntry.169_name = private unnamed_addr constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 16
@.DSOCacheEntry.170_name = private unnamed_addr constant [21 x i8] c"libaot-System.dll.so\00", align 16
@.DSOCacheEntry.171_name = private unnamed_addr constant [26 x i8] c"libaot-netstandard.dll.so\00", align 16
@.DSOCacheEntry.172_name = private unnamed_addr constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 16
@.DSOCacheEntry.173_name = private unnamed_addr constant [34 x i8] c"libaot-Mono.Android.Export.dll.so\00", align 16
@.DSOCacheEntry.174_name = private unnamed_addr constant [35 x i8] c"libaot-Mono.Android.Runtime.dll.so\00", align 16
@.DSOCacheEntry.175_name = private unnamed_addr constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 16
@.DSOCacheEntry.176_name = private unnamed_addr constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
