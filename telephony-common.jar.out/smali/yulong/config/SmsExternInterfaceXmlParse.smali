.class public Lyulong/config/SmsExternInterfaceXmlParse;
.super Ljava/lang/Object;
.source "SmsExternInterfaceXmlParse.java"


# static fields
.field private static SMS_CONFIGS_DOCUMENT_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_CLASSNAME_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_ELEMENT_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_FILE_DIR:Ljava/lang/String;

.field private static SMS_CONFIG_FILE_NAME:Ljava/lang/String;

.field private static SMS_CONFIG_JARNAME_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_PARANUM_TAG:Ljava/lang/String;

.field private static SMS_CONFIG_TOTAL_TAG:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCfgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyulong/config/SmsExternInterfaceXmlConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessLoadItem:I

.field private mXmlItemNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "ExternInterfaceXmlParse"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "//system/etc/"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_DIR:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "sms-conf.xml"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_NAME:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "smsconfigs"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIGS_DOCUMENT_TAG:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "sms"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_ELEMENT_TAG:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "TotalItem"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_TOTAL_TAG:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "JarName"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_JARNAME_TAG:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "ClassName"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_CLASSNAME_TAG:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "ParaNum"

    sput-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_PARANUM_TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I

    .line 53
    invoke-direct {p0}, Lyulong/config/SmsExternInterfaceXmlParse;->Init()V

    .line 50
    return-void
.end method

.method private Init()V
    .locals 10

    .prologue
    .line 57
    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "CP_COMM: Init"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 60
    .local v2, "confreader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/File;

    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_DIR:Ljava/lang/String;

    .line 61
    sget-object v8, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_FILE_NAME:Ljava/lang/String;

    .line 60
    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, "confFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v3, "confreader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 65
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 66
    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIGS_DOCUMENT_TAG:Ljava/lang/String;

    invoke-direct {p0, v1, v7}, Lyulong/config/SmsExternInterfaceXmlParse;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, v1}, Lyulong/config/SmsExternInterfaceXmlParse;->loadConfigs(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    if-eqz v3, :cond_0

    .line 77
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 56
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "confreader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    .line 79
    .restart local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_0
    move-exception v5

    .line 80
    .local v5, "e":Ljava/io/IOException;
    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "CP_COMM: confreader is null."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .end local v3    # "confreader":Ljava/io/FileReader;
    .end local v5    # "e":Ljava/io/IOException;
    .local v1, "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_1
    move-exception v6

    .line 72
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CP_COMM: Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 73
    const-string/jumbo v9, "\'"

    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    if-eqz v2, :cond_1

    .line 77
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 79
    :catch_2
    move-exception v5

    .line 80
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "CP_COMM: confreader is null."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    :catch_3
    move-exception v4

    .line 70
    .end local v1    # "confparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "confreader":Ljava/io/FileReader;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "CP_COMM: FileNotFoundException whlie init."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    if-eqz v2, :cond_1

    .line 77
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 79
    :catch_4
    move-exception v5

    .line 80
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v7, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "CP_COMM: confreader is null."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 76
    :goto_4
    if-eqz v2, :cond_2

    .line 77
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 74
    :cond_2
    :goto_5
    throw v7

    .line 79
    :catch_5
    move-exception v5

    .line 80
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v8, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "CP_COMM: confreader is null."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 74
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .local v2, "confreader":Ljava/io/FileReader;
    goto :goto_4

    .line 69
    .end local v2    # "confreader":Ljava/io/FileReader;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_3

    .line 71
    .end local v2    # "confreader":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "confreader":Ljava/io/FileReader;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "confreader":Ljava/io/FileReader;
    .restart local v2    # "confreader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 158
    if-nez p1, :cond_0

    .line 160
    sget-object v1, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CP_COMM: beginDocument parament : null == parser"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    .line 165
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    :cond_1
    if-eq v0, v2, :cond_2

    .line 172
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 177
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    const-string/jumbo v3, ", expected "

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_3
    invoke-direct {p0, p1}, Lyulong/config/SmsExternInterfaceXmlParse;->loadTotalItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mXmlItemNum:I

    .line 155
    return-void
.end method

.method private getConfigItem(Lorg/xmlpull/v1/XmlPullParser;)Lyulong/config/SmsExternInterfaceXmlConfig;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x0

    .line 135
    sget-object v1, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_ELEMENT_TAG:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    return-object v3

    .line 140
    :cond_0
    new-instance v0, Lyulong/config/SmsExternInterfaceXmlConfig;

    invoke-direct {v0}, Lyulong/config/SmsExternInterfaceXmlConfig;-><init>()V

    .line 143
    .local v0, "cfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    sget-object v1, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_JARNAME_TAG:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lyulong/config/SmsExternInterfaceXmlConfig;->mJarName:Ljava/lang/String;

    .line 144
    sget-object v1, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_CLASSNAME_TAG:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lyulong/config/SmsExternInterfaceXmlConfig;->mClassName:Ljava/lang/String;

    .line 145
    sget-object v1, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_PARANUM_TAG:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    .line 146
    iget-object v1, v0, Lyulong/config/SmsExternInterfaceXmlConfig;->mJarName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lyulong/config/SmsExternInterfaceXmlConfig;->mClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 149
    :cond_1
    return-object v3

    .line 147
    :cond_2
    iget v1, v0, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 151
    return-object v0
.end method

.method private loadConfigs(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 105
    sget-object v4, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "loadConfigs"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz p1, :cond_2

    .line 110
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 111
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 112
    return-void

    .line 115
    .end local v3    # "type":I
    :cond_1
    invoke-direct {p0, p1}, Lyulong/config/SmsExternInterfaceXmlParse;->getConfigItem(Lorg/xmlpull/v1/XmlPullParser;)Lyulong/config/SmsExternInterfaceXmlConfig;

    move-result-object v2

    .line 116
    .local v2, "sci":Lyulong/config/SmsExternInterfaceXmlConfig;
    if-eqz v2, :cond_0

    .line 117
    iget-object v4, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget v4, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 121
    .end local v2    # "sci":Lyulong/config/SmsExternInterfaceXmlConfig;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v4, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got execption while getting perferred time zone."

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-void

    .line 124
    :catch_1
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got execption while getting perferred time zone."

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    sget-object v4, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "CP_COMM: nextElement parament : null == parser"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final loadTotalItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 204
    sget-object v0, Lyulong/config/SmsExternInterfaceXmlParse;->SMS_CONFIG_TOTAL_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 190
    sget-object v1, Lyulong/config/SmsExternInterfaceXmlParse;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CP_COMM: nextElement parament : null == parser"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 194
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 195
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    :cond_1
    return-void
.end method


# virtual methods
.method public getAllConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lyulong/config/SmsExternInterfaceXmlConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    return-object v0
.end method

.method public getFirstConfigItem()Lyulong/config/SmsExternInterfaceXmlConfig;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyulong/config/SmsExternInterfaceXmlConfig;

    return-object v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTotalItem()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mSuccessLoadItem:I

    return v0
.end method

.method public final getXmlTotalItem()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mXmlItemNum:I

    return v0
.end method

.method public hasItems()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lyulong/config/SmsExternInterfaceXmlParse;->mCfgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
