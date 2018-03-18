.class public Lyulong/config/CPIccidOverride;
.super Ljava/lang/Object;
.source "CPIccidOverride.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "IccidOverride"

.field static final PARTNER_ICCID_OVERRIDE_PATH:Ljava/lang/String; = "etc/iccid-conf.xml"

.field private static mInstance:Lyulong/config/CPIccidOverride;


# instance fields
.field private mCarrierIccidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyulong/config/CPIccidOverride;->mCarrierIccidMap:Ljava/util/HashMap;

    .line 46
    invoke-direct {p0}, Lyulong/config/CPIccidOverride;->loadIccidOverrides()V

    .line 44
    return-void
.end method

.method public static getInstance()Lyulong/config/CPIccidOverride;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lyulong/config/CPIccidOverride;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lyulong/config/CPIccidOverride;->mInstance:Lyulong/config/CPIccidOverride;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lyulong/config/CPIccidOverride;

    invoke-direct {v0}, Lyulong/config/CPIccidOverride;-><init>()V

    sput-object v0, Lyulong/config/CPIccidOverride;->mInstance:Lyulong/config/CPIccidOverride;

    .line 40
    :cond_0
    sget-object v0, Lyulong/config/CPIccidOverride;->mInstance:Lyulong/config/CPIccidOverride;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadIccidOverrides()V
    .locals 11

    .prologue
    .line 61
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    .line 62
    const-string/jumbo v10, "etc/iccid-conf.xml"

    .line 61
    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v5, "iccidFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v6, "iccidReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 74
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 76
    const-string/jumbo v9, "iccidOverrides"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 79
    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 81
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v9, "iccidOverride"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-nez v9, :cond_1

    .line 101
    if-eqz v6, :cond_0

    .line 102
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 58
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    return-void

    .line 66
    .end local v6    # "iccidReader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-void

    .line 86
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "iccidReader":Ljava/io/FileReader;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_3
    const-string/jumbo v9, "iccid"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "iccid":Ljava/lang/String;
    const-string/jumbo v9, "carrier"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "carrier":Ljava/lang/String;
    iget-object v9, p0, Lyulong/config/CPIccidOverride;->mCarrierIccidMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v4    # "iccid":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v6, :cond_0

    .line 102
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 104
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_0

    .line 102
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    .line 104
    :catch_5
    move-exception v2

    goto :goto_1

    .line 94
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 101
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v6, :cond_0

    .line 102
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_1

    .line 104
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 99
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    .line 101
    if-eqz v6, :cond_2

    .line 102
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 99
    :cond_2
    :goto_2
    throw v9

    .line 104
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method containsIccid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lyulong/config/CPIccidOverride;->mCarrierIccidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCarrier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lyulong/config/CPIccidOverride;->mCarrierIccidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
