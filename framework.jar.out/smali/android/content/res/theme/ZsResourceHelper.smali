.class public Landroid/content/res/theme/ZsResourceHelper;
.super Ljava/lang/Object;
.source "ZsResourceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Landroid/content/res/theme/ZsResourceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/theme/ZsResourceHelper;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipDrawableIcon(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "clipDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 87
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 88
    .local v0, "appIcon":I
    if-ne p0, v0, :cond_0

    if-eqz p3, :cond_0

    .line 89
    invoke-static {p3, p2}, Landroid/content/res/theme/ZsIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .end local v0    # "appIcon":I
    .end local v1    # "clipDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public static getClipIcon(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 76
    invoke-static {p0, p1}, Landroid/content/res/theme/ZsIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "clipDrawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getReplaceText(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "mapRes":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-ne p2, v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.baidu.BaiduMap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :cond_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    return-object v4
.end method

.method public static getZsTheme3rdAppResDrawable(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    const/4 v4, 0x0

    .line 22
    .local v4, "zsResDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 23
    .local v3, "zsRadiusDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 24
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 25
    .local v0, "appIcon":I
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 27
    .local v1, "packageName":Ljava/lang/String;
    if-ne p0, v0, :cond_0

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 30
    const/4 v5, 0x1

    invoke-static {v1, p2, v5}, Landroid/content/res/theme/ZsIconCustomHelper;->getPackageIconFromTheme(Ljava/lang/String;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 34
    .end local v0    # "appIcon":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v4    # "zsResDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v4, :cond_1

    .line 35
    const/4 v5, 0x0

    invoke-static {p2, v4, v5}, Landroid/content/res/theme/ZsIconUtilities;->drawMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 36
    .local v2, "radiusBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "zsRadiusDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 38
    .end local v2    # "radiusBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v3
.end method

.method public static getZsThemeBuiltInAppResDrawable(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, "zsResDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 44
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 45
    .local v1, "appIcon":I
    const/4 v2, 0x0

    .line 46
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 48
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-ne p0, v1, :cond_2

    .line 49
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 58
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    const/4 v4, 0x3

    invoke-static {v2, p2, v4}, Landroid/content/res/theme/ZsIconCustomHelper;->getPackageIconFromTheme(Ljava/lang/String;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 62
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appIcon":I
    .end local v3    # "zsResDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v3

    .line 50
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appIcon":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "zsResDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 51
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 52
    .local v2, "packageName":Ljava/lang/String;
    sget-object v4, Landroid/content/res/theme/ZsResourceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "targetActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 53
    const-string/jumbo v6, ",--->packageName = "

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 53
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 54
    const-string/jumbo v6, ",--->name = "

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 54
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 55
    const-string/jumbo v6, ",--->getComponentName="

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 55
    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static haveThemeTemplateFile(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 81
    invoke-static {p0}, Landroid/content/res/theme/ZsIconCustomHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static isNeedClipIcon(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    if-ne p0, v0, :cond_0

    invoke-static {p2}, Landroid/content/res/theme/ZsResourceHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static replaceDefaultWallpaper(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/FileInputStream;
    .locals 12
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v11, 0x0

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "default_lock_wallpaper.jpg"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "default_lock_wallpaper.png"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "default_wallpaper.jpg"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "default_wallpaper.png"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    :cond_0
    const-string/jumbo v8, "/"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "wallPaperPath":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 114
    .local v4, "wallPaperName":Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v8, v5

    if-lez v8, :cond_1

    .line 115
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v4, v5, v8

    .line 118
    .end local v4    # "wallPaperName":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    invoke-static {v9, p1}, Landroid/content/res/theme/ZsIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "wallpaperFileFilePath":Ljava/lang/String;
    const-string/jumbo v8, "replaceDefaultWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaperFileFilePath is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v6, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 122
    const/4 v2, 0x0

    .line 124
    .local v2, "iStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "iStream":Ljava/io/FileInputStream;
    .local v3, "iStream":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 128
    .end local v3    # "iStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 125
    .restart local v2    # "iStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "iStream":Ljava/io/FileInputStream;
    .end local v6    # "wallpaperFile":Ljava/io/File;
    .end local v7    # "wallpaperFileFilePath":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "wallPaperPath":[Ljava/lang/String;
    :cond_2
    return-object v11
.end method
