.class Lcom/android/server/pm/PackageManagerService$PresetApp;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PresetApp"
.end annotation


# instance fields
.field cust_common_dir:Ljava/lang/String;

.field cust_dir:Ljava/lang/String;

.field private mDelApks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDelList:Ljava/io/File;

.field mDir:Ljava/io/File;

.field mDir_cust:Ljava/io/File;

.field mDir_cust_common:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "appDir"    # Ljava/lang/String;

    .prologue
    .line 21763
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelApks:Ljava/util/ArrayList;

    .line 21759
    const-string/jumbo v0, "/data/cust/apps"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->cust_dir:Ljava/lang/String;

    .line 21760
    const-string/jumbo v0, "/data/cust/common/apps"

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->cust_common_dir:Ljava/lang/String;

    .line 21764
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDir:Ljava/io/File;

    .line 21765
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->cust_dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDir_cust:Ljava/io/File;

    .line 21766
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->cust_common_dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDir_cust_common:Ljava/io/File;

    .line 21767
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelList:Ljava/io/File;

    .line 21763
    return-void
.end method


# virtual methods
.method cleanUp(Ljava/io/File;)V
    .locals 5
    .param p1, "codeFile"    # Ljava/io/File;

    .prologue
    .line 21875
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 21876
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelApks:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21877
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PresetApp;->writeDelApk()V

    .line 21878
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delete system Presetapp apk Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21872
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :goto_0
    return-void

    .line 21879
    :catch_0
    move-exception v0

    .line 21880
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PresetApp/ cleanUp exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isDeleted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 21886
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelApks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21887
    .local v1, "appsNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21888
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelApks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21889
    .local v0, "apkPackageName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21890
    const/4 v3, 0x1

    return v3

    .line 21887
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21893
    .end local v0    # "apkPackageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method readDelApk()Z
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 21772
    const/4 v4, 0x0

    .line 21775
    .local v4, "str":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelList:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 21776
    const-string/jumbo v8, "No settings file; creating initial state"

    const/4 v9, 0x4

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 21777
    return v10

    .line 21779
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelList:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 21781
    .end local v4    # "str":Ljava/io/FileInputStream;
    .local v5, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 21782
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21784
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    if-eq v7, v9, :cond_2

    .line 21785
    if-ne v7, v11, :cond_1

    .line 21789
    :cond_2
    if-eq v7, v9, :cond_3

    .line 21790
    const-string/jumbo v8, "No start tag found in package manager settings"

    const/4 v9, 0x5

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 21791
    return v10

    .line 21794
    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 21795
    .local v2, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v11, :cond_7

    .line 21796
    if-ne v7, v12, :cond_5

    .line 21797
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_7

    .line 21798
    :cond_5
    if-eq v7, v12, :cond_4

    .line 21799
    if-eq v7, v13, :cond_4

    .line 21802
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 21803
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "package"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 21804
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelApks:Ljava/util/ArrayList;

    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v3, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 21812
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v4, v5

    .line 21813
    .end local v5    # "str":Ljava/io/FileInputStream;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error reading settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 21817
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    return v11

    .line 21806
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_6
    :try_start_2
    const-string/jumbo v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown element under <packages>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 21807
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 21806
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21808
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 21814
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 21815
    .end local v5    # "str":Ljava/io/FileInputStream;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error reading settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_2

    .line 21811
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "outerDepth":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "type":I
    :cond_7
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .end local v5    # "str":Ljava/io/FileInputStream;
    .local v4, "str":Ljava/io/FileInputStream;
    goto :goto_2

    .line 21812
    .end local v2    # "outerDepth":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .local v4, "str":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    .line 21814
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method writeDelApk()V
    .locals 11

    .prologue
    .line 21824
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelList:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 21825
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelList:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 21829
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelList:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 21830
    .local v3, "fstr":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21833
    .local v6, "str":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 21834
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 21835
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21838
    const-string/jumbo v7, "packages"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21840
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelApks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 21842
    .local v1, "appDelNum":I
    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "appDelNum := "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21844
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 21845
    const-string/jumbo v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21846
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelApks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21847
    .local v0, "apkPackageName":Ljava/lang/String;
    const-string/jumbo v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "record deleted presetapp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21848
    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21849
    const-string/jumbo v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21844
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21852
    .end local v0    # "apkPackageName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "packages"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 21854
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 21856
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 21857
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 21858
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 21860
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PresetApp;->mDelList:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 21861
    const/16 v8, 0x1b4

    .line 21864
    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 21860
    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21821
    .end local v1    # "appDelNum":I
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    :goto_1
    return-void

    .line 21866
    :catch_0
    move-exception v2

    .line 21867
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v8, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
