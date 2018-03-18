.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$1;,
        Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;,
        Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

.field private mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/WapPushOverSms$1;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 143
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    .line 137
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private bindWapPushManagerService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 111
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string/jumbo v2, "WAP PUSH"

    const-string/jumbo v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    .locals 30
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 171
    new-instance v22, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;)V

    .line 175
    .local v22, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    const/16 v27, 0x0

    .line 176
    const/4 v13, 0x1

    .local v13, "index":I
    :try_start_0
    aget-byte v27, p1, v27
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 177
    .local v25, "transactionId":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    :try_start_1
    aget-byte v27, p1, v13

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 180
    .local v20, "pduType":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v21

    .line 182
    .local v21, "phoneId":I
    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 183
    const/16 v27, 0x7

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 185
    const v28, 0x10e0097

    .line 184
    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 186
    .end local v14    # "index":I
    .restart local v13    # "index":I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v13, v0, :cond_2

    .line 187
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    aget-byte v27, p1, v13
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 188
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "index":I
    .restart local v13    # "index":I
    :try_start_2
    aget-byte v27, p1, v14

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 194
    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 195
    const/16 v27, 0x7

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 197
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 198
    return-object v22

    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_0
    move v13, v14

    .line 208
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v19

    .line 216
    .local v19, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v27

    if-nez v27, :cond_3

    .line 218
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 219
    return-object v22

    .line 202
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 203
    return-object v22

    .line 221
    .restart local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v11, v0

    .line 222
    .local v11, "headerLength":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int v13, v13, v27

    .line 224
    move v12, v13

    .line 238
    .local v12, "headerStartIndex":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v27

    if-nez v27, :cond_4

    .line 240
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 241
    return-object v22

    .line 244
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v16

    .line 245
    .local v16, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    .line 246
    .local v6, "binaryContentType":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int v13, v13, v27

    .line 248
    new-array v10, v11, [B

    .line 249
    .local v10, "header":[B
    array-length v0, v10

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-static {v0, v12, v10, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 253
    if-eqz v16, :cond_5

    const-string/jumbo v27, "application/vnd.wap.coc"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 254
    move-object/from16 v15, p1

    .line 261
    .local v15, "intentData":[B
    :goto_0
    invoke-static/range {v21 .. v21}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v24

    .line 262
    .local v24, "subIds":[I
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_6

    const/16 v27, 0x0

    aget v23, v24, v27
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    .local v23, "subId":I
    :goto_1
    const/16 v18, 0x0

    .line 269
    .local v18, "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :try_start_3
    new-instance v27, Lcom/google/android/mms/pdu/PduParser;

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v0, v15, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v18

    .line 274
    .end local v18    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_2
    if-eqz v18, :cond_7

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v27

    const/16 v28, 0x82

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 275
    move-object/from16 v0, v18

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v17, v0

    .line 276
    .local v17, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    if-eqz v27, :cond_7

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v27

    .line 276
    if-eqz v27, :cond_7

    .line 278
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 279
    return-object v22

    .line 256
    .end local v15    # "intentData":[B
    .end local v17    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v23    # "subId":I
    .end local v24    # "subIds":[I
    :cond_5
    add-int v8, v12, v11

    .line 257
    .local v8, "dataIndex":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v8

    move/from16 v0, v27

    new-array v15, v0, [B

    .line 258
    .restart local v15    # "intentData":[B
    array-length v0, v15

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-static {v0, v8, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 313
    .end local v6    # "binaryContentType":J
    .end local v8    # "dataIndex":I
    .end local v10    # "header":[B
    .end local v11    # "headerLength":I
    .end local v12    # "headerStartIndex":I
    .end local v15    # "intentData":[B
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v20    # "pduType":I
    .end local v21    # "phoneId":I
    .end local v25    # "transactionId":I
    :catch_0
    move-exception v4

    .line 316
    .local v4, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    const-string/jumbo v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    .line 319
    .end local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    return-object v22

    .line 263
    .restart local v6    # "binaryContentType":J
    .restart local v10    # "header":[B
    .restart local v11    # "headerLength":I
    .restart local v12    # "headerStartIndex":I
    .restart local v15    # "intentData":[B
    .restart local v16    # "mimeType":Ljava/lang/String;
    .restart local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v20    # "pduType":I
    .restart local v21    # "phoneId":I
    .restart local v24    # "subIds":[I
    .restart local v25    # "transactionId":I
    :cond_6
    :try_start_5
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v23

    .restart local v23    # "subId":I
    goto/16 :goto_1

    .line 270
    .restart local v18    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catch_1
    move-exception v9

    .line 271
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unable to parse PDU: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 289
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v18    # "parsedPdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_7
    add-int v27, v13, v11

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 290
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v13, v0

    .line 291
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 292
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v26

    .line 293
    .local v26, "wapAppId":Ljava/lang/String;
    if-nez v26, :cond_8

    .line 294
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 296
    :cond_8
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    .line 297
    if-nez v16, :cond_a

    .line 298
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "contentType":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v22

    iput-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    .line 303
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v26    # "wapAppId":Ljava/lang/String;
    :cond_9
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    .line 304
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    .line 305
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 306
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 307
    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    .line 308
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    .line 309
    move-object/from16 v0, v22

    iput-object v10, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    .line 310
    move-object/from16 v0, v22

    iput-object v15, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    .line 311
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    .line 312
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .restart local v26    # "wapAppId":Ljava/lang/String;
    :cond_a
    move-object/from16 v5, v16

    .line 298
    goto :goto_5

    .line 313
    .end local v6    # "binaryContentType":J
    .end local v10    # "header":[B
    .end local v11    # "headerLength":I
    .end local v12    # "headerStartIndex":I
    .end local v13    # "index":I
    .end local v15    # "intentData":[B
    .end local v16    # "mimeType":Ljava/lang/String;
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v20    # "pduType":I
    .end local v21    # "phoneId":I
    .end local v23    # "subId":I
    .end local v24    # "subIds":[I
    .end local v26    # "wapAppId":Ljava/lang/String;
    .restart local v14    # "index":I
    :catch_2
    move-exception v4

    .restart local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_3
.end method

.method public static getAppOpsPermissionForIntent(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 653
    const-string/jumbo v1, "application/vnd.wap.mms-message"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    const/16 v0, 0x12

    .line 658
    .local v0, "appOp":I
    :goto_0
    return v0

    .line 656
    .end local v0    # "appOp":I
    :cond_0
    const/16 v0, 0x13

    .restart local v0    # "appOp":I
    goto :goto_0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    const-wide/16 v10, -0x1

    .line 570
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_1

    .line 571
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 579
    .local v9, "messageId":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 583
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 584
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 585
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "thread_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 586
    const-string/jumbo v4, "m_id=? AND m_type=?"

    .line 587
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 588
    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 589
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 591
    const/4 v6, 0x0

    move-object v0, p0

    .line 581
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 592
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 598
    if-eqz v7, :cond_0

    .line 599
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_0
    return-wide v0

    .line 572
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_2

    .line 573
    new-instance v9, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v9    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 575
    .end local v9    # "messageId":Ljava/lang/String;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WAP Push data is neither delivery or read report type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 576
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/GenericPdu;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-wide v10

    .line 598
    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "messageId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 599
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 602
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    return-wide v10

    .line 595
    :catch_0
    move-exception v8

    .line 596
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "Failed to query delivery or read report thread id"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    if-eqz v7, :cond_4

    .line 599
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 597
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 598
    if-eqz v7, :cond_5

    .line 599
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_5
    throw v0
.end method

.method public static getPermissionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 643
    const-string/jumbo v1, "application/vnd.wap.mms-message"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string/jumbo v0, "android.permission.RECEIVE_MMS"

    .line 648
    .local v0, "permission":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 646
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v0    # "permission":Ljava/lang/String;
    goto :goto_0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 609
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v10

    .line 610
    .local v10, "rawLocation":[B
    if-eqz v10, :cond_2

    .line 611
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 612
    .local v9, "location":Ljava/lang/String;
    new-array v11, v13, [Ljava/lang/String;

    aput-object v9, v11, v12

    .line 613
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 617
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 618
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 619
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 620
    const-string/jumbo v4, "m_type=? AND ct_l =?"

    .line 621
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    .line 622
    const/16 v0, 0x82

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 623
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 625
    const/4 v6, 0x0

    move-object v0, p0

    .line 615
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 626
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 633
    if-eqz v7, :cond_0

    .line 634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_0
    return v13

    .line 633
    :cond_1
    if-eqz v7, :cond_2

    .line 634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 638
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "location":Ljava/lang/String;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_0
    return v12

    .line 630
    .restart local v9    # "location":Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 631
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "failed to query existing notification ind"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    if-eqz v7, :cond_2

    .line 634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 632
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 633
    if-eqz v7, :cond_3

    .line 634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 632
    :cond_3
    throw v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 472
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    .line 475
    const-string/jumbo v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    .line 472
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V
    .locals 23
    .param p1, "subId"    # I
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    .line 479
    if-nez p2, :cond_0

    .line 480
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Invalid PUSH PDU"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 483
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    .line 485
    .local v22, "type":I
    sparse-switch v22, :sswitch_data_0

    .line 555
    :try_start_0
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Received unrecognized WAP Push PDU."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    :goto_0
    return-void

    .line 488
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)J

    move-result-wide v20

    .line 489
    .local v20, "threadId":J
    const-wide/16 v8, -0x1

    cmp-long v3, v20, v8

    if-nez v3, :cond_2

    .line 492
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to find delivery or read report\'s thread id"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 557
    .end local v20    # "threadId":J
    :catch_0
    move-exception v16

    .line 558
    .local v16, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to save MMS WAP push data: type="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 497
    .end local v16    # "e":Lcom/google/android/mms/MmsException;
    .restart local v20    # "threadId":J
    :cond_2
    :try_start_1
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 498
    const/4 v5, 0x1

    .line 499
    const/4 v6, 0x1

    .line 500
    const/4 v7, 0x0

    move-object/from16 v3, p2

    .line 495
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    .line 501
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_3

    .line 502
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to persist delivery or read report"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 559
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v20    # "threadId":J
    :catch_1
    move-exception v17

    .line 560
    .local v17, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Unexpected RuntimeException in persisting MMS WAP push data"

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 506
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v20    # "threadId":J
    :cond_3
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 507
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "thread_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 513
    const/4 v7, 0x0

    .line 514
    const/4 v8, 0x0

    .line 508
    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 514
    const/4 v4, 0x1

    .line 508
    if-eq v3, v4, :cond_1

    .line 515
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to update delivery or read report thread id"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 520
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v20    # "threadId":J
    :sswitch_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v18, v0

    .line 522
    .local v18, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static/range {p1 .. p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v13

    .line 524
    .local v13, "configs":Landroid/os/Bundle;
    if-eqz v13, :cond_4

    .line 525
    const-string/jumbo v3, "enabledTransID"

    const/4 v4, 0x0

    .line 524
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 526
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v14

    .line 527
    .local v14, "contentLocation":[B
    array-length v3, v14

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v14, v3

    const/16 v4, 0x3d

    if-ne v4, v3, :cond_4

    .line 528
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v19

    .line 529
    .local v19, "transactionId":[B
    array-length v3, v14

    .line 530
    move-object/from16 v0, v19

    array-length v4, v0

    .line 529
    add-int/2addr v3, v4

    new-array v15, v3, [B

    .line 532
    .local v15, "contentLocationWithId":[B
    array-length v3, v14

    .line 531
    const/4 v4, 0x0

    .line 532
    const/4 v7, 0x0

    .line 531
    invoke-static {v14, v4, v15, v7, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 534
    array-length v3, v14

    move-object/from16 v0, v19

    array-length v4, v0

    .line 533
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v7, v15, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 535
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 538
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentLocationWithId":[B
    .end local v19    # "transactionId":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 541
    sget-object v9, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 542
    const/4 v10, 0x1

    .line 543
    const/4 v11, 0x1

    .line 544
    const/4 v12, 0x0

    move-object v7, v2

    move-object/from16 v8, p2

    .line 539
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v5

    .line 545
    .restart local v5    # "uri":Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 546
    const-string/jumbo v3, "WAP PUSH"

    const-string/jumbo v4, "Failed to save MMS WAP push notification ind"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 550
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 549
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 485
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 32
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v27

    .line 333
    .local v27, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 334
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return v4

    .line 337
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(ILcom/google/android/mms/pdu/GenericPdu;)V

    .line 343
    :cond_1
    const/16 v22, 0x0

    .line 345
    .local v22, "parsedPdu":Lcom/google/android/mms/pdu/PduParser;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v24

    .line 346
    .local v24, "phoneId":I
    invoke-static/range {v24 .. v24}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v29

    .line 347
    .local v29, "subIds":[I
    if-eqz v29, :cond_3

    move-object/from16 v0, v29

    array-length v4, v0

    if-lez v4, :cond_3

    const/4 v4, 0x0

    aget v28, v29, v4

    .line 349
    .local v28, "subId":I
    :goto_0
    new-instance v23, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v5

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v22    # "parsedPdu":Lcom/google/android/mms/pdu/PduParser;
    .local v23, "parsedPdu":Lcom/google/android/mms/pdu/PduParser;
    move-object/from16 v22, v23

    .line 355
    .end local v23    # "parsedPdu":Lcom/google/android/mms/pdu/PduParser;
    .end local v24    # "phoneId":I
    .end local v28    # "subId":I
    .end local v29    # "subIds":[I
    :goto_1
    const/16 v21, 0x0

    .line 357
    .local v21, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    .line 364
    .local v21, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v6, 0x0

    .line 365
    .local v6, "originateAddress":Ljava/lang/String;
    const/16 v30, 0x0

    .line 366
    .local v30, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v21, :cond_2

    const/16 v4, 0x89

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    .local v30, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_2

    .line 367
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 368
    .end local v6    # "originateAddress":Ljava/lang/String;
    .end local v30    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2
    const-string/jumbo v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wap push parse sender address: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mExtInterfaceParse:Lyulong/config/SmsExternInterfaceParse;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 371
    move-object/from16 v0, v27

    iget-object v9, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    .line 372
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v13

    .line 371
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 372
    const/4 v12, -0x1

    .line 370
    invoke-virtual/range {v4 .. v13}, Lyulong/config/SmsExternInterfaceParse;->getExternInterfaceParseResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[B[[BIILjava/lang/String;)I

    move-result v14

    .line 374
    .local v14, "bRet":I
    const-string/jumbo v5, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wap push message filter = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v4, 0x1

    if-ne v14, v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v4, 0x1

    if-ne v14, v4, :cond_5

    .line 376
    const/4 v4, 0x1

    return v4

    .line 348
    .end local v14    # "bRet":I
    .end local v21    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v22    # "parsedPdu":Lcom/google/android/mms/pdu/PduParser;
    .restart local v24    # "phoneId":I
    .restart local v29    # "subIds":[I
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v28

    .restart local v28    # "subId":I
    goto/16 :goto_0

    .line 350
    .end local v24    # "phoneId":I
    .end local v28    # "subId":I
    .end local v29    # "subIds":[I
    :catch_0
    move-exception v20

    .line 351
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to parse PDU: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 358
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v22    # "parsedPdu":Lcom/google/android/mms/pdu/PduParser;
    .local v21, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :catch_1
    move-exception v20

    .line 359
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WAP PUSH"

    const-string/jumbo v5, "wap push message Invalid Header"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v4, 0x2

    return v4

    .line 374
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v14    # "bRet":I
    .local v21, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 385
    :cond_5
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 387
    const/16 v26, 0x1

    .line 388
    .local v26, "processFurther":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v31, v0

    .line 390
    .local v31, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v31, :cond_7

    .line 414
    :cond_6
    :goto_3
    if-nez v26, :cond_8

    .line 415
    const/4 v4, 0x1

    return v4

    .line 393
    :cond_7
    monitor-enter p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 394
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const-string/jumbo v7, "mms-mgr"

    const/4 v9, 0x0

    .line 394
    invoke-interface {v4, v5, v9, v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p0

    .line 398
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 399
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string/jumbo v4, "header"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 402
    const-string/jumbo v4, "data"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 403
    const-string/jumbo v4, "contentTypeParameters"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 404
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v8, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 407
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    .line 406
    move-object/from16 v0, v31

    invoke-interface {v0, v4, v5, v8}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v25

    .line 409
    .local v25, "procRet":I
    and-int/lit8 v4, v25, 0x1

    if-lez v4, :cond_6

    .line 410
    const v4, 0x8000

    and-int v4, v4, v25

    if-nez v4, :cond_6

    .line 411
    const/16 v26, 0x0

    goto :goto_3

    .line 393
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v25    # "procRet":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 417
    .end local v31    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_2
    move-exception v17

    .line 423
    .end local v26    # "processFurther":Z
    :cond_8
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 425
    const/4 v4, 0x2

    return v4

    .line 428
    :cond_9
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string/jumbo v4, "transactionId"

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string/jumbo v4, "pduType"

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string/jumbo v4, "header"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 433
    const-string/jumbo v4, "data"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 434
    const-string/jumbo v4, "contentTypeParameters"

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 435
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v8, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v16

    .line 440
    .local v16, "componentName":Landroid/content/ComponentName;
    const/4 v11, 0x0

    .line 441
    .local v11, "options":Landroid/os/Bundle;
    if-eqz v16, :cond_a

    .line 443
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 447
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 448
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "mms-app"

    const/4 v9, 0x0

    .line 447
    invoke-interface {v4, v5, v9, v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v18

    .line 449
    .local v18, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v15

    .line 450
    .local v15, "bopts":Landroid/app/BroadcastOptions;
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 451
    invoke-virtual {v15}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v11

    .line 456
    .end local v11    # "options":Landroid/os/Bundle;
    .end local v15    # "bopts":Landroid/app/BroadcastOptions;
    .end local v18    # "duration":J
    :cond_a
    :goto_4
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 457
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsPermissionForIntent(Ljava/lang/String;)I

    move-result v10

    .line 458
    sget-object v13, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v7, p3

    move-object/from16 v12, p2

    .line 456
    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 459
    const/4 v4, -0x1

    return v4

    .line 452
    .restart local v11    # "options":Landroid/os/Bundle;
    :catch_3
    move-exception v17

    .local v17, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 152
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string/jumbo v0, "WAP PUSH"

    const-string/jumbo v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object v0

    .line 467
    .local v0, "result":Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    iget v1, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 468
    const-string/jumbo v1, "application/vnd.wap.mms-message"

    iget-object v2, v0, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 467
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 127
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 126
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 132
    return-void
.end method
