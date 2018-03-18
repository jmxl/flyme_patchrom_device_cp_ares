.class public Lcom/android/server/notification/XmlBaseHelper;
.super Ljava/lang/Object;
.source "XmlBaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/XmlBaseHelper$TypeConvers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_KEY:Ljava/lang/String; = "subscriptKey"

.field private static final TAG_NODE:Ljava/lang/String; = "subscriptNode"

.field private static final TAG_VALUE:Ljava/lang/String; = "subscriptValue"


# instance fields
.field private DEFAULT_FILE:Ljava/io/File;

.field private WITHOUT_SAVE_IGNORE_ITEM:Z

.field private mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/notification/XmlBaseHelper$TypeConvers",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/server/notification/XmlBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/XmlBaseHelper$TypeConvers;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/XmlBaseHelper$TypeConvers",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "typeConvers":Lcom/android/server/notification/XmlBaseHelper$TypeConvers;, "Lcom/android/server/notification/XmlBaseHelper$TypeConvers<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "notificationSubscript.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    .line 49
    iput-object p1, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    .line 48
    return-void
.end method

.method private LOG_D(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 220
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    sget-object v0, Lcom/android/server/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method private LOG_E(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 224
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    sget-object v0, Lcom/android/server/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method private readFromXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    const/4 v7, 0x0

    .line 149
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 152
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, p1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 153
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 154
    .local v2, "eventCode":I
    const/4 v3, 0x0

    .line 155
    .local v3, "key":Ljava/lang/Object;, "TK;"
    const/4 v6, 0x0

    .line 156
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_4

    .line 157
    packed-switch v2, :pswitch_data_0

    .line 180
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 159
    :pswitch_1
    const-string/jumbo v8, "subscriptNode"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    const/4 v3, 0x0

    .line 162
    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    const/4 v6, 0x0

    .local v6, "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 163
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    const-string/jumbo v8, "subscriptKey"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 165
    iget-object v8, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->StringToK(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_1

    .line 166
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    const-string/jumbo v8, "subscriptValue"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 168
    iget-object v8, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->StringToV(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 172
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :pswitch_2
    const-string/jumbo v8, "subscriptNode"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v8, v3}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->KToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v8, v6}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->canItemIgnore(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 174
    :cond_3
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 182
    .end local v2    # "eventCode":I
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 184
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 185
    :goto_2
    return-object v7

    .line 191
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventCode":I
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :goto_4
    return-object v4

    .line 192
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "eventCode":I
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 188
    :goto_5
    return-object v7

    .line 192
    :catch_3
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 193
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v7

    .line 191
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 189
    :goto_6
    throw v7

    .line 192
    :catch_5
    move-exception v0

    .line 193
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "eventCode":I
    :cond_5
    move-object v4, v7

    .line 196
    goto :goto_4

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private saveToXml(Ljava/util/HashMap;Ljava/io/Writer;)V
    .locals 11
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 111
    .local v8, "xmlSer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v8, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 112
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 113
    const-string/jumbo v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    sget-object v9, Lcom/android/server/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd    hh:mm:ss"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "date":Ljava/lang/String;
    const-string/jumbo v9, ""

    const-string/jumbo v10, "date"

    invoke-interface {v8, v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 120
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 121
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 122
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 123
    .local v7, "val":Ljava/lang/Object;, "TV;"
    iget-boolean v9, p0, Lcom/android/server/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v9, v7}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->canItemIgnore(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 124
    :cond_1
    const-string/jumbo v9, "subscriptNode"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const-string/jumbo v9, "subscriptKey"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    iget-object v9, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v9, v5}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->KToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    const-string/jumbo v9, "subscriptKey"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string/jumbo v9, "subscriptValue"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    iget-object v9, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v9, v7}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->VToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    const-string/jumbo v9, "subscriptValue"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string/jumbo v9, "subscriptNode"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 139
    .end local v0    # "date":Ljava/lang/String;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "sDateFormat":Ljava/text/SimpleDateFormat;
    .end local v7    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 108
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void

    .line 134
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .restart local v6    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :cond_2
    :try_start_1
    sget-object v9, Lcom/android/server/notification/XmlBaseHelper;->TAG:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 137
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 138
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 141
    .end local v0    # "date":Ljava/lang/String;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .end local v6    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 200
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/XmlBaseHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 199
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "f"    # Ljava/io/File;

    .prologue
    .line 204
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NotificationSubscriptXmlHelper.dump(),f:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p2}, Lcom/android/server/notification/XmlBaseHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v2

    .line 206
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 207
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 211
    .local v3, "val":Ljava/lang/Object;, "TV;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v5, v1}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->KToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/XmlBaseHelper;->mTypeConvers:Lcom/android/server/notification/XmlBaseHelper$TypeConvers;

    invoke-interface {v5, v3}, Lcom/android/server/notification/XmlBaseHelper$TypeConvers;->VToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "val":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 203
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_1
    return-void

    .line 215
    :cond_1
    const-string/jumbo v4, "\t not data !"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public read()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/XmlBaseHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/File;)Ljava/util/HashMap;
    .locals 4
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    const/4 v1, 0x0

    .line 101
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "in":Ljava/io/FileInputStream;
    .local v2, "in":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 105
    .end local v2    # "in":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/notification/XmlBaseHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3

    .line 102
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    const/4 v2, 0x0

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-eqz p1, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/notification/XmlBaseHelper;->readFromXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    .line 88
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    if-nez v0, :cond_1

    .line 89
    const-string/jumbo v1, "readXmlStrs(in)== null"

    invoke-direct {p0, v1}, Lcom/android/server/notification/XmlBaseHelper;->LOG_E(Ljava/lang/String;)V

    .line 90
    return-object v2

    .line 93
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/XmlBaseHelper;->LOG_E(Ljava/lang/String;)V

    .line 95
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    :cond_1
    return-object v0
.end method

.method public save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;
    .locals 8
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 61
    const-string/jumbo v5, "testWriter"

    invoke-direct {p0, v5}, Lcom/android/server/notification/XmlBaseHelper;->LOG_D(Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v4

    .line 64
    .local v4, "status":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mcontex.deleteFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/notification/XmlBaseHelper;->LOG_D(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v2, p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 67
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/XmlBaseHelper;->saveToXml(Ljava/util/HashMap;Ljava/io/Writer;)V

    .line 69
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 73
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .end local v4    # "status":Z
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 72
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method

.method public save(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/android/server/notification/XmlBaseHelper;->DEFAULT_FILE:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/XmlBaseHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 56
    return-void
.end method

.method public setWithoutSaveIgnoreItem(Z)V
    .locals 0
    .param p1, "withoutSave"    # Z

    .prologue
    .line 53
    .local p0, "this":Lcom/android/server/notification/XmlBaseHelper;, "Lcom/android/server/notification/XmlBaseHelper<TK;TV;>;"
    iput-boolean p1, p0, Lcom/android/server/notification/XmlBaseHelper;->WITHOUT_SAVE_IGNORE_ITEM:Z

    .line 52
    return-void
.end method
