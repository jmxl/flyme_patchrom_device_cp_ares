.class Landroid/content/res/theme/ZsThemeManager$1;
.super Ljava/lang/Object;
.source "ZsThemeManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/theme/ZsThemeManager;->setDirPermissions(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/theme/ZsThemeManager;


# direct methods
.method constructor <init>(Landroid/content/res/theme/ZsThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/theme/ZsThemeManager;

    .prologue
    .line 191
    iput-object p1, p0, Landroid/content/res/theme/ZsThemeManager$1;->this$0:Landroid/content/res/theme/ZsThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
