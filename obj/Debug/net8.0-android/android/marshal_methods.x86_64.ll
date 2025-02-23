; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [367 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [734 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 266
	i64 36418902923615093, ; 1: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 223
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 209
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 168
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 219
	i64 160518225272466977, ; 5: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 202
	i64 196720943101637631, ; 6: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 57
	i64 210515253464952879, ; 7: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 252
	i64 229794953483747371, ; 8: System.ValueTuple.dll => 0x330654aed93802b => 148
	i64 232391251801502327, ; 9: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 298
	i64 233177144301842968, ; 10: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 253
	i64 295915112840604065, ; 11: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 301
	i64 316157742385208084, ; 12: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 260
	i64 350667413455104241, ; 13: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 131
	i64 396868157601372792, ; 14: Microsoft.VisualStudio.DesignTools.TapContract => 0x581f57c947e5a78 => 365
	i64 422779754995088667, ; 15: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 55
	i64 435118502366263740, ; 16: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 300
	i64 435170709725415398, ; 17: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 320
	i64 535107122908063503, ; 18: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 207
	i64 545109961164950392, ; 19: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 336
	i64 560278790331054453, ; 20: System.Reflection.Primitives => 0x7c6829760de3975 => 94
	i64 592295183581559413, ; 21: Xamarin.AndroidX.Lifecycle.Common.Jvm => 0x8384154d38dba75 => 275
	i64 634308326490598313, ; 22: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 280
	i64 649145001856603771, ; 23: System.Security.SecureString => 0x90239f09b62167b => 128
	i64 687654259221141486, ; 24: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 318
	i64 750875890346172408, ; 25: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 142
	i64 798450721097591769, ; 26: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 254
	i64 799765834175365804, ; 27: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 28: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 339
	i64 870603111519317375, ; 29: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 228
	i64 872800313462103108, ; 30: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 265
	i64 895210737996778430, ; 31: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 282
	i64 940822596282819491, ; 32: System.Transactions => 0xd0e792aa81923a3 => 147
	i64 960778385402502048, ; 33: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 103
	i64 1001381392624924420, ; 34: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 174
	i64 1010599046655515943, ; 35: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 94
	i64 1120440138749646132, ; 36: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 313
	i64 1121665720830085036, ; 37: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 347
	i64 1268860745194512059, ; 38: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1301485588176585670, ; 39: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 227
	i64 1301626418029409250, ; 40: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 41: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 248
	i64 1326794923564391531, ; 42: Microsoft.AspNetCore.Authentication => 0x1269b8f40cd8dc6b => 171
	i64 1369545283391376210, ; 43: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 291
	i64 1404195534211153682, ; 44: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 49
	i64 1425944114962822056, ; 45: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 114
	i64 1476839205573959279, ; 46: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 69
	i64 1486715745332614827, ; 47: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 216
	i64 1492954217099365037, ; 48: System.Net.HttpListener => 0x14b809f350210aad => 64
	i64 1513467482682125403, ; 49: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 167
	i64 1518315023656898250, ; 50: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 229
	i64 1537168428375924959, ; 51: System.Threading.Thread.dll => 0x15551e8a954ae0df => 142
	i64 1556147632182429976, ; 52: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 345
	i64 1576750169145655260, ; 53: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 312
	i64 1624659445732251991, ; 54: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 247
	i64 1628611045998245443, ; 55: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 287
	i64 1636321030536304333, ; 56: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 273
	i64 1639340239664632727, ; 57: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 175
	i64 1651782184287836205, ; 58: System.Globalization.Calendars => 0x16ec4f2524cb982d => 39
	i64 1659332977923810219, ; 59: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 88
	i64 1672383392659050004, ; 60: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 188
	i64 1682513316613008342, ; 61: System.Net.dll => 0x17597cf276952bd6 => 80
	i64 1731380447121279447, ; 62: Newtonsoft.Json => 0x18071957e9b889d7 => 222
	i64 1735388228521408345, ; 63: System.Net.Mail.dll => 0x181556663c69b759 => 65
	i64 1743969030606105336, ; 64: System.Memory.dll => 0x1833d297e88f2af8 => 61
	i64 1767386781656293639, ; 65: System.Private.Uri.dll => 0x188704e9f5582107 => 85
	i64 1795316252682057001, ; 66: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 246
	i64 1825687700144851180, ; 67: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 105
	i64 1835311033149317475, ; 68: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 335
	i64 1836611346387731153, ; 69: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 298
	i64 1854145951182283680, ; 70: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 101
	i64 1875417405349196092, ; 71: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 72: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 243
	i64 1881198190668717030, ; 73: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 357
	i64 1897575647115118287, ; 74: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 300
	i64 1920760634179481754, ; 75: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 217
	i64 1959996714666907089, ; 76: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 357
	i64 1972385128188460614, ; 77: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 118
	i64 1981742497975770890, ; 78: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 284
	i64 1983698669889758782, ; 79: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 331
	i64 2019660174692588140, ; 80: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 349
	i64 2040001226662520565, ; 81: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 139
	i64 2062890601515140263, ; 82: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 138
	i64 2080945842184875448, ; 83: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 52
	i64 2102659300918482391, ; 84: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 85: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 138
	i64 2133195048986300728, ; 86: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 222
	i64 2165310824878145998, ; 87: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 240
	i64 2165725771938924357, ; 88: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 250
	i64 2181909669084996667, ; 89: SchoolApp.dll => 0x1e47b348a5cd243b => 0
	i64 2192948757939169934, ; 90: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 190
	i64 2200176636225660136, ; 91: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 206
	i64 2203565783020068373, ; 92: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 327
	i64 2262844636196693701, ; 93: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 265
	i64 2287834202362508563, ; 94: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 95: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 96: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 353
	i64 2304837677853103545, ; 97: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 297
	i64 2315304989185124968, ; 98: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 50
	i64 2329709569556905518, ; 99: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 277
	i64 2335503487726329082, ; 100: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 235
	i64 2337758774805907496, ; 101: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 100
	i64 2470498323731680442, ; 102: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 258
	i64 2479423007379663237, ; 103: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 307
	i64 2497223385847772520, ; 104: System.Runtime => 0x22a7eb7046413568 => 115
	i64 2547086958574651984, ; 105: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 241
	i64 2592350477072141967, ; 106: System.Xml.dll => 0x23f9e10627330e8f => 160
	i64 2602673633151553063, ; 107: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 356
	i64 2612152650457191105, ; 108: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 214
	i64 2624866290265602282, ; 109: mscorlib.dll => 0x246d65fbde2db8ea => 163
	i64 2632269733008246987, ; 110: System.Net.NameResolution => 0x2487b36034f808cb => 66
	i64 2656907746661064104, ; 111: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 197
	i64 2662981627730767622, ; 112: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 331
	i64 2706075432581334785, ; 113: System.Net.WebSockets => 0x258de944be6c0701 => 79
	i64 2783046991838674048, ; 114: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 100
	i64 2787234703088983483, ; 115: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 302
	i64 2789714023057451704, ; 116: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 212
	i64 2815524396660695947, ; 117: System.Security.AccessControl => 0x2712c0857f68238b => 116
	i64 2895129759130297543, ; 118: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 336
	i64 2923871038697555247, ; 119: Jsr305Binding => 0x2893ad37e69ec52f => 314
	i64 3017136373564924869, ; 120: System.Net.WebProxy => 0x29df058bd93f63c5 => 77
	i64 3017704767998173186, ; 121: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 313
	i64 3062772059105072826, ; 122: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0x2a8126f5e2f316ba => 364
	i64 3106852385031680087, ; 123: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 113
	i64 3110390492489056344, ; 124: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 120
	i64 3135773902340015556, ; 125: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 47
	i64 3168817962471953758, ; 126: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 202
	i64 3281594302220646930, ; 127: System.Security.Principal => 0x2d8a90a198ceba12 => 127
	i64 3289520064315143713, ; 128: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 274
	i64 3303437397778967116, ; 129: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 244
	i64 3311221304742556517, ; 130: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 81
	i64 3325875462027654285, ; 131: System.Runtime.Numerics => 0x2e27e21c8958b48d => 109
	i64 3328853167529574890, ; 132: System.Net.Sockets.dll => 0x2e327651a008c1ea => 74
	i64 3344514922410554693, ; 133: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 328
	i64 3396143930648122816, ; 134: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 201
	i64 3402534845034375023, ; 135: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 231
	i64 3411255996856937470, ; 136: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 319
	i64 3429672777697402584, ; 137: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 219
	i64 3437845325506641314, ; 138: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 52
	i64 3493805808809882663, ; 139: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 304
	i64 3494946837667399002, ; 140: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 195
	i64 3508450208084372758, ; 141: System.Net.Ping => 0x30b084e02d03ad16 => 68
	i64 3522470458906976663, ; 142: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 303
	i64 3523004241079211829, ; 143: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 194
	i64 3531994851595924923, ; 144: System.Numerics => 0x31042a9aade235bb => 82
	i64 3551103847008531295, ; 145: System.Private.CoreLib.dll => 0x31480e226177735f => 169
	i64 3567343442040498961, ; 146: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 351
	i64 3571415421602489686, ; 147: System.Runtime.dll => 0x319037675df7e556 => 115
	i64 3638003163729360188, ; 148: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 196
	i64 3647754201059316852, ; 149: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 153
	i64 3655542548057982301, ; 150: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 195
	i64 3659371656528649588, ; 151: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 238
	i64 3716579019761409177, ; 152: netstandard.dll => 0x3393f0ed5c8c5c99 => 164
	i64 3727469159507183293, ; 153: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 296
	i64 3772598417116884899, ; 154: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 266
	i64 3869221888984012293, ; 155: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 204
	i64 3869649043256705283, ; 156: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3890352374528606784, ; 157: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 217
	i64 3919223565570527920, ; 158: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 121
	i64 3933965368022646939, ; 159: System.Net.Requests => 0x369840a8bfadc09b => 71
	i64 3966267475168208030, ; 160: System.Memory => 0x370b03412596249e => 61
	i64 4005135229510678782, ; 161: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 178
	i64 4006972109285359177, ; 162: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 158
	i64 4009997192427317104, ; 163: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 112
	i64 4059240797296412435, ; 164: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 0x385551ff94a04713 => 283
	i64 4073500526318903918, ; 165: System.Private.Xml.dll => 0x3887fb25779ae26e => 87
	i64 4073631083018132676, ; 166: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 215
	i64 4120493066591692148, ; 167: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 362
	i64 4148881117810174540, ; 168: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 104
	i64 4154383907710350974, ; 169: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 170: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 143
	i64 4168469861834746866, ; 171: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 117
	i64 4187479170553454871, ; 172: System.Linq.Expressions => 0x3a1cea1e912fa117 => 57
	i64 4201423742386704971, ; 173: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 260
	i64 4205801962323029395, ; 174: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4225924121207573736, ; 175: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 172
	i64 4235503420553921860, ; 176: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 51
	i64 4243591448627561453, ; 177: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 183
	i64 4247996603072512073, ; 178: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 321
	i64 4250192876909962317, ; 179: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 179
	i64 4282138915307457788, ; 180: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 91
	i64 4321177614414309855, ; 181: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x3bf7e8254e88e9df => 364
	i64 4337444564132831293, ; 182: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 226
	i64 4356591372459378815, ; 183: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 359
	i64 4373617458794931033, ; 184: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 54
	i64 4388777479429739993, ; 185: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x3ce811dd63a4d5d9 => 363
	i64 4397634830160618470, ; 186: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 128
	i64 4477672992252076438, ; 187: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 149
	i64 4482826947393284255, ; 188: Microsoft.Bcl.Memory.dll => 0x3e36335b8cece89f => 187
	i64 4484706122338676047, ; 189: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 40
	i64 4513320955448359355, ; 190: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 191
	i64 4533124835995628778, ; 191: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 91
	i64 4612482779465751747, ; 192: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 190
	i64 4636684751163556186, ; 193: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 308
	i64 4672453897036726049, ; 194: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 49
	i64 4679594760078841447, ; 195: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 329
	i64 4716677666592453464, ; 196: System.Xml.XmlSerializer => 0x417501590542f358 => 159
	i64 4743821336939966868, ; 197: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 198: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 279
	i64 4794310189461587505, ; 199: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 241
	i64 4795410492532947900, ; 200: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 303
	i64 4809057822547766521, ; 201: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 202: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 66
	i64 4853321196694829351, ; 203: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 108
	i64 5055365687667823624, ; 204: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 242
	i64 5081566143765835342, ; 205: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 98
	i64 5099468265966638712, ; 206: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 98
	i64 5103417709280584325, ; 207: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5106322746114322454, ; 208: Microsoft.AspNetCore.Authentication.dll => 0x46dd4d7baea43016 => 171
	i64 5112836352847824253, ; 209: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 186
	i64 5129462924058778861, ; 210: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 188
	i64 5177565741364132164, ; 211: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 181
	i64 5182934613077526976, ; 212: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 213: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 289
	i64 5244375036463807528, ; 214: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 215: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 127
	i64 5278787618751394462, ; 216: System.Net.WebClient.dll => 0x4942055efc68329e => 75
	i64 5280980186044710147, ; 217: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 278
	i64 5290786973231294105, ; 218: System.Runtime.Loader => 0x496ca6b869b72699 => 108
	i64 5376510917114486089, ; 219: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 307
	i64 5408338804355907810, ; 220: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 305
	i64 5423376490970181369, ; 221: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 105
	i64 5440320908473006344, ; 222: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 223: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 224: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 256
	i64 5457765010617926378, ; 225: System.Xml.Serialization => 0x4bbde05c557002ea => 154
	i64 5471532531798518949, ; 226: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 355
	i64 5507995362134886206, ; 227: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 228: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 358
	i64 5527431512186326818, ; 229: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 48
	i64 5528247634813456972, ; 230: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 223
	i64 5570799893513421663, ; 231: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 42
	i64 5573260873512690141, ; 232: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 125
	i64 5574231584441077149, ; 233: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 245
	i64 5591791169662171124, ; 234: System.Linq.Parallel => 0x4d9a087135e137f4 => 58
	i64 5610815111739789596, ; 235: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 174
	i64 5650097808083101034, ; 236: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 118
	i64 5692067934154308417, ; 237: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 310
	i64 5724799082821825042, ; 238: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 269
	i64 5757522595884336624, ; 239: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 255
	i64 5765166532294674667, ; 240: Xamarin.KotlinX.AtomicFU.Jvm.dll => 0x5001fc6a7c6508eb => 325
	i64 5783556987928984683, ; 241: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 242: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 276
	i64 5959344983920014087, ; 243: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 299
	i64 5964735007727135521, ; 244: SchoolApp => 0x52c6fee312e9ab21 => 0
	i64 5979151488806146654, ; 245: System.Formats.Asn1 => 0x52fa3699a489d25e => 37
	i64 5984759512290286505, ; 246: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 123
	i64 6068057819846744445, ; 247: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 352
	i64 6102788177522843259, ; 248: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 299
	i64 6183170893902868313, ; 249: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 226
	i64 6200764641006662125, ; 250: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 352
	i64 6222399776351216807, ; 251: System.Text.Json.dll => 0x565a67a0ffe264a7 => 236
	i64 6251069312384999852, ; 252: System.Transactions.Local => 0x56c0426b870da1ac => 146
	i64 6278736998281604212, ; 253: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 84
	i64 6284145129771520194, ; 254: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 89
	i64 6319713645133255417, ; 255: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 280
	i64 6357457916754632952, ; 256: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 366
	i64 6401687960814735282, ; 257: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 277
	i64 6478287442656530074, ; 258: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 340
	i64 6504860066809920875, ; 259: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 250
	i64 6548213210057960872, ; 260: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 262
	i64 6557084851308642443, ; 261: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 311
	i64 6560151584539558821, ; 262: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 208
	i64 6571268269913383179, ; 263: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 0x5b31d5ace7fba10b => 283
	i64 6589202984700901502, ; 264: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 316
	i64 6591971792923354531, ; 265: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 278
	i64 6617685658146568858, ; 266: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 132
	i64 6713440830605852118, ; 267: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 95
	i64 6739853162153639747, ; 268: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 269: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 348
	i64 6772837112740759457, ; 270: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 104
	i64 6777482997383978746, ; 271: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 351
	i64 6786606130239981554, ; 272: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 273: System.Windows => 0x5e5884bd523ca188 => 151
	i64 6814185388980153342, ; 274: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 155
	i64 6876862101832370452, ; 275: System.Xml.Linq => 0x5f6f85a57d108914 => 152
	i64 6894844156784520562, ; 276: System.Numerics.Vectors => 0x5faf683aead1ad72 => 81
	i64 6911788284027924527, ; 277: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 180
	i64 6999232271162345813, ; 278: SQLiteNetExtensions => 0x612244aac7150955 => 225
	i64 7011053663211085209, ; 279: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 271
	i64 7060448593242414269, ; 280: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 234
	i64 7060896174307865760, ; 281: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 140
	i64 7083547580668757502, ; 282: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 86
	i64 7101497697220435230, ; 283: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 284: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 272
	i64 7105430439328552570, ; 285: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 233
	i64 7112547816752919026, ; 286: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 50
	i64 7192745174564810625, ; 287: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 240
	i64 7220009545223068405, ; 288: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 355
	i64 7270811800166795866, ; 289: System.Linq => 0x64e71ccf51a90a5a => 60
	i64 7299370801165188114, ; 290: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 53
	i64 7316205155833392065, ; 291: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7331765743953618630, ; 292: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 181
	i64 7338192458477945005, ; 293: System.Reflection => 0x65d67f295d0740ad => 96
	i64 7349431895026339542, ; 294: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 239
	i64 7377312882064240630, ; 295: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 296: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 152
	i64 7489048572193775167, ; 297: System.ObjectModel => 0x67ee71ff6b419e3f => 83
	i64 7496222613193209122, ; 298: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 231
	i64 7547171332664898270, ; 299: SQLiteNetExtensions.dll => 0x68bcf0572680b2de => 225
	i64 7592577537120840276, ; 300: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7637303409920963731, ; 301: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 44
	i64 7654504624184590948, ; 302: System.Net.Http => 0x6a3a4366801b8264 => 63
	i64 7694700312542370399, ; 303: System.Net.Mail => 0x6ac9112a7e2cda5f => 65
	i64 7708790323521193081, ; 304: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 346
	i64 7714652370974252055, ; 305: System.Private.CoreLib => 0x6b0ff375198b9c17 => 169
	i64 7725404731275645577, ; 306: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 282
	i64 7735176074855944702, ; 307: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 308: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 323
	i64 7791074099216502080, ; 309: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 46
	i64 7820441508502274321, ; 310: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 311: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 247
	i64 7919757340696389605, ; 312: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 200
	i64 7972383140441761405, ; 313: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 193
	i64 8025517457475554965, ; 314: WindowsBase => 0x6f605d9b4786ce95 => 162
	i64 8031450141206250471, ; 315: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 107
	i64 8064050204834738623, ; 316: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 317: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 274
	i64 8085230611270010360, ; 318: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 62
	i64 8087206902342787202, ; 319: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 230
	i64 8103644804370223335, ; 320: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 321: System.Reflection.Extensions => 0x70995ab73cf916ec => 92
	i64 8167236081217502503, ; 322: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 165
	i64 8185542183669246576, ; 323: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 324: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 326
	i64 8246048515196606205, ; 325: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 220
	i64 8264926008854159966, ; 326: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 327: System.Runtime.Extensions => 0x730ea0b15c929a72 => 102
	i64 8318905602908530212, ; 328: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 329: System.Security.Cryptography => 0x7423997c6fd56140 => 125
	i64 8398329775253868912, ; 330: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 257
	i64 8399132193771933415, ; 331: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 210
	i64 8400357532724379117, ; 332: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 293
	i64 8410671156615598628, ; 333: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 90
	i64 8426919725312979251, ; 334: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 279
	i64 8442828414178614895, ; 335: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0x752af3b5eeb0de6f => 176
	i64 8518412311883997971, ; 336: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 337: System.Private.Uri => 0x76d841191140ca5b => 85
	i64 8598790081731763592, ; 338: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 268
	i64 8601935802264776013, ; 339: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 305
	i64 8611142787134128904, ; 340: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 180
	i64 8614108721271900878, ; 341: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 350
	i64 8623059219396073920, ; 342: System.Net.Quic.dll => 0x77ab42ac514299c0 => 70
	i64 8626175481042262068, ; 343: Java.Interop => 0x77b654e585b55834 => 165
	i64 8638972117149407195, ; 344: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 345: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 292
	i64 8648495978913578441, ; 346: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 347: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 350
	i64 8684531736582871431, ; 348: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 43
	i64 8725526185868997716, ; 349: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 230
	i64 8823529091010338516, ; 350: Microsoft.Bcl.Memory => 0x7a7378f58eff1ed4 => 187
	i64 8941376889969657626, ; 351: System.Xml.XDocument => 0x7c1626e87187471a => 155
	i64 8951477988056063522, ; 352: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 295
	i64 8954753533646919997, ; 353: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 111
	i64 9031035476476434958, ; 354: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 327
	i64 9045785047181495996, ; 355: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 360
	i64 9111603110219107042, ; 356: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 194
	i64 9138683372487561558, ; 357: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 120
	i64 9250544137016314866, ; 358: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 189
	i64 9312692141327339315, ; 359: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 310
	i64 9324707631942237306, ; 360: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 246
	i64 9413000421947348542, ; 361: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 179
	i64 9427266486299436557, ; 362: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 213
	i64 9468215723722196442, ; 363: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 156
	i64 9508211702228543126, ; 364: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x83f3f42aa08b6696 => 176
	i64 9554839972845591462, ; 365: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 130
	i64 9575902398040817096, ; 366: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 315
	i64 9584643793929893533, ; 367: System.IO.dll => 0x85037ebfbbd7f69d => 56
	i64 9659729154652888475, ; 368: System.Text.RegularExpressions => 0x860e407c9991dd9b => 135
	i64 9662334977499516867, ; 369: System.Numerics.dll => 0x8617827802b0cfc3 => 82
	i64 9667360217193089419, ; 370: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9678050649315576968, ; 371: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 258
	i64 9702891218465930390, ; 372: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 373: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 312
	i64 9808709177481450983, ; 374: Mono.Android.dll => 0x881f890734e555e7 => 168
	i64 9814504515138190298, ; 375: Microsoft.AspNetCore.Authentication.Cookies => 0x88341fdb67477bda => 173
	i64 9825649861376906464, ; 376: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 255
	i64 9834056768316610435, ; 377: System.Transactions.dll => 0x8879968718899783 => 147
	i64 9836529246295212050, ; 378: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 93
	i64 9864374015518639636, ; 379: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 175
	i64 9864956466380592553, ; 380: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 192
	i64 9875200773399460291, ; 381: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 318
	i64 9907349773706910547, ; 382: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 268
	i64 9933555792566666578, ; 383: System.Linq.Queryable.dll => 0x89db145cf475c552 => 59
	i64 9956195530459977388, ; 384: Microsoft.Maui => 0x8a2b8315b36616ac => 218
	i64 9974604633896246661, ; 385: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 154
	i64 9991543690424095600, ; 386: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 335
	i64 10017511394021241210, ; 387: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 206
	i64 10038780035334861115, ; 388: System.Net.Http.dll => 0x8b50e941206af13b => 63
	i64 10051358222726253779, ; 389: System.Private.Xml => 0x8b7d990c97ccccd3 => 87
	i64 10078727084704864206, ; 390: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 78
	i64 10089571585547156312, ; 391: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 46
	i64 10092835686693276772, ; 392: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 216
	i64 10105485790837105934, ; 393: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 140
	i64 10143853363526200146, ; 394: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 332
	i64 10229024438826829339, ; 395: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 262
	i64 10236703004850800690, ; 396: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 73
	i64 10243523786148452761, ; 397: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 182
	i64 10245369515835430794, ; 398: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 90
	i64 10252714262739571204, ; 399: Microsoft.Maui.Controls.HotReload.Forms => 0x8e48f54cfe2c5204 => 363
	i64 10321854143672141184, ; 400: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 322
	i64 10360651442923773544, ; 401: System.Text.Encoding => 0x8fc86d98211c1e68 => 134
	i64 10364469296367737616, ; 402: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 89
	i64 10376576884623852283, ; 403: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 304
	i64 10376957530341161767, ; 404: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 0x90025be4f54cbb27 => 281
	i64 10406448008575299332, ; 405: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 328
	i64 10430153318873392755, ; 406: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 259
	i64 10485858537740568411, ; 407: Microsoft.AspNetCore.Identity => 0x918540c89b06075b => 185
	i64 10506226065143327199, ; 408: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 330
	i64 10539440363036643513, ; 409: Xamarin.KotlinX.AtomicFU.dll => 0x92439d2b7a3690b9 => 324
	i64 10546663366131771576, ; 410: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 111
	i64 10566960649245365243, ; 411: System.Globalization.dll => 0x92a562b96dcd13fb => 41
	i64 10595762989148858956, ; 412: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 156
	i64 10664060258477486268, ; 413: Xamarin.AndroidX.Lifecycle.Runtime.Android => 0x93fe5a4df1e930bc => 281
	i64 10670374202010151210, ; 414: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 415: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 102
	i64 10785150219063592792, ; 416: System.Net.Primitives => 0x95ac8cfb68830758 => 69
	i64 10811915265162633087, ; 417: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 191
	i64 10822644899632537592, ; 418: System.Linq.Queryable => 0x9631c23204ca5ff8 => 59
	i64 10830817578243619689, ; 419: System.Formats.Tar => 0x964ecb340a447b69 => 38
	i64 10847732767863316357, ; 420: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 248
	i64 10899834349646441345, ; 421: System.Web => 0x9743fd975946eb81 => 150
	i64 10943875058216066601, ; 422: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 55
	i64 10964653383833615866, ; 423: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 11002576679268595294, ; 424: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 205
	i64 11009005086950030778, ; 425: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 218
	i64 11019817191295005410, ; 426: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 245
	i64 11023048688141570732, ; 427: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 428: System.Xml => 0x992e31d0412bf7fc => 160
	i64 11050168729868392624, ; 429: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 184
	i64 11071824625609515081, ; 430: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 316
	i64 11103970607964515343, ; 431: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 341
	i64 11136029745144976707, ; 432: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 314
	i64 11162124722117608902, ; 433: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 309
	i64 11188319605227840848, ; 434: System.Threading.Overlapped => 0x9b44e5671724e550 => 137
	i64 11220793807500858938, ; 435: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 344
	i64 11226290749488709958, ; 436: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 208
	i64 11235648312900863002, ; 437: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 88
	i64 11293348803414341309, ; 438: Microsoft.AspNetCore.Identity.dll => 0x9cba08e6e81836bd => 185
	i64 11299661109949763898, ; 439: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 253
	i64 11329751333533450475, ; 440: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 144
	i64 11340910727871153756, ; 441: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 261
	i64 11347436699239206956, ; 442: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 159
	i64 11392833485892708388, ; 443: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 294
	i64 11398376662953476300, ; 444: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 192
	i64 11432101114902388181, ; 445: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 446: Mono.Android.Export => 0x9edabf8623efc131 => 166
	i64 11448276831755070604, ; 447: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 448: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 106
	i64 11508496261504176197, ; 449: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 271
	i64 11513602507638267977, ; 450: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 232
	i64 11517440453979132662, ; 451: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 211
	i64 11518296021396496455, ; 452: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 342
	i64 11529969570048099689, ; 453: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 309
	i64 11530571088791430846, ; 454: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 204
	i64 11580057168383206117, ; 455: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 243
	i64 11591352189662810718, ; 456: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 302
	i64 11597308262950669618, ; 457: Microsoft.Extensions.Identity.Core.dll => 0xa0f1ea6b83e08d32 => 203
	i64 11597940890313164233, ; 458: netstandard => 0xa0f429ca8d1805c9 => 164
	i64 11672361001936329215, ; 459: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 272
	i64 11675352430687308415, ; 460: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 0xa2072f2d529c4a7f => 275
	i64 11692977985522001935, ; 461: System.Threading.Overlapped.dll => 0xa245cd869980680f => 137
	i64 11705530742807338875, ; 462: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 338
	i64 11707554492040141440, ; 463: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 58
	i64 11739066727115742305, ; 464: SQLite-net.dll => 0xa2e98afdf8575c61 => 224
	i64 11743665907891708234, ; 465: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 141
	i64 11806260347154423189, ; 466: SQLite-net => 0xa3d8433bc5eb5d95 => 224
	i64 11837738194031363949, ; 467: Xamarin.KotlinX.AtomicFU => 0xa448182b1f50476d => 324
	i64 11991047634523762324, ; 468: System.Net => 0xa668c24ad493ae94 => 80
	i64 12040886584167504988, ; 469: System.Net.ServicePoint => 0xa719d28d8e121c5c => 73
	i64 12063623837170009990, ; 470: System.Security => 0xa76a99f6ce740786 => 129
	i64 12096697103934194533, ; 471: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 472: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 473: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 92
	i64 12137774235383566651, ; 474: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 306
	i64 12145679461940342714, ; 475: System.Text.Json => 0xa88e1f1ebcb62fba => 236
	i64 12191646537372739477, ; 476: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 237
	i64 12201331334810686224, ; 477: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 112
	i64 12269460666702402136, ; 478: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 479: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 229
	i64 12313367145828839434, ; 480: System.IO.Pipelines => 0xaae1de2e1c17f00a => 232
	i64 12332222936682028543, ; 481: System.Runtime.Handles => 0xab24db6c07db5dff => 103
	i64 12375446203996702057, ; 482: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 483: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 212
	i64 12441092376399691269, ; 484: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 172
	i64 12451044538927396471, ; 485: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 270
	i64 12466513435562512481, ; 486: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 288
	i64 12475113361194491050, ; 487: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 366
	i64 12487638416075308985, ; 488: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 264
	i64 12517810545449516888, ; 489: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12538491095302438457, ; 490: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 251
	i64 12550732019250633519, ; 491: System.IO.Compression => 0xae2d28465e8e1b2f => 45
	i64 12681088699309157496, ; 492: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 343
	i64 12699999919562409296, ; 493: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 494: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 252
	i64 12708238894395270091, ; 495: System.IO => 0xb05cbbf17d3ba3cb => 56
	i64 12708922737231849740, ; 496: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 133
	i64 12717050818822477433, ; 497: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 113
	i64 12753841065332862057, ; 498: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 311
	i64 12823819093633476069, ; 499: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 356
	i64 12835242264250840079, ; 500: System.IO.Pipes => 0xb21ff0d5d6c0740f => 54
	i64 12843321153144804894, ; 501: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 209
	i64 12843770487262409629, ; 502: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 503: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 76
	i64 12982280885948128408, ; 504: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 263
	i64 13068258254871114833, ; 505: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 110
	i64 13086625805112021739, ; 506: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 178
	i64 13129914918964716986, ; 507: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 267
	i64 13173818576982874404, ; 508: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 101
	i64 13221551921002590604, ; 509: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 330
	i64 13222659110913276082, ; 510: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 344
	i64 13343850469010654401, ; 511: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 167
	i64 13370592475155966277, ; 512: System.Runtime.Serialization => 0xb98de304062ea945 => 114
	i64 13381594904270902445, ; 513: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 338
	i64 13401370062847626945, ; 514: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 306
	i64 13404347523447273790, ; 515: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 257
	i64 13404984788036896679, ; 516: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 182
	i64 13431476299110033919, ; 517: System.Net.WebClient => 0xba663087f18829ff => 75
	i64 13454009404024712428, ; 518: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 317
	i64 13463706743370286408, ; 519: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 84
	i64 13465488254036897740, ; 520: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 323
	i64 13467053111158216594, ; 521: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 358
	i64 13491513212026656886, ; 522: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 249
	i64 13540124433173649601, ; 523: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 359
	i64 13545416393490209236, ; 524: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 342
	i64 13550417756503177631, ; 525: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 201
	i64 13572454107664307259, ; 526: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 296
	i64 13578472628727169633, ; 527: System.Xml.XPath => 0xbc706ce9fba5c261 => 157
	i64 13580399111273692417, ; 528: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 529: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 263
	i64 13647894001087880694, ; 530: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 531: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 242
	i64 13702626353344114072, ; 532: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 533: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 116
	i64 13713329104121190199, ; 534: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 535: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 536: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 337
	i64 13768883594457632599, ; 537: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 51
	i64 13814445057219246765, ; 538: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 340
	i64 13881769479078963060, ; 539: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 540: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 122
	i64 13921917134693230900, ; 541: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 186
	i64 13928444506500929300, ; 542: System.Windows.dll => 0xc14bc67b8bba9714 => 151
	i64 13955418299340266673, ; 543: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 199
	i64 13959074834287824816, ; 544: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 270
	i64 14075334701871371868, ; 545: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 130
	i64 14100563506285742564, ; 546: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 332
	i64 14124974489674258913, ; 547: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 251
	i64 14125464355221830302, ; 548: System.Threading.dll => 0xc407bafdbc707a9e => 145
	i64 14133832980772275001, ; 549: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 189
	i64 14178052285788134900, ; 550: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 238
	i64 14212104595480609394, ; 551: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 119
	i64 14220608275227875801, ; 552: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 553: System.ServiceProcess => 0xc56e43f6938e2a74 => 131
	i64 14232023429000439693, ; 554: System.Resources.Writer.dll => 0xc5824de7789ba78d => 99
	i64 14254574811015963973, ; 555: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 133
	i64 14261073672896646636, ; 556: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 294
	i64 14298246716367104064, ; 557: System.Web.dll => 0xc66d93a217f4e840 => 150
	i64 14327695147300244862, ; 558: System.Reflection.dll => 0xc6d632d338eb4d7e => 96
	i64 14327709162229390963, ; 559: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 124
	i64 14331727281556788554, ; 560: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 239
	i64 14346402571976470310, ; 561: System.Net.Ping.dll => 0xc718a920f3686f26 => 68
	i64 14461014870687870182, ; 562: System.Net.Requests.dll => 0xc8afd8683afdece6 => 71
	i64 14464374589798375073, ; 563: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 353
	i64 14486659737292545672, ; 564: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 276
	i64 14495724990987328804, ; 565: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 297
	i64 14522721392235705434, ; 566: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 334
	i64 14551742072151931844, ; 567: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 235
	i64 14561513370130550166, ; 568: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 123
	i64 14574160591280636898, ; 569: System.Net.Quic => 0xca41d1d72ec783e2 => 70
	i64 14622043554576106986, ; 570: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 110
	i64 14644440854989303794, ; 571: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 289
	i64 14669215534098758659, ; 572: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 197
	i64 14678510994762383812, ; 573: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 320
	i64 14690985099581930927, ; 574: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 149
	i64 14705122255218365489, ; 575: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 345
	i64 14744092281598614090, ; 576: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 361
	i64 14792063746108907174, ; 577: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 317
	i64 14795403873026468413, ; 578: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 0xcd53d56ee02e6a3d => 285
	i64 14832630590065248058, ; 579: System.Security.Claims => 0xcdd816ef5d6e873a => 117
	i64 14852515768018889994, ; 580: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 261
	i64 14889905118082851278, ; 581: GoogleGson.dll => 0xcea391d0969961ce => 170
	i64 14892012299694389861, ; 582: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 362
	i64 14904040806490515477, ; 583: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 329
	i64 14912225920358050525, ; 584: System.Security.Principal.Windows => 0xcef2de7759506add => 126
	i64 14935719434541007538, ; 585: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 132
	i64 14954917835170835695, ; 586: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 198
	i64 14984936317414011727, ; 587: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 76
	i64 14987728460634540364, ; 588: System.IO.Compression.dll => 0xcfff1ba06622494c => 45
	i64 14988210264188246988, ; 589: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 264
	i64 15015154896917945444, ; 590: System.Net.Security.dll => 0xd0608bd33642dc64 => 72
	i64 15024878362326791334, ; 591: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 62
	i64 15051741671811457419, ; 592: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 200
	i64 15071021337266399595, ; 593: System.Resources.Reader.dll => 0xd127060e7a18a96b => 97
	i64 15076659072870671916, ; 594: System.ObjectModel.dll => 0xd13b0d8c1620662c => 83
	i64 15111608613780139878, ; 595: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 346
	i64 15115185479366240210, ; 596: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 42
	i64 15133485256822086103, ; 597: System.Linq.dll => 0xd204f0a9127dd9d7 => 60
	i64 15138356091203993725, ; 598: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 211
	i64 15150743910298169673, ; 599: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 295
	i64 15164929985498817373, ; 600: Xamarin.KotlinX.AtomicFU.Jvm => 0xd274a7797d53a35d => 325
	i64 15227001540531775957, ; 601: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 196
	i64 15234786388537674379, ; 602: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 603: System.Globalization.Calendars.dll => 0xd3a489469852174e => 39
	i64 15255283452148687628, ; 604: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 0xd3b5a7794937a30c => 285
	i64 15272359115529052076, ; 605: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 254
	i64 15279429628684179188, ; 606: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 326
	i64 15299439993936780255, ; 607: System.Xml.XPath.dll => 0xd452879d55019bdf => 157
	i64 15338463749992804988, ; 608: System.Resources.Reader => 0xd4dd2b839286f27c => 97
	i64 15370334346939861994, ; 609: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 259
	i64 15391712275433856905, ; 610: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 198
	i64 15526743539506359484, ; 611: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 134
	i64 15527772828719725935, ; 612: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 613: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 64
	i64 15536481058354060254, ; 614: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 333
	i64 15541854775306130054, ; 615: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 124
	i64 15557562860424774966, ; 616: System.Net.Sockets => 0xd7e790fe7a6dc536 => 74
	i64 15565247197164990907, ; 617: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 183
	i64 15582737692548360875, ; 618: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 287
	i64 15609085926864131306, ; 619: System.dll => 0xd89e9cf3334914ea => 161
	i64 15620595871140898079, ; 620: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 199
	i64 15661133872274321916, ; 621: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 153
	i64 15664356999916475676, ; 622: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 333
	i64 15710114879900314733, ; 623: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 624: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 341
	i64 15755368083429170162, ; 625: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 48
	i64 15777549416145007739, ; 626: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 301
	i64 15783653065526199428, ; 627: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 334
	i64 15817206913877585035, ; 628: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 141
	i64 15847085070278954535, ; 629: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 136
	i64 15852824340364052161, ; 630: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 184
	i64 15885744048853936810, ; 631: System.Resources.Writer => 0xdc75800bd0b6eaaa => 99
	i64 15917157041579513718, ; 632: Microsoft.AspNetCore.Authentication.Cookies.dll => 0xdce519ff21745776 => 173
	i64 15928521404965645318, ; 633: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 215
	i64 15930129725311349754, ; 634: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 321
	i64 15934062614519587357, ; 635: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 122
	i64 15937190497610202713, ; 636: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 119
	i64 15963349826457351533, ; 637: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 139
	i64 15971679995444160383, ; 638: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 38
	i64 16018552496348375205, ; 639: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 67
	i64 16027684189145026053, ; 640: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 177
	i64 16046481083542319511, ; 641: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 207
	i64 16054465462676478687, ; 642: System.Globalization.Extensions => 0xdecceb47319bdadf => 40
	i64 16153500642854367575, ; 643: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 210
	i64 16154507427712707110, ; 644: System => 0xe03056ea4e39aa26 => 161
	i64 16219561732052121626, ; 645: System.Net.Security => 0xe1177575db7c781a => 72
	i64 16288847719894691167, ; 646: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 347
	i64 16315482530584035869, ; 647: WindowsBase.dll => 0xe26c3ceb1e8d821d => 162
	i64 16321164108206115771, ; 648: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 205
	i64 16337011941688632206, ; 649: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 126
	i64 16361933716545543812, ; 650: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 269
	i64 16454459195343277943, ; 651: System.Net.NetworkInformation => 0xe459fb756d988f77 => 67
	i64 16496768397145114574, ; 652: Mono.Android.Export.dll => 0xe4f04b741db987ce => 166
	i64 16523284800709429098, ; 653: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 177
	i64 16589693266713801121, ; 654: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 286
	i64 16621146507174665210, ; 655: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 256
	i64 16649148416072044166, ; 656: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 220
	i64 16677317093839702854, ; 657: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 293
	i64 16702652415771857902, ; 658: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 148
	i64 16709499819875633724, ; 659: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 44
	i64 16737807731308835127, ; 660: System.Runtime.Intrinsics => 0xe848a3736f733137 => 107
	i64 16755018182064898362, ; 661: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 227
	i64 16758309481308491337, ; 662: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 47
	i64 16762783179241323229, ; 663: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 95
	i64 16765015072123548030, ; 664: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16822611501064131242, ; 665: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 666: mscorlib => 0xe99c30c1484d7f4f => 163
	i64 16856067890322379635, ; 667: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 668: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 135
	i64 16933958494752847024, ; 669: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 77
	i64 16942731696432749159, ; 670: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 354
	i64 16977952268158210142, ; 671: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 53
	i64 16989020923549080504, ; 672: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 286
	i64 16998075588627545693, ; 673: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 291
	i64 17008137082415910100, ; 674: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 675: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 244
	i64 17026344819618783825, ; 676: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0xec49ba676cb0a251 => 365
	i64 17031351772568316411, ; 677: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 290
	i64 17037200463775726619, ; 678: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 273
	i64 17062143951396181894, ; 679: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 680: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 361
	i64 17118171214553292978, ; 681: System.Threading.Channels => 0xed8ff6060fc420b2 => 136
	i64 17126545051278881272, ; 682: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 221
	i64 17137864900836977098, ; 683: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 214
	i64 17187273293601214786, ; 684: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 685: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 686: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 121
	i64 17230721278011714856, ; 687: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 86
	i64 17234219099804750107, ; 688: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 146
	i64 17260702271250283638, ; 689: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 690: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 691: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 78
	i64 17342750010158924305, ; 692: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 339
	i64 17360349973592121190, ; 693: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 315
	i64 17438153253682247751, ; 694: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 354
	i64 17470386307322966175, ; 695: System.Threading.Timer => 0xf27347c8d0d5709f => 144
	i64 17509662556995089465, ; 696: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 79
	i64 17514990004910432069, ; 697: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 337
	i64 17522591619082469157, ; 698: GoogleGson => 0xf32cc03d27a5bf25 => 170
	i64 17590473451926037903, ; 699: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 237
	i64 17623389608345532001, ; 700: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 349
	i64 17627500474728259406, ; 701: System.Globalization => 0xf4a176498a351f4e => 41
	i64 17685921127322830888, ; 702: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 703: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 360
	i64 17704177640604968747, ; 704: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 288
	i64 17710060891934109755, ; 705: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 284
	i64 17712670374920797664, ; 706: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 106
	i64 17777860260071588075, ; 707: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 109
	i64 17790600151040787804, ; 708: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 213
	i64 17838668724098252521, ; 709: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 710: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 322
	i64 17910264068556501837, ; 711: Microsoft.Extensions.Identity.Core => 0xf88e0a4717c0b34d => 203
	i64 17911643751311784505, ; 712: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 221
	i64 17928294245072900555, ; 713: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 43
	i64 17986907704309214542, ; 714: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 319
	i64 17992315986609351877, ; 715: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 158
	i64 18017743553296241350, ; 716: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 193
	i64 18025913125965088385, ; 717: System.Threading => 0xfa28e87b91334681 => 145
	i64 18099568558057551825, ; 718: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 348
	i64 18116111925905154859, ; 719: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 249
	i64 18121036031235206392, ; 720: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 290
	i64 18146411883821974900, ; 721: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 37
	i64 18146811631844267958, ; 722: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18203743254473369877, ; 723: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 233
	i64 18225059387460068507, ; 724: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 143
	i64 18245806341561545090, ; 725: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 726: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 267
	i64 18305135509493619199, ; 727: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 292
	i64 18318849532986632368, ; 728: System.Security.dll => 0xfe39a097c37fa8b0 => 129
	i64 18324163916253801303, ; 729: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 343
	i64 18370042311372477656, ; 730: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 228
	i64 18380184030268848184, ; 731: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 308
	i64 18428404840311395189, ; 732: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 234
	i64 18439108438687598470 ; 733: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 93
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [734 x i32] [
	i32 266, ; 0
	i32 223, ; 1
	i32 209, ; 2
	i32 168, ; 3
	i32 219, ; 4
	i32 202, ; 5
	i32 57, ; 6
	i32 252, ; 7
	i32 148, ; 8
	i32 298, ; 9
	i32 253, ; 10
	i32 301, ; 11
	i32 260, ; 12
	i32 131, ; 13
	i32 365, ; 14
	i32 55, ; 15
	i32 300, ; 16
	i32 320, ; 17
	i32 207, ; 18
	i32 336, ; 19
	i32 94, ; 20
	i32 275, ; 21
	i32 280, ; 22
	i32 128, ; 23
	i32 318, ; 24
	i32 142, ; 25
	i32 254, ; 26
	i32 18, ; 27
	i32 339, ; 28
	i32 228, ; 29
	i32 265, ; 30
	i32 282, ; 31
	i32 147, ; 32
	i32 103, ; 33
	i32 174, ; 34
	i32 94, ; 35
	i32 313, ; 36
	i32 347, ; 37
	i32 35, ; 38
	i32 227, ; 39
	i32 27, ; 40
	i32 248, ; 41
	i32 171, ; 42
	i32 291, ; 43
	i32 49, ; 44
	i32 114, ; 45
	i32 69, ; 46
	i32 216, ; 47
	i32 64, ; 48
	i32 167, ; 49
	i32 229, ; 50
	i32 142, ; 51
	i32 345, ; 52
	i32 312, ; 53
	i32 247, ; 54
	i32 287, ; 55
	i32 273, ; 56
	i32 175, ; 57
	i32 39, ; 58
	i32 88, ; 59
	i32 188, ; 60
	i32 80, ; 61
	i32 222, ; 62
	i32 65, ; 63
	i32 61, ; 64
	i32 85, ; 65
	i32 246, ; 66
	i32 105, ; 67
	i32 335, ; 68
	i32 298, ; 69
	i32 101, ; 70
	i32 34, ; 71
	i32 243, ; 72
	i32 357, ; 73
	i32 300, ; 74
	i32 217, ; 75
	i32 357, ; 76
	i32 118, ; 77
	i32 284, ; 78
	i32 331, ; 79
	i32 349, ; 80
	i32 139, ; 81
	i32 138, ; 82
	i32 52, ; 83
	i32 34, ; 84
	i32 138, ; 85
	i32 222, ; 86
	i32 240, ; 87
	i32 250, ; 88
	i32 0, ; 89
	i32 190, ; 90
	i32 206, ; 91
	i32 327, ; 92
	i32 265, ; 93
	i32 8, ; 94
	i32 14, ; 95
	i32 353, ; 96
	i32 297, ; 97
	i32 50, ; 98
	i32 277, ; 99
	i32 235, ; 100
	i32 100, ; 101
	i32 258, ; 102
	i32 307, ; 103
	i32 115, ; 104
	i32 241, ; 105
	i32 160, ; 106
	i32 356, ; 107
	i32 214, ; 108
	i32 163, ; 109
	i32 66, ; 110
	i32 197, ; 111
	i32 331, ; 112
	i32 79, ; 113
	i32 100, ; 114
	i32 302, ; 115
	i32 212, ; 116
	i32 116, ; 117
	i32 336, ; 118
	i32 314, ; 119
	i32 77, ; 120
	i32 313, ; 121
	i32 364, ; 122
	i32 113, ; 123
	i32 120, ; 124
	i32 47, ; 125
	i32 202, ; 126
	i32 127, ; 127
	i32 274, ; 128
	i32 244, ; 129
	i32 81, ; 130
	i32 109, ; 131
	i32 74, ; 132
	i32 328, ; 133
	i32 201, ; 134
	i32 231, ; 135
	i32 319, ; 136
	i32 219, ; 137
	i32 52, ; 138
	i32 304, ; 139
	i32 195, ; 140
	i32 68, ; 141
	i32 303, ; 142
	i32 194, ; 143
	i32 82, ; 144
	i32 169, ; 145
	i32 351, ; 146
	i32 115, ; 147
	i32 196, ; 148
	i32 153, ; 149
	i32 195, ; 150
	i32 238, ; 151
	i32 164, ; 152
	i32 296, ; 153
	i32 266, ; 154
	i32 204, ; 155
	i32 31, ; 156
	i32 217, ; 157
	i32 121, ; 158
	i32 71, ; 159
	i32 61, ; 160
	i32 178, ; 161
	i32 158, ; 162
	i32 112, ; 163
	i32 283, ; 164
	i32 87, ; 165
	i32 215, ; 166
	i32 362, ; 167
	i32 104, ; 168
	i32 18, ; 169
	i32 143, ; 170
	i32 117, ; 171
	i32 57, ; 172
	i32 260, ; 173
	i32 17, ; 174
	i32 172, ; 175
	i32 51, ; 176
	i32 183, ; 177
	i32 321, ; 178
	i32 179, ; 179
	i32 91, ; 180
	i32 364, ; 181
	i32 226, ; 182
	i32 359, ; 183
	i32 54, ; 184
	i32 363, ; 185
	i32 128, ; 186
	i32 149, ; 187
	i32 187, ; 188
	i32 40, ; 189
	i32 191, ; 190
	i32 91, ; 191
	i32 190, ; 192
	i32 308, ; 193
	i32 49, ; 194
	i32 329, ; 195
	i32 159, ; 196
	i32 13, ; 197
	i32 279, ; 198
	i32 241, ; 199
	i32 303, ; 200
	i32 35, ; 201
	i32 66, ; 202
	i32 108, ; 203
	i32 242, ; 204
	i32 98, ; 205
	i32 98, ; 206
	i32 11, ; 207
	i32 171, ; 208
	i32 186, ; 209
	i32 188, ; 210
	i32 181, ; 211
	i32 11, ; 212
	i32 289, ; 213
	i32 25, ; 214
	i32 127, ; 215
	i32 75, ; 216
	i32 278, ; 217
	i32 108, ; 218
	i32 307, ; 219
	i32 305, ; 220
	i32 105, ; 221
	i32 2, ; 222
	i32 26, ; 223
	i32 256, ; 224
	i32 154, ; 225
	i32 355, ; 226
	i32 21, ; 227
	i32 358, ; 228
	i32 48, ; 229
	i32 223, ; 230
	i32 42, ; 231
	i32 125, ; 232
	i32 245, ; 233
	i32 58, ; 234
	i32 174, ; 235
	i32 118, ; 236
	i32 310, ; 237
	i32 269, ; 238
	i32 255, ; 239
	i32 325, ; 240
	i32 3, ; 241
	i32 276, ; 242
	i32 299, ; 243
	i32 0, ; 244
	i32 37, ; 245
	i32 123, ; 246
	i32 352, ; 247
	i32 299, ; 248
	i32 226, ; 249
	i32 352, ; 250
	i32 236, ; 251
	i32 146, ; 252
	i32 84, ; 253
	i32 89, ; 254
	i32 280, ; 255
	i32 366, ; 256
	i32 277, ; 257
	i32 340, ; 258
	i32 250, ; 259
	i32 262, ; 260
	i32 311, ; 261
	i32 208, ; 262
	i32 283, ; 263
	i32 316, ; 264
	i32 278, ; 265
	i32 132, ; 266
	i32 95, ; 267
	i32 3, ; 268
	i32 348, ; 269
	i32 104, ; 270
	i32 351, ; 271
	i32 32, ; 272
	i32 151, ; 273
	i32 155, ; 274
	i32 152, ; 275
	i32 81, ; 276
	i32 180, ; 277
	i32 225, ; 278
	i32 271, ; 279
	i32 234, ; 280
	i32 140, ; 281
	i32 86, ; 282
	i32 19, ; 283
	i32 272, ; 284
	i32 233, ; 285
	i32 50, ; 286
	i32 240, ; 287
	i32 355, ; 288
	i32 60, ; 289
	i32 53, ; 290
	i32 4, ; 291
	i32 181, ; 292
	i32 96, ; 293
	i32 239, ; 294
	i32 17, ; 295
	i32 152, ; 296
	i32 83, ; 297
	i32 231, ; 298
	i32 225, ; 299
	i32 28, ; 300
	i32 44, ; 301
	i32 63, ; 302
	i32 65, ; 303
	i32 346, ; 304
	i32 169, ; 305
	i32 282, ; 306
	i32 1, ; 307
	i32 323, ; 308
	i32 46, ; 309
	i32 24, ; 310
	i32 247, ; 311
	i32 200, ; 312
	i32 193, ; 313
	i32 162, ; 314
	i32 107, ; 315
	i32 12, ; 316
	i32 274, ; 317
	i32 62, ; 318
	i32 230, ; 319
	i32 23, ; 320
	i32 92, ; 321
	i32 165, ; 322
	i32 12, ; 323
	i32 326, ; 324
	i32 220, ; 325
	i32 28, ; 326
	i32 102, ; 327
	i32 14, ; 328
	i32 125, ; 329
	i32 257, ; 330
	i32 210, ; 331
	i32 293, ; 332
	i32 90, ; 333
	i32 279, ; 334
	i32 176, ; 335
	i32 9, ; 336
	i32 85, ; 337
	i32 268, ; 338
	i32 305, ; 339
	i32 180, ; 340
	i32 350, ; 341
	i32 70, ; 342
	i32 165, ; 343
	i32 1, ; 344
	i32 292, ; 345
	i32 5, ; 346
	i32 350, ; 347
	i32 43, ; 348
	i32 230, ; 349
	i32 187, ; 350
	i32 155, ; 351
	i32 295, ; 352
	i32 111, ; 353
	i32 327, ; 354
	i32 360, ; 355
	i32 194, ; 356
	i32 120, ; 357
	i32 189, ; 358
	i32 310, ; 359
	i32 246, ; 360
	i32 179, ; 361
	i32 213, ; 362
	i32 156, ; 363
	i32 176, ; 364
	i32 130, ; 365
	i32 315, ; 366
	i32 56, ; 367
	i32 135, ; 368
	i32 82, ; 369
	i32 29, ; 370
	i32 258, ; 371
	i32 10, ; 372
	i32 312, ; 373
	i32 168, ; 374
	i32 173, ; 375
	i32 255, ; 376
	i32 147, ; 377
	i32 93, ; 378
	i32 175, ; 379
	i32 192, ; 380
	i32 318, ; 381
	i32 268, ; 382
	i32 59, ; 383
	i32 218, ; 384
	i32 154, ; 385
	i32 335, ; 386
	i32 206, ; 387
	i32 63, ; 388
	i32 87, ; 389
	i32 78, ; 390
	i32 46, ; 391
	i32 216, ; 392
	i32 140, ; 393
	i32 332, ; 394
	i32 262, ; 395
	i32 73, ; 396
	i32 182, ; 397
	i32 90, ; 398
	i32 363, ; 399
	i32 322, ; 400
	i32 134, ; 401
	i32 89, ; 402
	i32 304, ; 403
	i32 281, ; 404
	i32 328, ; 405
	i32 259, ; 406
	i32 185, ; 407
	i32 330, ; 408
	i32 324, ; 409
	i32 111, ; 410
	i32 41, ; 411
	i32 156, ; 412
	i32 281, ; 413
	i32 4, ; 414
	i32 102, ; 415
	i32 69, ; 416
	i32 191, ; 417
	i32 59, ; 418
	i32 38, ; 419
	i32 248, ; 420
	i32 150, ; 421
	i32 55, ; 422
	i32 33, ; 423
	i32 205, ; 424
	i32 218, ; 425
	i32 245, ; 426
	i32 21, ; 427
	i32 160, ; 428
	i32 184, ; 429
	i32 316, ; 430
	i32 341, ; 431
	i32 314, ; 432
	i32 309, ; 433
	i32 137, ; 434
	i32 344, ; 435
	i32 208, ; 436
	i32 88, ; 437
	i32 185, ; 438
	i32 253, ; 439
	i32 144, ; 440
	i32 261, ; 441
	i32 159, ; 442
	i32 294, ; 443
	i32 192, ; 444
	i32 6, ; 445
	i32 166, ; 446
	i32 30, ; 447
	i32 106, ; 448
	i32 271, ; 449
	i32 232, ; 450
	i32 211, ; 451
	i32 342, ; 452
	i32 309, ; 453
	i32 204, ; 454
	i32 243, ; 455
	i32 302, ; 456
	i32 203, ; 457
	i32 164, ; 458
	i32 272, ; 459
	i32 275, ; 460
	i32 137, ; 461
	i32 338, ; 462
	i32 58, ; 463
	i32 224, ; 464
	i32 141, ; 465
	i32 224, ; 466
	i32 324, ; 467
	i32 80, ; 468
	i32 73, ; 469
	i32 129, ; 470
	i32 25, ; 471
	i32 7, ; 472
	i32 92, ; 473
	i32 306, ; 474
	i32 236, ; 475
	i32 237, ; 476
	i32 112, ; 477
	i32 9, ; 478
	i32 229, ; 479
	i32 232, ; 480
	i32 103, ; 481
	i32 19, ; 482
	i32 212, ; 483
	i32 172, ; 484
	i32 270, ; 485
	i32 288, ; 486
	i32 366, ; 487
	i32 264, ; 488
	i32 32, ; 489
	i32 251, ; 490
	i32 45, ; 491
	i32 343, ; 492
	i32 29, ; 493
	i32 252, ; 494
	i32 56, ; 495
	i32 133, ; 496
	i32 113, ; 497
	i32 311, ; 498
	i32 356, ; 499
	i32 54, ; 500
	i32 209, ; 501
	i32 6, ; 502
	i32 76, ; 503
	i32 263, ; 504
	i32 110, ; 505
	i32 178, ; 506
	i32 267, ; 507
	i32 101, ; 508
	i32 330, ; 509
	i32 344, ; 510
	i32 167, ; 511
	i32 114, ; 512
	i32 338, ; 513
	i32 306, ; 514
	i32 257, ; 515
	i32 182, ; 516
	i32 75, ; 517
	i32 317, ; 518
	i32 84, ; 519
	i32 323, ; 520
	i32 358, ; 521
	i32 249, ; 522
	i32 359, ; 523
	i32 342, ; 524
	i32 201, ; 525
	i32 296, ; 526
	i32 157, ; 527
	i32 2, ; 528
	i32 263, ; 529
	i32 24, ; 530
	i32 242, ; 531
	i32 31, ; 532
	i32 116, ; 533
	i32 36, ; 534
	i32 16, ; 535
	i32 337, ; 536
	i32 51, ; 537
	i32 340, ; 538
	i32 20, ; 539
	i32 122, ; 540
	i32 186, ; 541
	i32 151, ; 542
	i32 199, ; 543
	i32 270, ; 544
	i32 130, ; 545
	i32 332, ; 546
	i32 251, ; 547
	i32 145, ; 548
	i32 189, ; 549
	i32 238, ; 550
	i32 119, ; 551
	i32 27, ; 552
	i32 131, ; 553
	i32 99, ; 554
	i32 133, ; 555
	i32 294, ; 556
	i32 150, ; 557
	i32 96, ; 558
	i32 124, ; 559
	i32 239, ; 560
	i32 68, ; 561
	i32 71, ; 562
	i32 353, ; 563
	i32 276, ; 564
	i32 297, ; 565
	i32 334, ; 566
	i32 235, ; 567
	i32 123, ; 568
	i32 70, ; 569
	i32 110, ; 570
	i32 289, ; 571
	i32 197, ; 572
	i32 320, ; 573
	i32 149, ; 574
	i32 345, ; 575
	i32 361, ; 576
	i32 317, ; 577
	i32 285, ; 578
	i32 117, ; 579
	i32 261, ; 580
	i32 170, ; 581
	i32 362, ; 582
	i32 329, ; 583
	i32 126, ; 584
	i32 132, ; 585
	i32 198, ; 586
	i32 76, ; 587
	i32 45, ; 588
	i32 264, ; 589
	i32 72, ; 590
	i32 62, ; 591
	i32 200, ; 592
	i32 97, ; 593
	i32 83, ; 594
	i32 346, ; 595
	i32 42, ; 596
	i32 60, ; 597
	i32 211, ; 598
	i32 295, ; 599
	i32 325, ; 600
	i32 196, ; 601
	i32 36, ; 602
	i32 39, ; 603
	i32 285, ; 604
	i32 254, ; 605
	i32 326, ; 606
	i32 157, ; 607
	i32 97, ; 608
	i32 259, ; 609
	i32 198, ; 610
	i32 134, ; 611
	i32 20, ; 612
	i32 64, ; 613
	i32 333, ; 614
	i32 124, ; 615
	i32 74, ; 616
	i32 183, ; 617
	i32 287, ; 618
	i32 161, ; 619
	i32 199, ; 620
	i32 153, ; 621
	i32 333, ; 622
	i32 5, ; 623
	i32 341, ; 624
	i32 48, ; 625
	i32 301, ; 626
	i32 334, ; 627
	i32 141, ; 628
	i32 136, ; 629
	i32 184, ; 630
	i32 99, ; 631
	i32 173, ; 632
	i32 215, ; 633
	i32 321, ; 634
	i32 122, ; 635
	i32 119, ; 636
	i32 139, ; 637
	i32 38, ; 638
	i32 67, ; 639
	i32 177, ; 640
	i32 207, ; 641
	i32 40, ; 642
	i32 210, ; 643
	i32 161, ; 644
	i32 72, ; 645
	i32 347, ; 646
	i32 162, ; 647
	i32 205, ; 648
	i32 126, ; 649
	i32 269, ; 650
	i32 67, ; 651
	i32 166, ; 652
	i32 177, ; 653
	i32 286, ; 654
	i32 256, ; 655
	i32 220, ; 656
	i32 293, ; 657
	i32 148, ; 658
	i32 44, ; 659
	i32 107, ; 660
	i32 227, ; 661
	i32 47, ; 662
	i32 95, ; 663
	i32 30, ; 664
	i32 23, ; 665
	i32 163, ; 666
	i32 22, ; 667
	i32 135, ; 668
	i32 77, ; 669
	i32 354, ; 670
	i32 53, ; 671
	i32 286, ; 672
	i32 291, ; 673
	i32 10, ; 674
	i32 244, ; 675
	i32 365, ; 676
	i32 290, ; 677
	i32 273, ; 678
	i32 16, ; 679
	i32 361, ; 680
	i32 136, ; 681
	i32 221, ; 682
	i32 214, ; 683
	i32 13, ; 684
	i32 15, ; 685
	i32 121, ; 686
	i32 86, ; 687
	i32 146, ; 688
	i32 22, ; 689
	i32 33, ; 690
	i32 78, ; 691
	i32 339, ; 692
	i32 315, ; 693
	i32 354, ; 694
	i32 144, ; 695
	i32 79, ; 696
	i32 337, ; 697
	i32 170, ; 698
	i32 237, ; 699
	i32 349, ; 700
	i32 41, ; 701
	i32 26, ; 702
	i32 360, ; 703
	i32 288, ; 704
	i32 284, ; 705
	i32 106, ; 706
	i32 109, ; 707
	i32 213, ; 708
	i32 7, ; 709
	i32 322, ; 710
	i32 203, ; 711
	i32 221, ; 712
	i32 43, ; 713
	i32 319, ; 714
	i32 158, ; 715
	i32 193, ; 716
	i32 145, ; 717
	i32 348, ; 718
	i32 249, ; 719
	i32 290, ; 720
	i32 37, ; 721
	i32 15, ; 722
	i32 233, ; 723
	i32 143, ; 724
	i32 8, ; 725
	i32 267, ; 726
	i32 292, ; 727
	i32 129, ; 728
	i32 343, ; 729
	i32 228, ; 730
	i32 308, ; 731
	i32 234, ; 732
	i32 93 ; 733
], align 16

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

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
