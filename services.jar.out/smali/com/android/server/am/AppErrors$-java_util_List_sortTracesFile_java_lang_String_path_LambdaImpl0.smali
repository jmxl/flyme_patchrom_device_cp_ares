.class final synthetic Lcom/android/server/am/AppErrors$-java_util_List_sortTracesFile_java_lang_String_path_LambdaImpl0;
.super Ljava/lang/Object;
.source "AppErrors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_List_sortTracesFile_java_lang_String_path_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/io/File;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/server/am/AppErrors;->-com_android_server_am_AppErrors_lambda$1(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
