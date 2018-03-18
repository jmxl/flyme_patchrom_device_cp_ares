.class public Landroid/app/ZsAppOpsUtils;
.super Ljava/lang/Object;
.source "ZsAppOpsUtils.java"


# static fields
.field public static DEFAULT_ALLOW_APP_USE_LOCATION:[Ljava/lang/String; = null

.field private static final PATH_PACKAGES_FILTER:Ljava/lang/String; = "/data/system/permission_default_config.xml"

.field public static SPECIAL_APP_USE_AUDIO:[Ljava/lang/String; = null

.field public static SPECIAL_APP_USE_CAMERA:[Ljava/lang/String; = null

.field public static SPECIAL_APP_USE_LOCATION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ZsAppOpsUtils"

.field public static TYPE_ALL_PHONE_OPS:[I

.field public static TYPE_ALL_SMS_OPS:[I

.field public static TYPE_CALENDAR_OPS:[I

.field public static TYPE_CALENDAR_PERMS:[Ljava/lang/String;

.field public static TYPE_CALL_LOG_OPS:[I

.field public static TYPE_CALL_LOG_PERMS:[Ljava/lang/String;

.field public static TYPE_CALL_PHONE_OPS:[I

.field public static TYPE_CALL_PHONE_PERMS:[Ljava/lang/String;

.field public static TYPE_CAMERA_OPS:[I

.field public static TYPE_CAMERA_PERMS:[Ljava/lang/String;

.field public static TYPE_CHANGE_BLUETOOTH_OPS:[I

.field public static TYPE_CHANGE_BLUETOOTH_PERMS:[Ljava/lang/String;

.field public static TYPE_CHANGE_DATACONNECT_OPS:[I

.field public static TYPE_CHANGE_DATACONNECT_PERMS:[Ljava/lang/String;

.field public static TYPE_CHANGE_WIFI_OPS:[I

.field public static TYPE_CHANGE_WIFI_PERMS:[Ljava/lang/String;

.field public static TYPE_CONTACT_LOG_OPS:[I

.field public static TYPE_CONTACT_LOG_PERMS:[Ljava/lang/String;

.field public static TYPE_LOCATION_OPS:[I

.field public static TYPE_LOCATION_PERMS:[Ljava/lang/String;

.field public static TYPE_MMS_LOG_OPS:[I

.field public static TYPE_MMS_LOG_PERMS:[Ljava/lang/String;

.field public static TYPE_NFC_OPS:[I

.field public static TYPE_NFC_PERMS:[Ljava/lang/String;

.field public static TYPE_PHONE_INFO_OPS:[I

.field public static TYPE_PHONE_INFO_PERMS:[Ljava/lang/String;

.field public static TYPE_READ_MMS_LOG_OPS:[I

.field public static TYPE_READ_MMS_LOG_PERMS:[Ljava/lang/String;

.field public static TYPE_READ_SMS_LOG_OPS:[I

.field public static TYPE_READ_SMS_LOG_PERMS:[Ljava/lang/String;

.field public static TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I

.field public static TYPE_RECEIVE_BOOT_COMPLETED_PERMS:[Ljava/lang/String;

.field public static TYPE_RECEIVE_SMS_OPS:[I

.field public static TYPE_RECEIVE_SMS_PERMS:[Ljava/lang/String;

.field public static TYPE_RECORD_AUDIO_OPS:[I

.field public static TYPE_RECORD_AUDIO_PERMS:[Ljava/lang/String;

.field public static TYPE_SEND_MMS_OPS:[I

.field public static TYPE_SEND_MMS_PERMS:[Ljava/lang/String;

.field public static TYPE_SEND_SMS_OPS:[I

.field public static TYPE_SEND_SMS_PERMS:[Ljava/lang/String;

.field public static TYPE_SMS_LOG_OPS:[I

.field public static TYPE_SMS_LOG_PERMS:[Ljava/lang/String;

.field public static TYPE_STORAGE_OPS:[I

.field public static TYPE_STORAGE_PERMS:[Ljava/lang/String;

.field public static TYPE_THREE_WAY_CALLING_OPS:[I

.field public static TYPE_WRITE_MMS_LOG_OPS:[I

.field public static TYPE_WRITE_MMS_LOG_PERMS:[Ljava/lang/String;

.field public static TYPE_WRITE_SMS_LOG_OPS:[I

.field public static TYPE_WRITE_SMS_LOG_PERMS:[Ljava/lang/String;

.field private static mFile:Ljava/io/File;

.field private static mPackagesUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aom:Landroid/app/AppOpsManager;

.field public isFirst:Z

.field private mContext:Landroid/content/Context;

.field public packageName:Ljava/lang/String;

.field pm:Landroid/content/pm/PackageManager;

.field res:Landroid/content/res/Resources;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->mFile:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ZsAppOpsUtils;->mPackagesUsed:Ljava/util/ArrayList;

    .line 51
    new-array v0, v8, [Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    .line 53
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v5

    .line 54
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v6

    .line 51
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_PERMS:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v4

    .line 69
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v5

    .line 67
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CONTACT_LOG_PERMS:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    .line 74
    const/4 v1, 0x5

    .line 72
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CONTACT_LOG_OPS:[I

    .line 77
    new-array v0, v6, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v4

    .line 79
    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v5

    .line 77
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALL_LOG_PERMS:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x7

    .line 82
    filled-new-array {v7, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALL_LOG_OPS:[I

    .line 87
    new-array v0, v6, [Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v4

    .line 89
    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v5

    .line 87
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALENDAR_PERMS:[Ljava/lang/String;

    .line 93
    const/16 v0, 0x8

    .line 94
    const/16 v1, 0x9

    .line 92
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALENDAR_OPS:[I

    .line 97
    new-array v0, v5, [Ljava/lang/String;

    .line 98
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v4

    .line 97
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALL_PHONE_PERMS:[Ljava/lang/String;

    .line 101
    new-array v0, v5, [I

    .line 102
    const/16 v1, 0xd

    aput v1, v0, v4

    .line 101
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CALL_PHONE_OPS:[I

    .line 105
    new-array v0, v6, [Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    .line 107
    const-string/jumbo v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v5

    .line 105
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_SMS_LOG_PERMS:[Ljava/lang/String;

    .line 111
    const/16 v0, 0xe

    .line 112
    const/16 v1, 0x15

    .line 113
    const/16 v2, 0xf

    .line 114
    const/16 v3, 0x16

    .line 110
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_SMS_LOG_OPS:[I

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    .line 117
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_PERMS:[Ljava/lang/String;

    .line 122
    const/16 v0, 0xe

    .line 123
    const/16 v1, 0x15

    .line 121
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_READ_SMS_LOG_OPS:[I

    .line 128
    new-array v0, v5, [Ljava/lang/String;

    .line 129
    const-string/jumbo v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v4

    .line 128
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_WRITE_SMS_LOG_PERMS:[Ljava/lang/String;

    .line 133
    const/16 v0, 0xf

    .line 134
    const/16 v1, 0x16

    .line 132
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_WRITE_SMS_LOG_OPS:[I

    .line 137
    new-array v0, v6, [Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    .line 139
    const-string/jumbo v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v5

    .line 137
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_MMS_LOG_PERMS:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x45

    .line 143
    const/16 v1, 0x46

    .line 141
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_MMS_LOG_OPS:[I

    .line 147
    new-array v0, v5, [Ljava/lang/String;

    .line 148
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    .line 147
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_READ_MMS_LOG_PERMS:[Ljava/lang/String;

    .line 150
    new-array v0, v5, [I

    .line 151
    const/16 v1, 0x45

    aput v1, v0, v4

    .line 150
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_READ_MMS_LOG_OPS:[I

    .line 154
    new-array v0, v5, [Ljava/lang/String;

    .line 156
    const-string/jumbo v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v4

    .line 154
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_WRITE_MMS_LOG_PERMS:[Ljava/lang/String;

    .line 158
    new-array v0, v5, [I

    .line 159
    const/16 v1, 0x46

    aput v1, v0, v4

    .line 158
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_WRITE_MMS_LOG_OPS:[I

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 163
    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    .line 164
    const-string/jumbo v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v1, v0, v5

    .line 165
    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v0, v6

    .line 166
    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v1, v0, v8

    .line 162
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_RECEIVE_SMS_PERMS:[Ljava/lang/String;

    .line 170
    const/16 v0, 0x10

    .line 171
    const/16 v1, 0x11

    .line 172
    const/16 v2, 0x12

    .line 173
    const/16 v3, 0x13

    .line 169
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_RECEIVE_SMS_OPS:[I

    .line 176
    new-array v0, v5, [Ljava/lang/String;

    .line 177
    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    .line 176
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_SEND_SMS_PERMS:[Ljava/lang/String;

    .line 180
    new-array v0, v5, [I

    .line 181
    const/16 v1, 0x14

    aput v1, v0, v4

    .line 180
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_SEND_SMS_OPS:[I

    .line 184
    new-array v0, v5, [Ljava/lang/String;

    .line 185
    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    .line 184
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_SEND_MMS_PERMS:[Ljava/lang/String;

    .line 188
    new-array v0, v5, [I

    .line 189
    const/16 v1, 0x44

    aput v1, v0, v4

    .line 188
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_SEND_MMS_OPS:[I

    .line 193
    new-array v0, v6, [Ljava/lang/String;

    .line 194
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    .line 195
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    .line 193
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_PERMS:[Ljava/lang/String;

    .line 199
    const/16 v0, 0x3b

    .line 200
    const/16 v1, 0x3c

    .line 198
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_STORAGE_OPS:[I

    .line 204
    new-array v0, v5, [Ljava/lang/String;

    .line 205
    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v4

    .line 204
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CAMERA_PERMS:[Ljava/lang/String;

    .line 208
    new-array v0, v5, [I

    .line 209
    const/16 v1, 0x1a

    aput v1, v0, v4

    .line 208
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CAMERA_OPS:[I

    .line 212
    new-array v0, v5, [Ljava/lang/String;

    .line 213
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    .line 212
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_RECORD_AUDIO_PERMS:[Ljava/lang/String;

    .line 216
    new-array v0, v5, [I

    .line 217
    const/16 v1, 0x1b

    aput v1, v0, v4

    .line 216
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_RECORD_AUDIO_OPS:[I

    .line 220
    new-array v0, v5, [Ljava/lang/String;

    .line 221
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    aput-object v1, v0, v4

    .line 220
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CHANGE_WIFI_PERMS:[Ljava/lang/String;

    .line 224
    new-array v0, v5, [I

    .line 225
    const/16 v1, 0x40

    aput v1, v0, v4

    .line 224
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CHANGE_WIFI_OPS:[I

    .line 228
    new-array v0, v5, [Ljava/lang/String;

    .line 229
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    aput-object v1, v0, v4

    .line 228
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CHANGE_BLUETOOTH_PERMS:[Ljava/lang/String;

    .line 232
    new-array v0, v5, [I

    .line 233
    const/16 v1, 0x41

    aput v1, v0, v4

    .line 232
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CHANGE_BLUETOOTH_OPS:[I

    .line 236
    new-array v0, v5, [Ljava/lang/String;

    .line 237
    const-string/jumbo v1, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v1, v0, v4

    .line 236
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CHANGE_DATACONNECT_PERMS:[Ljava/lang/String;

    .line 240
    new-array v0, v5, [I

    .line 241
    const/16 v1, 0x42

    aput v1, v0, v4

    .line 240
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_CHANGE_DATACONNECT_OPS:[I

    .line 244
    new-array v0, v5, [Ljava/lang/String;

    .line 245
    const-string/jumbo v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v1, v0, v4

    .line 244
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_PERMS:[Ljava/lang/String;

    .line 248
    new-array v0, v5, [I

    .line 249
    const/16 v1, 0x47

    aput v1, v0, v4

    .line 248
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I

    .line 252
    new-array v0, v5, [Ljava/lang/String;

    .line 253
    const-string/jumbo v1, "android.permission.NFC"

    aput-object v1, v0, v4

    .line 252
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_NFC_PERMS:[Ljava/lang/String;

    .line 256
    new-array v0, v5, [I

    .line 257
    const/16 v1, 0x48

    aput v1, v0, v4

    .line 256
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_NFC_OPS:[I

    .line 260
    new-array v0, v5, [Ljava/lang/String;

    .line 261
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v4

    .line 260
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_PHONE_INFO_PERMS:[Ljava/lang/String;

    .line 264
    new-array v0, v5, [I

    .line 265
    const/16 v1, 0x33

    aput v1, v0, v4

    .line 264
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_PHONE_INFO_OPS:[I

    .line 268
    new-array v0, v5, [I

    .line 269
    const/16 v1, 0x43

    aput v1, v0, v4

    .line 268
    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_THREE_WAY_CALLING_OPS:[I

    .line 271
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    .line 274
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/app/ZsAppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    .line 278
    new-array v0, v6, [Ljava/lang/String;

    .line 279
    const-string/jumbo v1, "com.tencent.mobileqq"

    aput-object v1, v0, v4

    .line 280
    const-string/jumbo v1, "com.tencent.mm"

    aput-object v1, v0, v5

    .line 278
    sput-object v0, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_CAMERA:[Ljava/lang/String;

    .line 283
    new-array v0, v6, [Ljava/lang/String;

    .line 284
    const-string/jumbo v1, "com.tencent.mobileqq"

    aput-object v1, v0, v4

    .line 285
    const-string/jumbo v1, "com.tencent.mm"

    aput-object v1, v0, v5

    .line 283
    sput-object v0, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_AUDIO:[Ljava/lang/String;

    .line 288
    new-array v0, v6, [Ljava/lang/String;

    .line 289
    const-string/jumbo v1, "com.autonavi.minimap"

    aput-object v1, v0, v4

    .line 290
    const-string/jumbo v1, "com.baidu.BaiduMap"

    aput-object v1, v0, v5

    .line 288
    sput-object v0, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_LOCATION:[Ljava/lang/String;

    .line 293
    new-array v0, v5, [Ljava/lang/String;

    .line 294
    const-string/jumbo v1, "com.letv.android.client"

    aput-object v1, v0, v4

    .line 293
    sput-object v0, Landroid/app/ZsAppOpsUtils;->DEFAULT_ALLOW_APP_USE_LOCATION:[Ljava/lang/String;

    .line 30
    return-void

    .line 57
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    .line 271
    :array_1
    .array-data 4
        0xd
        0x43
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 274
    :array_2
    .array-data 4
        0x14
        0x44
        0xe
        0xf
        0x45
        0x46
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/app/ZsAppOpsUtils;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ZsAppOpsUtils;->res:Landroid/content/res/Resources;

    .line 46
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/app/ZsAppOpsUtils;->aom:Landroid/app/AppOpsManager;

    .line 47
    iget-object v0, p0, Landroid/app/ZsAppOpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ZsAppOpsUtils;->pm:Landroid/content/pm/PackageManager;

    .line 43
    return-void
.end method

.method public static getPackageList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/system/permission_default_config.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/app/ZsAppOpsUtils;->mFile:Ljava/io/File;

    .line 365
    :try_start_0
    sget-object v3, Landroid/app/ZsAppOpsUtils;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {}, Landroid/app/ZsAppOpsUtils;->readFilterPackages()Z

    move-result v2

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "isSuccess":Z
    const-string/jumbo v3, "ZsAppOpsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    sget-object v3, Landroid/app/ZsAppOpsUtils;->mPackagesUsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Landroid/app/ZsAppOpsUtils;->DEFAULT_ALLOW_APP_USE_LOCATION:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 373
    sget-object v3, Landroid/app/ZsAppOpsUtils;->mPackagesUsed:Ljava/util/ArrayList;

    sget-object v4, Landroid/app/ZsAppOpsUtils;->DEFAULT_ALLOW_APP_USE_LOCATION:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 366
    .end local v1    # "i":I
    .end local v2    # "isSuccess":Z
    :catch_0
    move-exception v0

    .line 367
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "ZsAppOpsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to create because: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "isSuccess":Z
    :cond_0
    sget-object v3, Landroid/app/ZsAppOpsUtils;->mPackagesUsed:Ljava/util/ArrayList;

    return-object v3
.end method

.method public static has([II)Z
    .locals 4
    .param p0, "ints"    # [I
    .param p1, "target"    # I

    .prologue
    const/4 v2, 0x0

    .line 297
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p0, v1

    .line 298
    .local v0, "i":I
    if-ne v0, p1, :cond_0

    .line 299
    const/4 v1, 0x1

    return v1

    .line 297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public static isSkipPackage(ILjava/lang/String;)Z
    .locals 4
    .param p0, "code"    # I
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 305
    if-eqz p1, :cond_3

    .line 306
    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-ne p0, v0, :cond_1

    .line 307
    :cond_0
    const-string/jumbo v0, "ZsAppOpsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSkipPackage VOLUME false code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";packagename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v3

    .line 310
    :cond_1
    const-string/jumbo v0, "root"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const-string/jumbo v0, "com.android.providers.contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    if-nez v0, :cond_2

    .line 312
    const-string/jumbo v0, "com.android.dialer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    if-nez v0, :cond_2

    .line 313
    const-string/jumbo v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    if-eqz v0, :cond_3

    .line 314
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_3
    return v3
.end method

.method public static isSpecialDialog(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "op"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 321
    if-nez p0, :cond_0

    .line 322
    return v4

    .line 326
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/app/ZsAppOpsUtils;->TYPE_RECORD_AUDIO_OPS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 327
    sget-object v2, Landroid/app/ZsAppOpsUtils;->TYPE_RECORD_AUDIO_OPS:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_2

    .line 328
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v2, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_AUDIO:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 329
    sget-object v2, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_AUDIO:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    return v3

    .line 328
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_3
    const/4 v0, 0x0

    :goto_2
    sget-object v2, Landroid/app/ZsAppOpsUtils;->TYPE_CAMERA_OPS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 338
    sget-object v2, Landroid/app/ZsAppOpsUtils;->TYPE_CAMERA_OPS:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_5

    .line 339
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    sget-object v2, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_CAMERA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 340
    sget-object v2, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_CAMERA:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 341
    return v3

    .line 339
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 337
    .end local v1    # "j":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 348
    :cond_6
    const/4 v0, 0x0

    :goto_4
    sget-object v2, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 349
    sget-object v2, Landroid/app/ZsAppOpsUtils;->TYPE_LOCATION_OPS:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_8

    .line 350
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    sget-object v2, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_LOCATION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 351
    sget-object v2, Landroid/app/ZsAppOpsUtils;->SPECIAL_APP_USE_LOCATION:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 352
    return v3

    .line 350
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 348
    .end local v1    # "j":I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 358
    :cond_9
    return v4
.end method

.method private static readFilterPackages()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 429
    const-string/jumbo v9, "ZsAppOpsUtils"

    const-string/jumbo v10, "readFilterPackages"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v5, 0x0

    .line 432
    .local v5, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v9, Landroid/app/ZsAppOpsUtils;->mFile:Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 433
    .local v6, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v5    # "str":Ljava/io/FileInputStream;
    move-result-object v4

    .line 434
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 436
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v11, :cond_1

    .line 437
    if-ne v8, v12, :cond_0

    .line 441
    :cond_1
    if-eq v8, v11, :cond_2

    .line 442
    const/4 v9, 0x0

    return v9

    .line 445
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 446
    .local v3, "outerDepth":I
    :cond_3
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_6

    .line 447
    if-ne v8, v13, :cond_4

    .line 448
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 449
    :cond_4
    if-eq v8, v13, :cond_3

    .line 450
    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 453
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "package"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 455
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "delPackageName":Ljava/lang/String;
    sget-object v9, Landroid/app/ZsAppOpsUtils;->mPackagesUsed:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 466
    .end local v0    # "delPackageName":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v5, v6

    .line 467
    .end local v6    # "str":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v9, "ZsAppOpsUtils"

    const-string/jumbo v10, "Error reading /data/system/permission_default_config.xml"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    return v12

    .line 460
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_5
    :try_start_2
    const-string/jumbo v9, "ZsAppOpsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <packages>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 461
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 460
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 469
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .line 470
    .end local v6    # "str":Ljava/io/FileInputStream;
    :goto_3
    const-string/jumbo v9, "ZsAppOpsUtils"

    const-string/jumbo v10, "Error reading /data/system/permission_default_config.xml"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 465
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .end local v6    # "str":Ljava/io/FileInputStream;
    .local v5, "str":Ljava/io/FileInputStream;
    goto :goto_2

    .line 466
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .local v5, "str":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    .line 469
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method public static writeFilterPackages()V
    .locals 11

    .prologue
    .line 382
    const-string/jumbo v7, "ZsAppOpsUtils"

    const-string/jumbo v8, "writeFilterPackages"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v7, Landroid/app/ZsAppOpsUtils;->mFile:Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 387
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 390
    .local v6, "str":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 391
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 392
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 395
    const-string/jumbo v7, "packages"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    sget-object v7, Landroid/app/ZsAppOpsUtils;->mPackagesUsed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 401
    .local v4, "numPackages":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 402
    const-string/jumbo v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    sget-object v7, Landroid/app/ZsAppOpsUtils;->mPackagesUsed:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    .local v0, "apkPackageName":Ljava/lang/String;
    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    const-string/jumbo v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "apkPackageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "packages"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 412
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 413
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 414
    invoke-virtual {v6}, Ljava/io/FilterOutputStream;->close()V

    .line 416
    sget-object v7, Landroid/app/ZsAppOpsUtils;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 417
    const/16 v8, 0x1b4

    .line 420
    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 416
    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v3    # "i":I
    .end local v4    # "numPackages":I
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    :goto_1
    return-void

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ZsAppOpsUtils"

    const-string/jumbo v8, "Unable to writeFilterPackages"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
