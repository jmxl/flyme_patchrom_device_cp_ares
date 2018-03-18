.class Landroid/content/res/theme/ZsThemeManager$FileFilterTest;
.super Ljava/lang/Object;
.source "ZsThemeManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/theme/ZsThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileFilterTest"
.end annotation


# instance fields
.field condition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/res/theme/ZsThemeManager$FileFilterTest;->condition:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Landroid/content/res/theme/ZsThemeManager$FileFilterTest;->condition:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "pathName"    # Ljava/io/File;

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/theme/ZsThemeManager$FileFilterTest;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 121
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
