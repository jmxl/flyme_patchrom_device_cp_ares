.class public Lcom/android/server/GameTriggerService;
.super Landroid/app/IGameTriggerManager$Stub;
.source "GameTriggerService.java"


# static fields
.field public static final EMPTY_INPUT:I = -0x3

.field public static final EMPTY_WHITELIST:I = -0x2

.field public static final ENABLE_SERVICE:Z = true

.field public static final GAME_TRIGGER:Ljava/lang/String; = "gametrigger"

.field public static final SEARCH_NO_RESULT:I = -0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "gametrigger_service"

.field private static final SYS_WHITELIST_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GameTriggerService"

.field private static final WHITELIST_NAME:Ljava/lang/String; = "game_whitelist.xml"

.field private static final WHITELIST_PATH:Ljava/lang/String; = "/data/system"

.field private static mGameOpss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemGameOpss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/vendor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/GameTriggerService;->SYS_WHITELIST_PATH:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/IGameTriggerManager$Stub;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GameTriggerService;->version:I

    .line 58
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->init()V

    .line 59
    const-string/jumbo v0, "GameTriggerService"

    const-string/jumbo v1, "GameTriggerService init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method private addTestData()V
    .locals 6

    .prologue
    .line 512
    new-instance v0, Landroid/app/GameOps;

    const-string/jumbo v3, "com.tencent.qq"

    const-string/jumbo v4, "MainActivity"

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Landroid/app/GameOps;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 513
    .local v0, "ops":Landroid/app/GameOps;
    new-instance v1, Landroid/app/GameOps;

    const-string/jumbo v3, "com.tencent.wechat"

    const-string/jumbo v4, "WeChatActivity"

    const/16 v5, 0x2d0

    invoke-direct {v1, v3, v4, v5}, Landroid/app/GameOps;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 514
    .local v1, "ops1":Landroid/app/GameOps;
    new-instance v2, Landroid/app/GameOps;

    const-string/jumbo v3, "com.ali.tmail"

    const-string/jumbo v4, "PayActivity"

    const/16 v5, 0x438

    invoke-direct {v2, v3, v4, v5}, Landroid/app/GameOps;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    .local v2, "ops2":Landroid/app/GameOps;
    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method private createFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 268
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/game_whitelist.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private find(Landroid/app/GameOps;)I
    .locals 3
    .param p1, "gameOps"    # Landroid/app/GameOps;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const/4 v1, -0x2

    return v1

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 305
    :cond_1
    const/4 v1, -0x3

    return v1

    .line 307
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 308
    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/GameOps;

    invoke-virtual {v1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    return v0

    .line 307
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method private findFormSystem(Landroid/app/GameOps;)I
    .locals 3
    .param p1, "gameOps"    # Landroid/app/GameOps;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 317
    :cond_0
    const/4 v1, -0x3

    return v1

    .line 319
    :cond_1
    sget-object v1, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    :cond_2
    const/4 v1, -0x2

    return v1

    .line 320
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 321
    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/GameOps;

    invoke-virtual {v1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    return v0

    .line 320
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_5
    const/4 v1, -0x1

    return v1
.end method

.method private getData(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    const/4 v5, 0x0

    .line 456
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 464
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 466
    .local v3, "gameOps":Landroid/app/GameOps;
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-interface {v7, p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 467
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, "eventType":I
    move-object v4, v3

    .local v4, "gameOps":Landroid/app/GameOps;
    move-object v6, v5

    .line 468
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .local v6, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_3

    .line 469
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .local v3, "gameOps":Landroid/app/GameOps;
    move-object v5, v6

    .line 494
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    move-object v4, v3

    .restart local v4    # "gameOps":Landroid/app/GameOps;
    move-object v6, v5

    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    goto :goto_0

    .line 471
    :pswitch_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    move-object v3, v4

    .line 472
    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    goto :goto_1

    .line 474
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :pswitch_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "gameops"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 475
    new-instance v3, Landroid/app/GameOps;

    invoke-direct {v3}, Landroid/app/GameOps;-><init>()V

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    :goto_2
    move-object v5, v6

    .line 486
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    goto :goto_1

    .line 476
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "package"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 477
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 478
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/GameOps;->setPackageName(Ljava/lang/String;)V

    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    goto :goto_2

    .line 479
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 480
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 481
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/GameOps;->setActivityName(Ljava/lang/String;)V

    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    goto :goto_2

    .line 482
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "display"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 483
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 484
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/GameOps;->setDispaly(I)V

    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    goto :goto_2

    .line 488
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    :pswitch_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "gameops"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 489
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 490
    const/4 v3, 0x0

    .end local v4    # "gameOps":Landroid/app/GameOps;
    :goto_3
    move-object v5, v6

    .line 492
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    goto/16 :goto_1

    .line 502
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :cond_3
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    move-object v5, v6

    .line 504
    .end local v2    # "eventType":I
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :goto_4
    if-nez v5, :cond_4

    .line 505
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 508
    :cond_4
    return-object v5

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .line 496
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 497
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_3
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .line 500
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v8

    .line 502
    :goto_7
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 500
    throw v8

    .restart local v2    # "eventType":I
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    move-object v5, v6

    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    goto :goto_7

    .line 496
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :catch_2
    move-exception v1

    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    move-object v5, v6

    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    goto :goto_6

    .line 498
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    move-object v5, v6

    .end local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "gameOps":Landroid/app/GameOps;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v6    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :cond_5
    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    goto :goto_3

    .end local v3    # "gameOps":Landroid/app/GameOps;
    .restart local v4    # "gameOps":Landroid/app/GameOps;
    :cond_6
    move-object v3, v4

    .end local v4    # "gameOps":Landroid/app/GameOps;
    .restart local v3    # "gameOps":Landroid/app/GameOps;
    goto/16 :goto_2

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInputFile()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getXMLFile()Ljava/io/File;

    move-result-object v1

    .line 433
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 435
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    move-object v2, v3

    .line 439
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 436
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getInputFileFromSystem()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getSysXMLFile()Ljava/io/File;

    move-result-object v1

    .line 444
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 446
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    move-object v2, v3

    .line 450
    .end local v3    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 447
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getOutputFileStream()Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getXMLFile()Ljava/io/File;

    move-result-object v1

    .line 395
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 397
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 401
    .end local v3    # "out":Ljava/io/OutputStream;
    :goto_0
    return-object v2

    .line 398
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSysConfigFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/GameTriggerService;->SYS_WHITELIST_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "game_whitelist.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    const/4 v1, 0x0

    return-object v1

    .line 288
    :cond_0
    return-object v0
.end method

.method private getSysXMLFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getSysConfigFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getXMLFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->createFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getInputFile()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/GameTriggerService;->getData(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    .line 424
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getSysXMLFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getInputFileFromSystem()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/GameTriggerService;->getData(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    .line 421
    :cond_0
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 418
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private saveToFile(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p2, "opss":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 345
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 348
    .local v8, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v8, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v9, "utf-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 350
    const-string/jumbo v9, "gameopss"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ops$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/GameOps;

    .line 354
    .local v6, "ops":Landroid/app/GameOps;
    const-string/jumbo v9, "gameops"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    const-string/jumbo v9, "package"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    invoke-virtual {v6}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const-string/jumbo v9, "package"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    const-string/jumbo v9, "activity"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 361
    invoke-virtual {v6}, Landroid/app/GameOps;->getActivityName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    const-string/jumbo v9, "activity"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    const-string/jumbo v9, "display"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/app/GameOps;->getDispaly()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const-string/jumbo v9, "display"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    const-string/jumbo v9, "gameops"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 377
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "ops":Landroid/app/GameOps;
    .end local v7    # "ops$iterator":Ljava/util/Iterator;
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v4

    .line 378
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 340
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-void

    .line 370
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "ops$iterator":Ljava/util/Iterator;
    .restart local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "gameopss"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 374
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 385
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "ops$iterator":Ljava/util/Iterator;
    .end local v8    # "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 383
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 382
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 379
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v2

    .line 380
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 389
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 387
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v9

    .line 389
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 387
    throw v9
.end method


# virtual methods
.method public add(Landroid/app/GameOps;)V
    .locals 5
    .param p1, "gameOps"    # Landroid/app/GameOps;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v2, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v2

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->init()V

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/GameTriggerService;->find(Landroid/app/GameOps;)I

    move-result v0

    .line 98
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 99
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getOutputFileStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lcom/android/server/GameTriggerService;->saveToFile(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 104
    :goto_0
    const-string/jumbo v1, "GameTriggerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gampos add or update : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/GameOps;->getDispaly()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 87
    return-void

    .line 102
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/GameTriggerService;->update(Landroid/app/GameOps;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public addList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "gameOpss":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v1

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->init()V

    .line 124
    :cond_0
    sget-object v0, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getOutputFileStream()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v2, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/android/server/GameTriggerService;->saveToFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 114
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDisplay(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgActivityName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 236
    :cond_0
    const/4 v3, -0x3

    return v3

    .line 239
    :cond_1
    const/4 v1, 0x0

    .line 241
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "pas":[Ljava/lang/String;
    aget-object v1, v2, v5

    .line 248
    .end local v2    # "pas":[Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v4

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_0
    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 250
    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameOps;

    invoke-virtual {v3}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameOps;

    invoke-virtual {v3}, Landroid/app/GameOps;->getDispaly()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 245
    .end local v0    # "i":I
    .local v1, "packageName":Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .local v1, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 249
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_4
    const/4 v0, 0x0

    :goto_2
    :try_start_1
    sget-object v3, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 256
    sget-object v3, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameOps;

    invoke-virtual {v3}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    sget-object v3, Lcom/android/server/GameTriggerService;->mSystemGameOpss:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GameOps;

    invoke-virtual {v3}, Landroid/app/GameOps;->getDispaly()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 255
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    monitor-exit v4

    .line 261
    return v5

    .line 248
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/android/server/GameTriggerService;->version:I

    return v0
.end method

.method public isInWhiteListed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 193
    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v3

    .line 194
    :try_start_0
    new-instance v2, Landroid/app/GameOps;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p2, v4}, Landroid/app/GameOps;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/android/server/GameTriggerService;->find(Landroid/app/GameOps;)I

    move-result v0

    .line 195
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 197
    new-instance v2, Landroid/app/GameOps;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p2, v4}, Landroid/app/GameOps;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/android/server/GameTriggerService;->findFormSystem(Landroid/app/GameOps;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 198
    .local v1, "index2":I
    if-gez v1, :cond_0

    monitor-exit v3

    .line 199
    return v5

    .line 203
    .end local v1    # "index2":I
    :cond_0
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 193
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isInWhiteListedAsObject(Landroid/app/GameOps;)Z
    .locals 2
    .param p1, "gameOps"    # Landroid/app/GameOps;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    invoke-virtual {p1}, Landroid/app/GameOps;->getActivityName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1}, Landroid/app/GameOps;->getActivityName()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/android/server/GameTriggerService;->isInWhiteListed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInWhiteListedAsPkgAct(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgActivityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 210
    return v2

    .line 212
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "pas":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_1

    array-length v1, v0

    if-ne v1, v3, :cond_2

    .line 214
    :cond_1
    return v2

    .line 217
    :cond_2
    aget-object v1, v0, v2

    aget-object v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/GameTriggerService;->isInWhiteListed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public publish()V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "gametrigger"

    invoke-virtual {p0}, Lcom/android/server/GameTriggerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    return-void
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    sget-object v2, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v2

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 156
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 159
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/GameOps;

    invoke-virtual {v1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getOutputFileStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lcom/android/server/GameTriggerService;->saveToFile(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 164
    const-string/jumbo v1, "GameTriggerService"

    const-string/jumbo v3, "gamops remove"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 148
    return-void

    .line 154
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeAll()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v1

    .line 183
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    .line 184
    sget-object v0, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/GameTriggerService;->save(Ljava/util/List;)V

    .line 185
    const-string/jumbo v0, "GameTriggerService"

    const-string/jumbo v2, "gamops remove all"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 181
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAsPkgAct(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgActivityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "pas":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_1

    .line 175
    return-void

    .line 177
    :cond_1
    aget-object v1, v0, v2

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/GameTriggerService;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public save(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/GameOps;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "gameOpss":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v1

    .line 76
    :try_start_0
    sput-object p1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getOutputFileStream()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v2, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/android/server/GameTriggerService;->saveToFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 73
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public saveToXML()V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->addTestData()V

    .line 407
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getOutputFileStream()Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/GameTriggerService;->saveToFile(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 404
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/android/server/GameTriggerService;->version:I

    .line 336
    return-void
.end method

.method public update(Landroid/app/GameOps;)V
    .locals 4
    .param p1, "gameOps"    # Landroid/app/GameOps;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/GameOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 134
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/app/GameOps;->getActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    sget-object v2, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    monitor-enter v2

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/GameTriggerService;->find(Landroid/app/GameOps;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 139
    .local v0, "index":I
    if-gez v0, :cond_2

    monitor-exit v2

    .line 140
    return-void

    .line 142
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0}, Lcom/android/server/GameTriggerService;->getOutputFileStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v3, Lcom/android/server/GameTriggerService;->mGameOpss:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lcom/android/server/GameTriggerService;->saveToFile(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 131
    return-void

    .line 137
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
