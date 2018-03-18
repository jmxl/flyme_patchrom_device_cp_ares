.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrength$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static mCdma:[I

.field private static mEvdo:[I

.field private static mGsm:[I

.field private static mIsZeusisCriterionEnable:Z

.field private static mLte:[I

.field private static mUmts:[I


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "none"

    aput-object v1, v0, v3

    const-string/jumbo v1, "poor"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "moderate"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "good"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "great"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 57
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 58
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 379
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1192
    sput-boolean v3, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z

    .line 30
    return-void

    .line 57
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 58
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 102
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 103
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 104
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 105
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 106
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 107
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 108
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 109
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 110
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 111
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 112
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 113
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 116
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->setCustomCriterion()V

    .line 100
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 156
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 159
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 161
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->setCustomCriterion()V

    .line 155
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 178
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->setCustomCriterion()V

    .line 173
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/16 v8, 0x63

    const v9, 0x7fffffff

    .line 192
    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 190
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 194
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->setCustomCriterion()V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 317
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->setCustomCriterion()V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 207
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->setCustomCriterion()V

    .line 204
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 129
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 130
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 131
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 132
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 133
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 134
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 135
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 136
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 137
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 138
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 139
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 140
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 141
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 143
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->setCustomCriterion()V

    .line 127
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1183
    const-string/jumbo v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 330
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 331
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 332
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 333
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 334
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 335
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 336
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 337
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 338
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 339
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 340
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 341
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 342
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 343
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 344
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 90
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 91
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method private setCustomCriterion()V
    .locals 12

    .prologue
    .line 1195
    sget-boolean v10, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z

    if-eqz v10, :cond_0

    .line 1196
    return-void

    .line 1200
    :cond_0
    :try_start_0
    const-string/jumbo v1, "com.zeusis.hydra.telephony.VendorTelephonyManager"

    .line 1201
    .local v1, "VendorTelephonyManagerClass":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1203
    .local v0, "VendorTelephonyManager":Ljava/lang/Class;
    const-string/jumbo v10, "getGSMSignalStrengthCriterion"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1204
    .local v6, "gsmCriterionMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v10, "getUMTSSignalStrengthCriterion"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1205
    .local v9, "umtsCriterionMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v10, "getCDMASignalStrengthCriterion"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1206
    .local v2, "cdmaCriterionMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v10, "getEVDOSignalStrengthCriterion"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1207
    .local v3, "evdoCriterionMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v10, "getLTESignalStrengthCriterion"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1209
    .local v8, "lteCriterionMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1210
    .local v5, "gsm":[I
    array-length v10, v5

    new-array v10, v10, [I

    sput-object v10, Landroid/telephony/SignalStrength;->mGsm:[I

    .line 1211
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    sput-object v10, Landroid/telephony/SignalStrength;->mUmts:[I

    .line 1212
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    sput-object v10, Landroid/telephony/SignalStrength;->mCdma:[I

    .line 1213
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    sput-object v10, Landroid/telephony/SignalStrength;->mEvdo:[I

    .line 1214
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    sput-object v10, Landroid/telephony/SignalStrength;->mLte:[I

    .line 1216
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    array-length v10, v5

    if-ge v7, v10, :cond_1

    .line 1217
    sget-object v10, Landroid/telephony/SignalStrength;->mGsm:[I

    aget v11, v5, v7

    add-int/lit8 v11, v11, 0x71

    div-int/lit8 v11, v11, 0x2

    aput v11, v10, v7

    .line 1216
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1220
    :cond_1
    const/4 v10, 0x1

    sput-boolean v10, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    .end local v0    # "VendorTelephonyManager":Ljava/lang/Class;
    .end local v1    # "VendorTelephonyManagerClass":Ljava/lang/String;
    .end local v2    # "cdmaCriterionMethod":Ljava/lang/reflect/Method;
    .end local v3    # "evdoCriterionMethod":Ljava/lang/reflect/Method;
    .end local v5    # "gsm":[I
    .end local v6    # "gsmCriterionMethod":Ljava/lang/reflect/Method;
    .end local v7    # "index":I
    .end local v8    # "lteCriterionMethod":Ljava/lang/reflect/Method;
    .end local v9    # "umtsCriterionMethod":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 1222
    :catch_0
    move-exception v4

    .line 1223
    .local v4, "ex":Ljava/lang/ReflectiveOperationException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setCustomCriterion:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1140
    const-string/jumbo v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1141
    const-string/jumbo v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1142
    const-string/jumbo v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1143
    const-string/jumbo v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1144
    const-string/jumbo v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1145
    const-string/jumbo v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1146
    const-string/jumbo v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1147
    const-string/jumbo v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1148
    const-string/jumbo v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1149
    const-string/jumbo v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1150
    const-string/jumbo v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1151
    const-string/jumbo v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1152
    const-string/jumbo v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1153
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1139
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 278
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 279
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 280
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 281
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 282
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 283
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 284
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 285
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 286
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 287
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 288
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 289
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 290
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 291
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 277
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1086
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    .line 1092
    return v3

    .line 1087
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 1095
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_1

    .line 1096
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_1

    .line 1097
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_1

    .line 1098
    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_1

    .line 1099
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_1

    .line 1100
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_1

    .line 1101
    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_1

    .line 1102
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_1

    .line 1103
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_1

    .line 1104
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_1

    .line 1105
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_1

    .line 1106
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_1

    .line 1107
    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_1

    .line 1108
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 1095
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1163
    const-string/jumbo v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1164
    const-string/jumbo v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1165
    const-string/jumbo v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1166
    const-string/jumbo v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1167
    const-string/jumbo v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1168
    const-string/jumbo v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1169
    const-string/jumbo v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1170
    const-string/jumbo v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1171
    const-string/jumbo v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1172
    const-string/jumbo v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1173
    const-string/jumbo v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1174
    const-string/jumbo v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1175
    const-string/jumbo v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1176
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1162
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 558
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 559
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 560
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 582
    :goto_0
    return v0

    .line 562
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 569
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 570
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_3

    .line 572
    move v0, v1

    goto :goto_0

    .line 573
    :cond_3
    if-nez v1, :cond_4

    .line 575
    move v0, v2

    goto :goto_0

    .line 578
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 754
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 755
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 759
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 767
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 774
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 776
    .local v4, "level":I
    :goto_2
    return v4

    .line 760
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 761
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 762
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 763
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 764
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 768
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 769
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 770
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 771
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 772
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 774
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 712
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 717
    .local v1, "cdmaEcio":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z

    if-eqz v5, :cond_4

    .line 718
    sget-object v5, Landroid/telephony/SignalStrength;->mCdma:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 724
    .local v3, "levelDbm":I
    :goto_0
    move v2, v3

    .line 726
    .local v2, "level":I
    return v3

    .line 719
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    :cond_0
    sget-object v5, Landroid/telephony/SignalStrength;->mCdma:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 720
    .end local v3    # "levelDbm":I
    :cond_1
    sget-object v5, Landroid/telephony/SignalStrength;->mCdma:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 721
    .end local v3    # "levelDbm":I
    :cond_2
    sget-object v5, Landroid/telephony/SignalStrength;->mCdma:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 722
    .end local v3    # "levelDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 730
    .end local v3    # "levelDbm":I
    :cond_4
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_5

    const/4 v3, 0x4

    .line 737
    .restart local v3    # "levelDbm":I
    :goto_1
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_9

    const/4 v4, 0x4

    .line 743
    .local v4, "levelEcio":I
    :goto_2
    if-ge v3, v4, :cond_d

    move v2, v3

    .line 745
    .restart local v2    # "level":I
    :goto_3
    return v2

    .line 731
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_5
    const/16 v5, -0x55

    if-lt v0, v5, :cond_6

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 732
    .end local v3    # "levelDbm":I
    :cond_6
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_7

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 733
    .end local v3    # "levelDbm":I
    :cond_7
    const/16 v5, -0x64

    if-lt v0, v5, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 734
    .end local v3    # "levelDbm":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_1

    .line 738
    :cond_9
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_a

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 739
    .end local v4    # "levelEcio":I
    :cond_a
    const/16 v5, -0x82

    if-lt v1, v5, :cond_b

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 740
    .end local v4    # "levelEcio":I
    :cond_b
    const/16 v5, -0x96

    if-lt v1, v5, :cond_c

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_2

    .line 741
    .end local v4    # "levelEcio":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_2

    :cond_d
    move v2, v4

    .line 743
    goto :goto_3
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 591
    const v1, 0x7fffffff

    .line 593
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 594
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 595
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 596
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 597
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 599
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 604
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 606
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_4

    .end local v0    # "cdmaDbm":I
    :cond_3
    :goto_1
    return v0

    .restart local v0    # "cdmaDbm":I
    :cond_4
    if-ne v0, v4, :cond_5

    move v0, v2

    goto :goto_1

    .line 607
    :cond_5
    if-lt v0, v2, :cond_3

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 827
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 828
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 832
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 839
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 846
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 848
    .local v2, "level":I
    :goto_2
    return v2

    .line 833
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 834
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 835
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 836
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 837
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 840
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 841
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 842
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 843
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 844
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 846
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 785
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 786
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 791
    .local v1, "evdoSnr":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z

    if-eqz v5, :cond_4

    .line 792
    sget-object v5, Landroid/telephony/SignalStrength;->mEvdo:[I

    aget v5, v5, v6

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 798
    .local v3, "levelEvdoDbm":I
    :goto_0
    move v2, v3

    .line 800
    .local v2, "level":I
    return v3

    .line 793
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    :cond_0
    sget-object v5, Landroid/telephony/SignalStrength;->mEvdo:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 794
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    sget-object v5, Landroid/telephony/SignalStrength;->mEvdo:[I

    aget v5, v5, v7

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 795
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    sget-object v5, Landroid/telephony/SignalStrength;->mEvdo:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 796
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 804
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v5, -0x41

    if-lt v0, v5, :cond_5

    const/4 v3, 0x4

    .line 810
    .restart local v3    # "levelEvdoDbm":I
    :goto_1
    const/4 v5, 0x7

    if-lt v1, v5, :cond_9

    const/4 v4, 0x4

    .line 816
    .local v4, "levelEvdoSnr":I
    :goto_2
    if-ge v3, v4, :cond_d

    move v2, v3

    .line 818
    .restart local v2    # "level":I
    :goto_3
    return v2

    .line 805
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_5
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_6

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 806
    .end local v3    # "levelEvdoDbm":I
    :cond_6
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_7

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 807
    .end local v3    # "levelEvdoDbm":I
    :cond_7
    const/16 v5, -0x69

    if-lt v0, v5, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 808
    .end local v3    # "levelEvdoDbm":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_1

    .line 811
    :cond_9
    const/4 v5, 0x5

    if-lt v1, v5, :cond_a

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 812
    .end local v4    # "levelEvdoSnr":I
    :cond_a
    if-lt v1, v6, :cond_b

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 813
    .end local v4    # "levelEvdoSnr":I
    :cond_b
    if-lt v1, v7, :cond_c

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    .line 814
    .end local v4    # "levelEvdoSnr":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_2

    :cond_d
    move v2, v4

    .line 816
    goto :goto_3
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 702
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 621
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 622
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 623
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 624
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 629
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 622
    goto :goto_0

    .line 626
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 638
    const/4 v3, 0x0

    .line 640
    .local v3, "level":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z

    if-eqz v5, :cond_6

    .line 641
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 642
    .local v0, "asu":I
    sget-object v5, Landroid/telephony/SignalStrength;->mGsm:[I

    aget v5, v5, v7

    add-int/lit8 v2, v5, -0x3

    .line 643
    .local v2, "invalid":I
    if-gez v2, :cond_0

    .line 644
    const/4 v2, 0x0

    .line 646
    :cond_0
    if-le v0, v2, :cond_1

    const/16 v5, 0x63

    if-ne v0, v5, :cond_2

    :cond_1
    const/4 v3, 0x0

    .line 653
    :goto_0
    return v3

    .line 647
    :cond_2
    sget-object v5, Landroid/telephony/SignalStrength;->mGsm:[I

    aget v5, v5, v10

    if-lt v0, v5, :cond_3

    const/4 v3, 0x4

    goto :goto_0

    .line 648
    :cond_3
    sget-object v5, Landroid/telephony/SignalStrength;->mGsm:[I

    aget v5, v5, v8

    if-lt v0, v5, :cond_4

    const/4 v3, 0x3

    goto :goto_0

    .line 649
    :cond_4
    sget-object v5, Landroid/telephony/SignalStrength;->mGsm:[I

    aget v5, v5, v9

    if-lt v0, v5, :cond_5

    const/4 v3, 0x2

    goto :goto_0

    .line 650
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "asu":I
    .end local v2    # "invalid":I
    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 658
    const v6, 0x11200d4

    .line 657
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 659
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 661
    .local v1, "dbm":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 662
    const v6, 0x1070066

    .line 661
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 663
    .local v4, "threshGsm":[I
    array-length v5, v4

    const/4 v6, 0x6

    if-ge v5, v6, :cond_7

    .line 664
    return v3

    .line 665
    :cond_7
    aget v5, v4, v11

    if-le v1, v5, :cond_9

    const/4 v3, 0x0

    .line 687
    .end local v1    # "dbm":I
    .end local v4    # "threshGsm":[I
    :cond_8
    :goto_1
    return v3

    .line 666
    .restart local v1    # "dbm":I
    .restart local v4    # "threshGsm":[I
    :cond_9
    const/4 v5, 0x4

    aget v5, v4, v5

    if-lt v1, v5, :cond_a

    const/4 v3, 0x4

    goto :goto_1

    .line 667
    :cond_a
    aget v5, v4, v10

    if-lt v1, v5, :cond_b

    const/4 v3, 0x3

    goto :goto_1

    .line 668
    :cond_b
    aget v5, v4, v8

    if-lt v1, v5, :cond_c

    const/4 v3, 0x2

    goto :goto_1

    .line 669
    :cond_c
    aget v5, v4, v9

    if-lt v1, v5, :cond_d

    const/4 v3, 0x1

    goto :goto_1

    .line 670
    :cond_d
    aget v5, v4, v7

    if-lt v1, v5, :cond_8

    const/4 v3, 0x0

    goto :goto_1

    .line 678
    .end local v1    # "dbm":I
    .end local v4    # "threshGsm":[I
    :cond_e
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 679
    .restart local v0    # "asu":I
    if-le v0, v8, :cond_f

    const/16 v5, 0x63

    if-ne v0, v5, :cond_10

    :cond_f
    const/4 v3, 0x0

    goto :goto_1

    .line 680
    :cond_10
    const/16 v5, 0xc

    if-lt v0, v5, :cond_11

    const/4 v3, 0x4

    goto :goto_1

    .line 681
    :cond_11
    const/16 v5, 0x8

    if-lt v0, v5, :cond_12

    const/4 v3, 0x3

    goto :goto_1

    .line 682
    :cond_12
    if-lt v0, v11, :cond_13

    const/4 v3, 0x2

    goto :goto_1

    .line 683
    :cond_13
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 522
    const/4 v2, 0x0

    .line 524
    .local v2, "level":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 525
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 526
    if-nez v2, :cond_0

    .line 527
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 528
    if-nez v2, :cond_0

    .line 529
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 547
    :cond_0
    :goto_0
    return v2

    .line 533
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 534
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 535
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 537
    move v2, v0

    goto :goto_0

    .line 538
    :cond_2
    if-nez v0, :cond_3

    .line 540
    move v2, v1

    goto :goto_0

    .line 543
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 972
    const/16 v0, 0x63

    .line 973
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 987
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 990
    :goto_0
    return v0

    .line 988
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 872
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 875
    .local v3, "snrIconLevel":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z

    if-eqz v5, :cond_6

    .line 876
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x8c

    if-lt v5, v6, :cond_0

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x2c

    if-le v5, v6, :cond_1

    .line 877
    :cond_0
    const/4 v0, 0x0

    .line 891
    :goto_0
    return v0

    .line 878
    :cond_1
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget-object v6, Landroid/telephony/SignalStrength;->mLte:[I

    aget v6, v6, v11

    if-lt v5, v6, :cond_2

    .line 879
    const/4 v0, 0x4

    goto :goto_0

    .line 880
    :cond_2
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget-object v6, Landroid/telephony/SignalStrength;->mLte:[I

    aget v6, v6, v10

    if-lt v5, v6, :cond_3

    .line 881
    const/4 v0, 0x3

    goto :goto_0

    .line 882
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget-object v6, Landroid/telephony/SignalStrength;->mLte:[I

    aget v6, v6, v9

    if-lt v5, v6, :cond_4

    .line 883
    const/4 v0, 0x2

    goto :goto_0

    .line 884
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget-object v6, Landroid/telephony/SignalStrength;->mLte:[I

    aget v6, v6, v8

    if-lt v5, v6, :cond_5

    .line 885
    const/4 v0, 0x1

    goto :goto_0

    .line 887
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 895
    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e009c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 898
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_9

    .line 899
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 903
    .local v4, "threshRsrp":[I
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 904
    const v6, 0x11200d3

    .line 903
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 905
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 906
    const v6, 0x1070067

    .line 905
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 909
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x5

    aget v6, v4, v6

    if-le v5, v6, :cond_a

    const/4 v0, -0x1

    .line 916
    :cond_8
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 917
    const v6, 0x11200d3

    .line 916
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 918
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLTELevel - rsrp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 919
    if-eq v0, v7, :cond_f

    return v0

    .line 901
    .end local v4    # "threshRsrp":[I
    :cond_9
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v4    # "threshRsrp":[I
    goto :goto_1

    .line 910
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x4

    aget v6, v4, v6

    if-lt v5, v6, :cond_b

    const/4 v0, 0x4

    goto :goto_2

    .line 911
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v6, v4, v11

    if-lt v5, v6, :cond_c

    const/4 v0, 0x3

    goto :goto_2

    .line 912
    :cond_c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v6, v4, v10

    if-lt v5, v6, :cond_d

    const/4 v0, 0x2

    goto :goto_2

    .line 913
    :cond_d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v6, v4, v9

    if-lt v5, v6, :cond_e

    const/4 v0, 0x1

    goto :goto_2

    .line 914
    :cond_e
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v6, v4, v8

    if-lt v5, v6, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    .line 928
    :cond_f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x12c

    if-le v5, v6, :cond_11

    const/4 v3, -0x1

    .line 940
    :cond_10
    :goto_3
    if-eq v3, v7, :cond_17

    if-eq v0, v7, :cond_17

    .line 946
    if-ge v0, v3, :cond_16

    .end local v0    # "rsrpIconLevel":I
    :goto_4
    return v0

    .line 929
    .restart local v0    # "rsrpIconLevel":I
    :cond_11
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_12

    const/4 v3, 0x4

    goto :goto_3

    .line 930
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_13

    const/4 v3, 0x3

    goto :goto_3

    .line 931
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_14

    const/4 v3, 0x2

    goto :goto_3

    .line 932
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_15

    const/4 v3, 0x1

    goto :goto_3

    .line 933
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0xc8

    if-lt v5, v6, :cond_10

    .line 934
    const/4 v3, 0x0

    goto :goto_3

    :cond_16
    move v0, v3

    .line 946
    goto :goto_4

    .line 949
    :cond_17
    if-eq v3, v7, :cond_18

    return v3

    .line 951
    :cond_18
    if-eq v0, v7, :cond_19

    return v0

    .line 954
    :cond_19
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x3f

    if-le v5, v6, :cond_1b

    const/4 v2, 0x0

    .line 962
    :cond_1a
    :goto_5
    return v2

    .line 955
    :cond_1b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_1c

    const/4 v2, 0x4

    goto :goto_5

    .line 956
    :cond_1c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_1d

    const/4 v2, 0x3

    goto :goto_5

    .line 957
    :cond_1d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1e

    const/4 v2, 0x2

    goto :goto_5

    .line 958
    :cond_1e
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v5, :cond_1a

    const/4 v2, 0x1

    goto :goto_5
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1054
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1057
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1060
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1058
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 5

    .prologue
    const v4, 0x7fffffff

    const/16 v3, -0x19

    .line 1018
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1022
    .local v1, "tdScdmaDbm":I
    sget-boolean v2, Landroid/telephony/SignalStrength;->mIsZeusisCriterionEnable:Z

    if-eqz v2, :cond_6

    .line 1023
    if-gt v1, v3, :cond_0

    if-ne v1, v4, :cond_1

    .line 1024
    :cond_0
    const/4 v0, 0x0

    .line 1032
    .local v0, "level":I
    :goto_0
    return v0

    .line 1025
    .end local v0    # "level":I
    :cond_1
    sget-object v2, Landroid/telephony/SignalStrength;->mUmts:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1026
    .end local v0    # "level":I
    :cond_2
    sget-object v2, Landroid/telephony/SignalStrength;->mUmts:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1027
    .end local v0    # "level":I
    :cond_3
    sget-object v2, Landroid/telephony/SignalStrength;->mUmts:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1028
    .end local v0    # "level":I
    :cond_4
    sget-object v2, Landroid/telephony/SignalStrength;->mUmts:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1029
    .end local v0    # "level":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0

    .line 1036
    .end local v0    # "level":I
    :cond_6
    if-gt v1, v3, :cond_7

    if-ne v1, v4, :cond_8

    .line 1037
    :cond_7
    const/4 v0, 0x0

    .line 1045
    .restart local v0    # "level":I
    :goto_1
    return v0

    .line 1038
    .end local v0    # "level":I
    :cond_8
    const/16 v2, -0x31

    if-lt v1, v2, :cond_9

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_1

    .line 1039
    .end local v0    # "level":I
    :cond_9
    const/16 v2, -0x49

    if-lt v1, v2, :cond_a

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_1

    .line 1040
    .end local v0    # "level":I
    :cond_a
    const/16 v2, -0x61

    if-lt v1, v2, :cond_b

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_1

    .line 1041
    .end local v0    # "level":I
    :cond_b
    const/16 v2, -0x6e

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_1

    .line 1042
    .end local v0    # "level":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1069
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1070
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1071
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1071
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1072
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1072
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1072
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1073
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1073
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1074
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1074
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1074
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v0, v1

    .line 1075
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/lit8 v1, v1, 0x1f

    .line 1069
    add-int/2addr v1, v0

    .line 1075
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1069
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1075
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 257
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 258
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 259
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 260
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 261
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 262
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 263
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 264
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 265
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 266
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 267
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 268
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 269
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 270
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 256
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 229
    const/16 v8, 0x63

    const v9, 0x7fffffff

    .line 230
    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    .line 228
    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 227
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 435
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 434
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1117
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1118
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1118
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1119
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1119
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1120
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1120
    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1121
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1121
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1122
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1122
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1123
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1123
    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1124
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1124
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1125
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1125
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1126
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1126
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1127
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1127
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1128
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1128
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1129
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1130
    const-string/jumbo v1, " "

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1130
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "gsm|lte"

    .line 1116
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1130
    :cond_0
    const-string/jumbo v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 403
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 406
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 407
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 409
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 410
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 411
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 414
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 415
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 416
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 417
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 420
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    .line 421
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    .line 420
    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 400
    return-void

    :cond_4
    move v0, v1

    .line 403
    goto :goto_0

    :cond_5
    move v0, v2

    .line 406
    goto :goto_1

    .line 407
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 410
    goto :goto_3

    :cond_8
    move v0, v4

    .line 415
    goto :goto_4

    :cond_9
    move v0, v4

    .line 416
    goto :goto_5

    :cond_a
    move v0, v4

    .line 418
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 351
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
