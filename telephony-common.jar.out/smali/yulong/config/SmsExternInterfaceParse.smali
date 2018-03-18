.class public final Lyulong/config/SmsExternInterfaceParse;
.super Ljava/lang/Thread;
.source "SmsExternInterfaceParse.java"


# static fields
.field private static final ThirdMethodName:Ljava/lang/String; = "parseSmsData"

.field private static final mParaMax:I = 0x9

.field private static final mParaMin:I = 0x1


# instance fields
.field private final EXTERNAL_JAR_DIR:Ljava/lang/String;

.field private JAR_EXTRACT_DIR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExtClassInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyulong/config/SmsExternInterfaceXmlConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mNum:I

.field mXmlParse:Lyulong/config/SmsExternInterfaceXmlParse;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const-string/jumbo v0, "ExternInterfaceParse"

    iput-object v0, p0, Lyulong/config/SmsExternInterfaceParse;->TAG:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "//system/framework/"

    iput-object v0, p0, Lyulong/config/SmsExternInterfaceParse;->EXTERNAL_JAR_DIR:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "ExternInterfaceParse"

    const-string/jumbo v1, "SmsExternInterfaceParse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lyulong/config/SmsExternInterfaceParse;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lyulong/config/SmsExternInterfaceXmlParse;

    invoke-direct {v0}, Lyulong/config/SmsExternInterfaceXmlParse;-><init>()V

    iput-object v0, p0, Lyulong/config/SmsExternInterfaceParse;->mXmlParse:Lyulong/config/SmsExternInterfaceXmlParse;

    .line 47
    iget-object v0, p0, Lyulong/config/SmsExternInterfaceParse;->mXmlParse:Lyulong/config/SmsExternInterfaceXmlParse;

    invoke-virtual {v0}, Lyulong/config/SmsExternInterfaceXmlParse;->getTotalItem()I

    move-result v0

    iput v0, p0, Lyulong/config/SmsExternInterfaceParse;->mNum:I

    .line 48
    iget-object v0, p0, Lyulong/config/SmsExternInterfaceParse;->mXmlParse:Lyulong/config/SmsExternInterfaceXmlParse;

    invoke-virtual {v0}, Lyulong/config/SmsExternInterfaceXmlParse;->getAllConfigs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lyulong/config/SmsExternInterfaceParse;->mExtClassInfoList:Ljava/util/List;

    .line 41
    return-void
.end method

