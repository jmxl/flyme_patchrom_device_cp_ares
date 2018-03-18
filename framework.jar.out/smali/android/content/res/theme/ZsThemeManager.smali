.class public Landroid/content/res/theme/ZsThemeManager;
.super Ljava/lang/Object;
.source "ZsThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/theme/ZsThemeManager$FileFilterTest;
    }
.end annotation


# static fields
.field public static final CHANGE_FONT_ACTION:Ljava/lang/String; = "change.font.action"

.field public static final CHANGE_THEME_ACTION:Ljava/lang/String; = "change.theme.action"

.field private static final CHANGE_THEME_COMPLETE:I = 0x3

.field public static final CHANGE_THEME_COMPLETE_TEXT:Ljava/lang/String; = "changeThemeComplete"

.field public static final DEFALT_LOCK_WALLPAPER:Ljava/lang/String; = "default_lock_wallpaper"

.field public static final DEFALT_WALLPAPER:Ljava/lang/String; = "default_wallpaper"

.field public static final INTENT_EXTRA_TEXT:Ljava/lang/String; = "extra_Text"

.field public static final SET_FONT_FAIL_TEXT:Ljava/lang/String; = "setFontFail"

.field public static final SET_FONT_SUCCESS_TEXT:Ljava/lang/String; = "setFontSuccess"

.field private static final SET_WALLPAPER_FAIL:I = 0x2

.field public static final SET_WALLPAPER_FAIL_TEXT:Ljava/lang/String; = "setWallpaperFail"

.field public static final SYSTEM_PROPERTY_THEME_VALUE:Ljava/lang/String; = "theme_value"

.field public static final TARGET_THEME_RES_DATA_PATH:Ljava/lang/String; = "/data/"

.field public static final TARGET_WALL_PAPER_RES_PATH:Ljava/lang/String; = "/data/zsTheme/wallpaper"

.field public static final TARGET_WALL_PAPER_RES_PATH_1:Ljava/lang/String; = "/data/letvTheme1/wallpaper"

.field public static final THEME_FILE_NAME:Ljava/lang/String; = "letvTheme"

.field public static final THEME_FILE_NAME_1:Ljava/lang/String; = "letvTheme1"

.field public static final THEME_FILE_PATH:Ljava/lang/String; = "/data/zsTheme"

.field public static final THEME_FILE_PATH_1:Ljava/lang/String; = "/data/letvTheme1"

.field public static final THEME_RES_DATA_PATH:Ljava/lang/String; = "/system/etc/"

.field public static final UN_THEMEZIP_FAIL:I = 0x1

.field public static final UN_THEME_ZIP_FAIL_TEXT:Ljava/lang/String; = "unThemeZipFail"

.field private static mThemeManager:Landroid/content/res/theme/ZsThemeManager;

.field public static mThemeZips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag:Z

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private reNameLetvThemeFileFail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/theme/ZsThemeManager;->mThemeZips:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/ZsThemeManager;->mCurConfig:Landroid/content/res/Configuration;

    .line 35
    iput-boolean v1, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    .line 43
    iput-boolean v1, p0, Landroid/content/res/theme/ZsThemeManager;->reNameLetvThemeFileFail:Z

    .line 60
    iput-object p1, p0, Landroid/content/res/theme/ZsThemeManager;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/theme/ZsThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Landroid/content/res/theme/ZsThemeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/res/theme/ZsThemeManager;

    invoke-direct {v0, p0}, Landroid/content/res/theme/ZsThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/theme/ZsThemeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    .line 56
    :cond_0
    sget-object v0, Landroid/content/res/theme/ZsThemeManager;->mThemeManager:Landroid/content/res/theme/ZsThemeManager;

    return-object v0
.end method

