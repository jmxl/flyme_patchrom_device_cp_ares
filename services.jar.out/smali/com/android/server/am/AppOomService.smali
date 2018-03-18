.class public Lcom/android/server/am/AppOomService;
.super Lcom/android/internal/app/IAppOomService$Stub;
.source "AppOomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppOomService$1;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppOom"


# instance fields
.field private final mAppOomList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mWriteRunner:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/AppOomService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppOomService;->writeXml()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "storagePath"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/IAppOomService$Stub;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Lcom/android/server/am/AppOomService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppOomService$1;-><init>(Lcom/android/server/am/AppOomService;)V

    iput-object v0, p0, Lcom/android/server/am/AppOomService;->mWriteRunner:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/android/server/am/AppOomService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 70
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/AppOomService;->mFile:Landroid/util/AtomicFile;

    .line 71
    iput-object p3, p0, Lcom/android/server/am/AppOomService;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private initXml()V
    .locals 19

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AppOomService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/AppOomService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v15}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 130
    .local v12, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 131
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v12, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x2

    if-eq v14, v15, :cond_1

    .line 135
    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 139
    :cond_1
    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    .line 140
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "no start tag found"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    :catch_0
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v15, "AppOom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    monitor-exit v16

    .line 120
    return-void

    .line 125
    .end local v12    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    monitor-exit v16

    .line 126
    return-void

    .line 143
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "type":I
    :cond_2
    :try_start_4
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 144
    .local v9, "outerDepth":I
    :cond_3
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_6

    .line 145
    const/4 v15, 0x3

    if-ne v14, v15, :cond_4

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_6

    .line 146
    :cond_4
    const/4 v15, 0x3

    if-eq v14, v15, :cond_3

    const/4 v15, 0x4

    if-eq v14, v15, :cond_3

    .line 150
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "pkg"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 152
    const-string/jumbo v15, "n"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "procName":Ljava/lang/String;
    const-string/jumbo v15, "adj"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "adjValue":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 163
    .end local v1    # "adjValue":I
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "procName":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_2
    move-exception v6

    .line 164
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_5
    const-string/jumbo v15, "AppOom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 176
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 156
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_5
    :try_start_7
    const-string/jumbo v15, "AppOom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Unknown element under <app-ops>: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 157
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 156
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 165
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_4
    move-exception v7

    .line 166
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string/jumbo v15, "AppOom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 175
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 176
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 175
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "type":I
    :cond_6
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 176
    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 171
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "type":I
    :catch_7
    move-exception v5

    .line 172
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    const-string/jumbo v15, "AppOom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 175
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 176
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 169
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_9
    move-exception v3

    .line 170
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v15, "AppOom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 175
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    .line 176
    :catch_a
    move-exception v3

    goto/16 :goto_0

    .line 167
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 168
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_f
    const-string/jumbo v15, "AppOom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Failed parsing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 175
    :try_start_10
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_0

    .line 176
    :catch_c
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 173
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v15

    .line 175
    :try_start_11
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 173
    :goto_2
    :try_start_12
    throw v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 121
    .end local v12    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    .line 176
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private readXml(Ljava/lang/String;)I
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/16 v0, -0x2710

    monitor-exit v1

    return v0

    .line 201
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setProcessAdj(Ljava/lang/String;I)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "adj"    # I

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 185
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 192
    iget-object v1, p0, Lcom/android/server/am/AppOomService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppOomService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void

    .line 188
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private writeXml()V
    .locals 9

    .prologue
    .line 84
    iget-object v5, p0, Lcom/android/server/am/AppOomService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v5

    .line 87
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 94
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 95
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 96
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 97
    const-string/jumbo v4, "app-oom"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    iget-object v6, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 101
    const-string/jumbo v4, "pkg"

    const/4 v7, 0x0

    invoke-interface {v2, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string/jumbo v7, "n"

    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string/jumbo v7, "adj"

    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mAppOomList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    const-string/jumbo v4, "pkg"

    const/4 v7, 0x0

    invoke-interface {v2, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "AppOom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to write state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    .line 90
    return-void

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_4
    monitor-exit v6

    .line 110
    const-string/jumbo v4, "app-oom"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 112
    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v1    # "i":I
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    monitor-exit v5

    .line 83
    return-void

    .line 99
    .restart local v1    # "i":I
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v6

    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    .end local v1    # "i":I
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v4, "AppOom"

    const-string/jumbo v6, "Failed to write state, restoring backup."

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public getOomAdj(Ljava/lang/String;)I
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/am/AppOomService;->readXml(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/am/AppOomService;->mContext:Landroid/content/Context;

    .line 76
    const-string/jumbo v0, "appoom"

    invoke-virtual {p0}, Lcom/android/server/am/AppOomService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    return-void
.end method

.method public setOomAdj(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "adj"    # I

    .prologue
    .line 207
    const/4 v3, 0x1

    .line 208
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 209
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppOomService;->setProcessAdj(Ljava/lang/String;I)V

    .line 210
    iget-object v5, p0, Lcom/android/server/am/AppOomService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 211
    const/4 v1, 0x0

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v2, v0

    .line 213
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v4, p2, :cond_0

    .line 215
    iput p2, v2, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 216
    iget-object v4, p0, Lcom/android/server/am/AppOomService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "result":Z
    :cond_0
    monitor-exit v5

    .line 210
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 223
    return v3

    .line 211
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "result":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/am/AppOomService;->initXml()V

    .line 79
    return-void
.end method