.method private getAllMethod()V
    .locals 18

    .prologue
    .line 62
    const-string/jumbo v14, "ExternInterfaceParse"

    const-string/jumbo v15, "enter getAllMethod()"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 65
    .local v1, "cl":Ljava/lang/ClassLoader;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lyulong/config/SmsExternInterfaceParse;->mNum:I

    if-ge v10, v14, :cond_7

    .line 69
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lyulong/config/SmsExternInterfaceParse;->mExtClassInfoList:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyulong/config/SmsExternInterfaceXmlConfig;

    .line 70
    .local v12, "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    if-eqz v12, :cond_6

    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lyulong/config/SmsExternInterfaceParse;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lyulong/config/SmsExternInterfaceParse;->JAR_EXTRACT_DIR:Ljava/lang/String;

    .line 73
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "jar:file://system/framework/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mJarName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "path":Ljava/lang/String;
    iget v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    iget v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/16 v15, 0x9

    if-le v14, v15, :cond_1

    .line 65
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 80
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    :cond_1
    new-instance v2, Ldalvik/system/DexClassLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lyulong/config/SmsExternInterfaceParse;->JAR_EXTRACT_DIR:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v2, v11, v14, v15, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 81
    .local v2, "dcl":Ldalvik/system/DexClassLoader;
    iget-object v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 82
    .local v13, "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    .line 84
    iget v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v15, 0x2

    if-ne v15, v14, :cond_2

    .line 87
    const-string/jumbo v14, "parseSmsData"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    iput-object v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_1

    .line 120
    .end local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .end local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .restart local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    iget v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v15, 0x3

    if-ne v15, v14, :cond_3

    .line 92
    const-string/jumbo v14, "parseSmsData"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    iput-object v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 124
    .end local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .end local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 126
    .local v6, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v6    # "e":Ljava/lang/InstantiationException;
    .restart local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .restart local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_2
    iget v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v15, 0x4

    if-ne v15, v14, :cond_4

    .line 98
    const-string/jumbo v14, "parseSmsData"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x3

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    iput-object v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_1

    .line 127
    .end local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .end local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v4

    .line 129
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 100
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .restart local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :try_start_3
    iget v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v15, 0x5

    if-ne v15, v14, :cond_5

    .line 103
    const-string/jumbo v14, "parseSmsData"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x3

    aput-object v16, v15, v17

    const-class v16, [B

    const/16 v17, 0x4

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    iput-object v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1

    .line 130
    .end local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .end local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v9

    .line 132
    .local v9, "e":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 111
    .end local v9    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .restart local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :try_start_4
    const-string/jumbo v14, "parseSmsData"

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x3

    aput-object v16, v15, v17

    .line 112
    const-class v16, [B

    const/16 v17, 0x4

    aput-object v16, v15, v17

    const-class v16, [[B

    const/16 v17, 0x5

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x6

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x7

    aput-object v16, v15, v17

    const-class v16, Ljava/lang/String;

    const/16 v17, 0x8

    aput-object v16, v15, v17

    .line 111
    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    iput-object v14, v12, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 133
    .end local v2    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    .end local v13    # "tmpClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v7

    .line 135
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 117
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    :cond_6
    :try_start_5
    const-string/jumbo v14, "ExternInterfaceParse"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CP_COMM: getAllMethod tmpCfg is null,i:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 136
    .end local v12    # "tmpCfg":Lyulong/config/SmsExternInterfaceXmlConfig;
    :catch_5
    move-exception v5

    .line 138
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 139
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v8

    .line 140
    .local v8, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 143
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_7
    const-string/jumbo v14, "ExternInterfaceParse"

    const-string/jumbo v15, "end getAllMethod()"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method


# virtual methods
.method protected getClassNum()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lyulong/config/SmsExternInterfaceParse;->mNum:I

    return v0
.end method

.method public getExternInterfaceParseResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[B[[BIILjava/lang/String;)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "teleserviceId"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "userdata"    # [B
    .param p6, "pdus"    # [[B
    .param p7, "phoneId"    # I
    .param p8, "status"    # I
    .param p9, "format"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v6, p0, Lyulong/config/SmsExternInterfaceParse;->mNum:I

    if-ge v3, v6, :cond_8

    .line 167
    :try_start_0
    iget-object v6, p0, Lyulong/config/SmsExternInterfaceParse;->mExtClassInfoList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyulong/config/SmsExternInterfaceXmlConfig;

    .line 169
    .local v5, "tmpInfo":Lyulong/config/SmsExternInterfaceXmlConfig;
    iget-object v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    iget-object v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    if-nez v6, :cond_2

    .line 171
    :cond_0
    const-string/jumbo v6, "ExternInterfaceParse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getExternInterfaceParseResult method is null,i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v5    # "tmpInfo":Lyulong/config/SmsExternInterfaceXmlConfig;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .restart local v5    # "tmpInfo":Lyulong/config/SmsExternInterfaceXmlConfig;
    :cond_2
    const-string/jumbo v6, "ExternInterfaceParse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mParaNum:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    iget v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/16 v7, 0x9

    if-gt v6, v7, :cond_1

    .line 181
    iget v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v7, 0x2

    if-ne v7, v6, :cond_3

    .line 183
    iget-object v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v7, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "o":Ljava/lang/Object;
    :goto_2
    if-eqz v4, :cond_1

    .line 208
    const-string/jumbo v6, "ExternInterfaceParse"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 212
    const/4 v6, 0x1

    return v6

    .line 185
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    iget v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v7, 0x3

    if-ne v7, v6, :cond_4

    .line 187
    iget-object v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v7, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 189
    .end local v4    # "o":Ljava/lang/Object;
    :cond_4
    iget v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v7, 0x4

    if-ne v7, v6, :cond_5

    .line 191
    iget-object v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v7, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x3

    aput-object p4, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 193
    .end local v4    # "o":Ljava/lang/Object;
    :cond_5
    iget v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mParaNum:I

    const/4 v7, 0x5

    if-ne v7, v6, :cond_6

    .line 195
    iget-object v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v7, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x3

    aput-object p4, v8, v9

    const/4 v9, 0x4

    aput-object p5, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 199
    .end local v4    # "o":Ljava/lang/Object;
    :cond_6
    iget-object v6, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mMetodObj:Ljava/lang/reflect/Method;

    iget-object v7, v5, Lyulong/config/SmsExternInterfaceXmlConfig;->mObject:Ljava/lang/Object;

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x3

    aput-object p4, v8, v9

    .line 200
    const/4 v9, 0x4

    aput-object p5, v8, v9

    const/4 v9, 0x5

    aput-object p6, v8, v9

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v8, v10

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v8, v10

    const/16 v9, 0x8

    aput-object p9, v8, v9

    .line 199
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "o":Ljava/lang/Object;
    goto/16 :goto_2

    .line 214
    :cond_7
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    const/4 v6, 0x2

    return v6

    .line 229
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "tmpInfo":Lyulong/config/SmsExternInterfaceXmlConfig;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 225
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 221
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 234
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_8
    const/4 v6, 0x0

    return v6
.end method

.method public run()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lyulong/config/SmsExternInterfaceParse;->getAllMethod()V

    .line 52
    return-void
.end method