.method public static getLocalThemeZipList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "localThemeZipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/system/etc/"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_0
    new-instance v1, Landroid/content/res/theme/ZsThemeManager$FileFilterTest;

    const-string/jumbo v4, ".zip"

    invoke-direct {v1, v4}, Landroid/content/res/theme/ZsThemeManager$FileFilterTest;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "fileFilter":Landroid/content/res/theme/ZsThemeManager$FileFilterTest;
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 106
    .local v3, "zipfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "zipfile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static getThemeZips()V
    .locals 7

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/system/etc/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 92
    :cond_0
    new-instance v1, Landroid/content/res/theme/ZsThemeManager$FileFilterTest;

    const-string/jumbo v3, ".zip"

    invoke-direct {v1, v3}, Landroid/content/res/theme/ZsThemeManager$FileFilterTest;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "fileFilter":Landroid/content/res/theme/ZsThemeManager$FileFilterTest;
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 94
    .local v2, "zipfile":Ljava/io/File;
    sget-object v6, Landroid/content/res/theme/ZsThemeManager;->mThemeZips:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "zipfile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 9
    .param p1, "wallpaperFilePath"    # Ljava/lang/String;
    .param p2, "whichWallpaper"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 283
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v4, v6, v5

    .line 288
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 285
    .end local v4    # "tempFile":Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    return-object v5

    .line 293
    :cond_2
    const/4 v2, 0x0

    .line 295
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 300
    .end local v3    # "is":Ljava/io/FileInputStream;
    :goto_1
    return-object v2

    .line 296
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private setDirPermissions(Ljava/io/File;)V
    .locals 7
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/4 v4, -0x1

    .line 190
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ff

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 191
    new-instance v2, Landroid/content/res/theme/ZsThemeManager$1;

    invoke-direct {v2, p0}, Landroid/content/res/theme/ZsThemeManager$1;-><init>(Landroid/content/res/theme/ZsThemeManager;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 197
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 198
    .local v0, "f":Ljava/io/File;
    const-string/jumbo v4, "ThemeSetPermissions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dir is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, v0}, Landroid/content/res/theme/ZsThemeManager;->setDirPermissions(Ljava/io/File;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method public UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "zipFileString"    # Ljava/lang/String;
    .param p2, "outPathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v8, 0x0

    .line 130
    .local v8, "inZip":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 132
    .end local v8    # "inZip":Ljava/util/zip/ZipInputStream;
    .local v9, "inZip":Ljava/util/zip/ZipInputStream;
    :try_start_1
    const-string/jumbo v14, ""

    .line 133
    .local v14, "szName":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    const-string/jumbo v17, "/data/letvTheme1"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v12, "letvThemeFile1":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string/jumbo v17, "/data/zsTheme"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v11, "letvThemeFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_0

    .line 136
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/res/theme/ZsThemeManager;->reNameLetvThemeFileFail:Z

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v16

    .local v16, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v16, :cond_8

    .line 139
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, " "

    const-string/jumbo v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/res/theme/ZsThemeManager;->reNameLetvThemeFileFail:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 141
    if-eqz v14, :cond_1

    const-string/jumbo v17, "letvTheme"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 142
    const-string/jumbo v17, "letvTheme"

    const-string/jumbo v18, "letvTheme1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 143
    .local v15, "szNameNew":Ljava/lang/String;
    move-object v14, v15

    .line 146
    .end local v15    # "szNameNew":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 147
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 148
    new-instance v7, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v7, "folder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    .end local v7    # "folder":Ljava/io/File;
    .end local v11    # "letvThemeFile":Ljava/io/File;
    .end local v12    # "letvThemeFile1":Ljava/io/File;
    .end local v14    # "szName":Ljava/lang/String;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    move-object v8, v9

    .line 177
    .end local v9    # "inZip":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    if-eqz v8, :cond_2

    .line 181
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 127
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 151
    .restart local v9    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "letvThemeFile":Ljava/io/File;
    .restart local v12    # "letvThemeFile1":Ljava/io/File;
    .restart local v14    # "szName":Ljava/lang/String;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_4
    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v6, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 156
    :cond_4
    :goto_3
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    .local v13, "out":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_5
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 160
    .local v2, "buffer":[B
    :goto_4
    invoke-virtual {v9, v2}, Ljava/io/FilterInputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_7

    .line 161
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v2, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 162
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 164
    .end local v2    # "buffer":[B
    .end local v10    # "len":I
    :catch_1
    move-exception v4

    .line 165
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 167
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 170
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1ff

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-static/range {v17 .. v20}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 178
    .end local v3    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "letvThemeFile":Ljava/io/File;
    .end local v12    # "letvThemeFile1":Ljava/io/File;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "szName":Ljava/lang/String;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v17

    move-object v8, v9

    .line 179
    .end local v9    # "inZip":Ljava/util/zip/ZipInputStream;
    :goto_6
    if-eqz v8, :cond_5

    .line 181
    :try_start_8
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 178
    :cond_5
    :goto_7
    throw v17

    .line 154
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v11    # "letvThemeFile":Ljava/io/File;
    .restart local v12    # "letvThemeFile1":Ljava/io/File;
    .restart local v14    # "szName":Ljava/lang/String;
    .restart local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_3

    .line 167
    .restart local v2    # "buffer":[B
    .restart local v10    # "len":I
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :cond_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    .line 166
    .end local v2    # "buffer":[B
    .end local v10    # "len":I
    :catchall_1
    move-exception v17

    .line 167
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 166
    throw v17

    .line 173
    .end local v3    # "dir":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    :cond_8
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 175
    new-instance v17, Ljava/io/File;

    const-string/jumbo v18, "/data/letvTheme1"

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/res/theme/ZsThemeManager;->setDirPermissions(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 179
    if-eqz v9, :cond_9

    .line 181
    :try_start_a
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_9
    :goto_8
    move-object v8, v9

    .end local v9    # "inZip":Ljava/util/zip/ZipInputStream;
    .local v8, "inZip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_2

    .line 182
    .end local v8    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "inZip":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v5

    .line 183
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 182
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v11    # "letvThemeFile":Ljava/io/File;
    .end local v12    # "letvThemeFile1":Ljava/io/File;
    .end local v14    # "szName":Ljava/lang/String;
    .end local v16    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 183
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 182
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 183
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 178
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v17

    goto :goto_6

    .line 176
    .local v8, "inZip":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method public deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iput-boolean v6, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 248
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 249
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/theme/ZsThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    .line 251
    iget-boolean v3, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    if-nez v3, :cond_4

    .line 259
    :cond_1
    iget-boolean v3, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    if-nez v3, :cond_5

    .line 260
    return v5

    .line 244
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_2
    return v5

    .line 254
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "i":I
    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/res/theme/ZsThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    .line 255
    iget-boolean v3, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    if-eqz v3, :cond_1

    .line 248
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 262
    return v6

    .line 264
    :cond_6
    return v5
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    .line 230
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    .line 235
    :cond_0
    iget-boolean v1, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    return v1
.end method

.method public deleteThemeFile1(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetFilePath"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    iget-boolean v1, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    return v1

    .line 391
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {p0, p1}, Landroid/content/res/theme/ZsThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 394
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/theme/ZsThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public deleteThemeRes(Ljava/lang/String;)Z
    .locals 10
    .param p1, "targetFilePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 205
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/letvTheme1"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, "letvThemeFile1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/data/zsTheme"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "letvThemeFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 208
    :cond_0
    return v3

    .line 207
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 211
    iget-boolean v4, p0, Landroid/content/res/theme/ZsThemeManager;->reNameLetvThemeFileFail:Z

    if-eqz v4, :cond_2

    .line 212
    const-string/jumbo p1, "/data/letvTheme1"

    .line 213
    iget-boolean v4, p0, Landroid/content/res/theme/ZsThemeManager;->reNameLetvThemeFileFail:Z

    if-eqz v4, :cond_3

    :goto_0
    iput-boolean v3, p0, Landroid/content/res/theme/ZsThemeManager;->reNameLetvThemeFileFail:Z

    .line 216
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 218
    iget-boolean v3, p0, Landroid/content/res/theme/ZsThemeManager;->flag:Z

    return v3

    .line 213
    .end local v0    # "deleteFile":Ljava/io/File;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 220
    .restart local v0    # "deleteFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/res/theme/ZsThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 223
    :cond_5
    invoke-virtual {p0, p1}, Landroid/content/res/theme/ZsThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public reNameLetvTheme1ToLetvTheme()V
    .locals 6

    .prologue
    .line 304
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/letvTheme1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "letvTheme1File":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 306
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/zsTheme"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 303
    :cond_0
    return-void
.end method

.method public sendChangeFontBroadCast(Ljava/lang/String;)V
    .locals 2
    .param p1, "extraText"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extra_Text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v1, "change.font.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Landroid/content/res/theme/ZsThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method public sendChangeThemeBroadCast(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 372
    const-string/jumbo v0, ""

    .line 373
    .local v0, "extraText":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 374
    const-string/jumbo v0, "setWallpaperFail"

    .line 380
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extra_Text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v2, "change.theme.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v2, p0, Landroid/content/res/theme/ZsThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    return-void

    .line 375
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 376
    const-string/jumbo v0, "changeThemeComplete"

    goto :goto_0

    .line 377
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 378
    const-string/jumbo v0, "unThemeZipFail"

    goto :goto_0
.end method

.method public setFontValues(Ljava/lang/String;I)I
    .locals 9
    .param p1, "fontPath"    # Ljava/lang/String;
    .param p2, "fontId"    # I

    .prologue
    const/4 v6, -0x1

    .line 426
    const/4 v4, 0x0

    .line 428
    .local v4, "result":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/data/euifonts/"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, "dir":Ljava/io/File;
    if-ne p2, v6, :cond_1

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 446
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 448
    const-string/jumbo v5, "setFontSuccess"

    invoke-virtual {p0, v5}, Landroid/content/res/theme/ZsThemeManager;->sendChangeFontBroadCast(Ljava/lang/String;)V

    .line 449
    const-string/jumbo v5, "changeFont"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FontPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v1    # "dir":Ljava/io/File;
    :goto_1
    return v4

    .line 434
    .restart local v1    # "dir":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 436
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 438
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "euifont.ttf"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 440
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 442
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    .local v3, "file":Ljava/io/File;
    invoke-static {v3, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 444
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 453
    const-string/jumbo v5, "changeFont"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " change font failed, FontPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string/jumbo v5, "setFontFail"

    invoke-virtual {p0, v5}, Landroid/content/res/theme/ZsThemeManager;->sendChangeFontBroadCast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setWallpaper(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "wallpaperFilePath"    # Ljava/lang/String;
    .param p2, "isLockWallpaper"    # Z

    .prologue
    .line 312
    :try_start_0
    iget-object v6, p0, Landroid/content/res/theme/ZsThemeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.SET_WALLPAPER"

    .line 313
    const-string/jumbo v8, "themeManagerSetWallpaper"

    .line 312
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    const-string/jumbo v2, ""

    .line 318
    .local v2, "tempWallpaperFilePath":Ljava/lang/String;
    iget-object v6, p0, Landroid/content/res/theme/ZsThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v6}, Landroid/content/res/theme/ZsThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "2k"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "wallpaperFilePath_2k":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    move-object v2, v5

    .line 330
    .end local v3    # "wallpaperFile":Ljava/io/File;
    .end local v5    # "wallpaperFilePath_2k":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 332
    move-object v2, p1

    .line 335
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 336
    return-void

    .line 314
    .end local v2    # "tempWallpaperFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "tempWallpaperFilePath":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1080p"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "wallpaperFilePath_1080p":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    move-object v2, v4

    goto :goto_1

    .line 338
    .end local v4    # "wallpaperFilePath_1080p":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 339
    return-void

    .line 341
    :cond_4
    const/4 v1, 0x0

    .line 342
    .local v1, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_5

    .line 343
    const-string/jumbo v6, "default_lock_wallpaper"

    invoke-direct {p0, v2, v6}, Landroid/content/res/theme/ZsThemeManager;->getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 310
    .local v1, "is":Ljava/io/InputStream;
    :goto_2
    return-void

    .line 345
    .local v1, "is":Ljava/io/InputStream;
    :cond_5
    const-string/jumbo v6, "default_wallpaper"

    invoke-direct {p0, v2, v6}, Landroid/content/res/theme/ZsThemeManager;->getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    goto :goto_2
.end method
